#include "command.h"


namespace enigine {
    namespace framework {

        class Command::Implementation
        {
        public:
            Implementation(const QString& _iconCharacter, const QString& _desciption, std::function<bool()> _canExecute)
                        : iconCharacter(_iconCharacter), iconDescription(_desciption), canExecute(_canExecute)
            {

            }

            QString iconCharacter;
            QString iconDescription;
            std::function<bool()> canExecute;

        };

        Command::Command(QObject* parent, const QString& iconCharacter,
                         const QString& description, std::function<bool()> canExecute)
            : QObject(parent)
        {
            implementation.reset(new Implementation(iconCharacter, description, canExecute));
        }

        Command::~Command(){}

        const QString& Command::description() const
        {
            return implementation->iconDescription;
        }

        const QString& Command::iconCharacter() const
        {
            return implementation->iconCharacter;
        }

        bool Command::canExecute() const
        {
            return implementation->canExecute();
        }

    }
}
