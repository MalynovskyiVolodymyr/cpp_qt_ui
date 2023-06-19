#ifndef NAVIGATIONCONTROLLER_H
#define NAVIGATIONCONTROLLER_H

#include <QObject>
#include <enigine_global.h>
#include <models/client.h>


namespace enigine {
    namespace controllers {
        class ENIGINESHARED_EXPORT NavigationController: public QObject{
            Q_OBJECT

        public:
            explicit NavigationController(QObject* _parent = nullptr): QObject(_parent){}

        signals:
            void goCreateClientView();
            void goDashboardView();
            void goEditClientView(enigine::models::Client* client);
            void goFindClientView();
        };
    }
}

#endif // NAVIGATIONCONTROLLER_H
