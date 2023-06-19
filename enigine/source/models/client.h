#ifndef ENIGINE_H
#define ENIGINE_H

#include "enigine_global.h"
#include<QObject>

namespace enigine {
    namespace models {
        class ENIGINESHARED_EXPORT Client
        {            

        public:
            Client();
            virtual ~Client();
        };
    }
}

#endif // ENIGINE_H
