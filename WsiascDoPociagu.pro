TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    cwartosckoncowa.cpp \
    cpunkty.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    cwartosckoncowa.h \
    cpunkty.h

