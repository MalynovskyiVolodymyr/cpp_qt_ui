#include "commandcontroller.h"
#include <QDebug>
#include <QList>

using namespace enigine::framework;

namespace enigine {
    namespace controllers {

        class CommandController::Implementation{
        public:
            Implementation(CommandController* _commandController): commandController(_commandController){
                Command* createClientSaveCommand = new Command(commandController, QChar(0xf0c7), "Save");
                QObject::connect(createClientSaveCommand, &Command::executed, commandController, &CommandController::onCreateClientSaveExecuted);
                createClientViewContextCommands.append(createClientSaveCommand);
            }

            CommandController* commandController{nullptr};
            QList<Command*> createClientViewContextCommands{};
        };


        CommandController::CommandController(QObject *parent) : QObject(parent)
        {
            implementation.reset(new Implementation(this));
        }

        CommandController::~CommandController(){}

        QQmlListProperty<Command> CommandController::createViewContextCommands(){
            return QQmlListProperty<Command>(this, implementation->createClientViewContextCommands);
        }

        void CommandController::onCreateClientSaveExecuted(){
            qDebug() << "You have excecuted SAVE command!";
        }

    }
}

