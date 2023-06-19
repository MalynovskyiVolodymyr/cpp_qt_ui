#ifndef ENIGINE_GLOBAL_H
#define ENIGINE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(ENIGINE_LIBRARY)
#  define ENIGINESHARED_EXPORT Q_DECL_EXPORT
#else
#  define ENIGINESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // ENIGINE_GLOBAL_H
