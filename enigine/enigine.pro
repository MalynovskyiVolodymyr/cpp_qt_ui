#-------------------------------------------------
#
# Project created by QtCreator 2020-11-12T16:11:55
#
#-------------------------------------------------

QT       -= gui

TARGET = enigine
TEMPLATE = lib

DEFINES += ENIGINE_LIBRARY

CONFIG += c++14

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

message(enigine lib prj directory: {$$PWD})

include(../destination.pri)

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        source/controllers/commandcontroller.cpp \
        source/controllers/mastercontroller.cpp \
        source/data/datadecorator.cpp \
        source/data/datetimedecorator.cpp \
        source/data/enumeratordecorator.cpp \
        source/data/intdecorator.cpp \
        source/data/stringdecorator.cpp \
        source/framework/command.cpp \
        source/models/client.cpp

HEADERS += \
        source/controllers/commandcontroller.h \
        source/controllers/mastercontroller.h \
        source/controllers/navigationcontroller.h \
        source/data/datadecorator.h \
        source/data/datetimedecorator.h \
        source/data/enumeratordecorator.h \
        source/data/intdecorator.h \
        source/data/stringdecorator.h \
        source/framework/command.h \
        source/models/client.h \
        source/enigine_global.h

INCLUDEPATH += source
#unix {
#    target.path = /usr/lib
#    INSTALLS += target
#}
