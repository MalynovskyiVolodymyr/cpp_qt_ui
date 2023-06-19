#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QString>
#include <QScopedPointer>
#include <enigine_global.h>
#include <controllers/navigationcontroller.h>
#include <controllers/commandcontroller.h>

namespace enigine {
    namespace controllers {
        class ENIGINESHARED_EXPORT MasterController : public QObject
        {
            Q_OBJECT
            Q_PROPERTY(QString ui_welcomeMessage MEMBER welcomeMessage CONSTANT)
            Q_PROPERTY(enigine::controllers::NavigationController* ui_navigationController READ navigationController CONSTANT)
            Q_PROPERTY(enigine::controllers::CommandController* ui_CommandController READ commandController CONSTANT)

        public:
            QString welcomeMessage = "This is MasterController";


            explicit MasterController(QObject *parent = nullptr);

            virtual ~MasterController();

            NavigationController* navigationController();
            CommandController* commandController();

        //signals:

        //public slots:

        private:
            class Implementation;
            QScopedPointer<Implementation> implementation;

        };

    }
}


#endif // MASTERCONTROLLER_H
