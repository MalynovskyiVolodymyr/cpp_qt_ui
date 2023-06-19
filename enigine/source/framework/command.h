#ifndef COMMAND_H
#define COMMAND_H

#include <QObject>
#include <QString>
#include <QScopedPointer>
#include <enigine_global.h>
#include <functional>

namespace enigine {
    namespace framework {

        class ENIGINESHARED_EXPORT Command : public QObject
        {
            Q_OBJECT
            Q_PROPERTY(QString ui_iconCharacter READ iconCharacter CONSTANT)
            Q_PROPERTY(QString ui_description READ description CONSTANT)
            Q_PROPERTY(bool ui_canExecute READ canExecute NOTIFY canExecuteChanged)
        public:
            explicit Command(QObject *parent = nullptr,
                             const QString& iconCharacter = "",
                             const QString &description = "",
                             std::function<bool()> caExecute = [] () {return true;});

            virtual ~Command();


            const QString& iconCharacter() const;
            const QString& description() const;
            bool canExecute() const;

        signals:
            void canExecuteChanged();
            void executed();

        private:
            class Implementation;
            QScopedPointer<Implementation> implementation;
        };

    }
}


#endif // COMMAND_H
