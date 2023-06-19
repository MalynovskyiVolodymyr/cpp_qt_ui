#ifndef COMMANDCONTROLLER_H
#define COMMANDCONTROLLER_H

#include <QObject>
#include <QtQml/QQmlListProperty>
#include <QScopedPointer>
#include <enigine_global.h>
#include <framework/command.h>
#include <QVariant>

namespace enigine {
    namespace controllers {

        class ENIGINESHARED_EXPORT CommandController : public QObject
        {
            Q_OBJECT
            Q_PROPERTY(QQmlListProperty<enigine::framework::Command> ui_createViewContextCommands READ createViewContextCommands CONSTANT)

        public:
            explicit CommandController(QObject *parent = nullptr);

            ~CommandController();

            QQmlListProperty<enigine::framework::Command> createViewContextCommands();

        public slots:
            void onCreateClientSaveExecuted();

        private:
            class Implementation;
            QScopedPointer<Implementation> implementation;
        };
    }
}

#endif // COMMANDCONTROLLER_H
