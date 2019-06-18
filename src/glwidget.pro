HEADERS       = glwidget.h \
                logo.h
SOURCES       = glwidget.cpp \
                logo.cpp

QT           += widgets


config += c++11

TARGET = glwidget
TEMPLATE = lib

win32 {
	CONFIG += staticlib	
}

DEFINES += MYLABEL_LIBRARY

unix {
    glwidget.files=$PWD/src/libglwidget.so*
    glwidget.path = /usr/lib
    INSTALLS += hellogl2

    target.path = /usr/lib
    INSTALLS += target
}

mac {
	QMAKE_LFLAGS += -stdlib=libc++
	QMAKE_CXXFLAGS += -stdlib=libc++

    target.path = /usr/local/lib
    INSTALLS += target
}