#############################################################################
# Makefile for building: libBRL00.so
# Generated by qmake (2.01a) (Qt 4.7.3) on: Wed Feb 15 15:53:16 2017
# Project:  BRL00.pro
# Template: lib
# Command: /usr/local/Trolltech/Qt-4.7.3/bin/qmake -o Makefile BRL00.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_PLUGIN -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -w -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -w -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I/usr/local/Trolltech/Qt-4.7.3/mkspecs/linux-g++-64 -I. -I/usr/local/Trolltech/Qt-4.7.3/include/QtCore -I/usr/local/Trolltech/Qt-4.7.3/include/QtGui -I/usr/local/Trolltech/Qt-4.7.3/include -I../../../../v3d_external/v3d_main/basic_c_fun -I/local1/vaa3d_git/v3d_external/common_lib/include -I/local1/vaa3d_git/v3d_external/jba/newmat11 -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1 -Wl,-rpath,/usr/local/Trolltech/Qt-4.7.3/lib -shared
LIBS          = $(SUBLIBS)  -L/usr/local/Trolltech/Qt-4.7.3/lib -lQtGui -L/usr/local/Trolltech/Qt-4.7.3/lib -L/usr/lib64 -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/local/Trolltech/Qt-4.7.3/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = BRL00_plugin.cpp \
		../../../../v3d_external/v3d_main/basic_c_fun/v3d_message.cpp \
		../../../../v3d_external/v3d_main/basic_c_fun/basic_memory.cpp moc_BRL00_plugin.cpp
OBJECTS       = BRL00_plugin.o \
		v3d_message.o \
		basic_memory.o \
		moc_BRL00_plugin.o
DIST          = /usr/local/Trolltech/Qt-4.7.3/mkspecs/common/g++.conf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/linux.conf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/modules/qt_webkit_version.pri \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/release.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/warn_off.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/include_source_dir.prf \
		BRL00.pro
QMAKE_TARGET  = BRL00
DESTDIR       = ../../../../v3d_external/bin/plugins/BRL00/
TARGET        = libBRL00.so
TARGETD       = libBRL00.so

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile  ../../../../v3d_external/bin/plugins/BRL00/$(TARGET)

../../../../v3d_external/bin/plugins/BRL00/$(TARGET):  $(OBJECTS) $(SUBLIBS) $(OBJCOMP)  
	@$(CHK_DIR_EXISTS) ../../../../v3d_external/bin/plugins/BRL00/ || $(MKDIR) ../../../../v3d_external/bin/plugins/BRL00/ 
	-$(DEL_FILE) $(TARGET)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS) $(OBJCOMP)
	-$(MOVE) $(TARGET) ../../../../v3d_external/bin/plugins/BRL00/



Makefile: BRL00.pro  /usr/local/Trolltech/Qt-4.7.3/mkspecs/linux-g++-64/qmake.conf /usr/local/Trolltech/Qt-4.7.3/mkspecs/common/g++.conf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/linux.conf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/modules/qt_webkit_version.pri \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/release.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/warn_off.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/include_source_dir.prf \
		/usr/local/Trolltech/Qt-4.7.3/lib/libQtGui.prl \
		/usr/local/Trolltech/Qt-4.7.3/lib/libQtCore.prl
	$(QMAKE) -o Makefile BRL00.pro
/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/g++.conf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/unix.conf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/common/linux.conf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/qconfig.pri:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/modules/qt_webkit_version.pri:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt_functions.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt_config.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/exclusive_builds.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/default_pre.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/release.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/default_post.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/warn_off.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/qt.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/unix/thread.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/moc.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/resources.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/uic.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/yacc.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/lex.prf:
/usr/local/Trolltech/Qt-4.7.3/mkspecs/features/include_source_dir.prf:
/usr/local/Trolltech/Qt-4.7.3/lib/libQtGui.prl:
/usr/local/Trolltech/Qt-4.7.3/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile BRL00.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/BRL001.0.0 || $(MKDIR) .tmp/BRL001.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/BRL001.0.0/ && $(COPY_FILE) --parents ../../../../v3d_external/v3d_main/basic_c_fun/basic_memory.h BRL00_plugin.h .tmp/BRL001.0.0/ && $(COPY_FILE) --parents BRL00_plugin.cpp ../../../../v3d_external/v3d_main/basic_c_fun/v3d_message.cpp ../../../../v3d_external/v3d_main/basic_c_fun/basic_memory.cpp .tmp/BRL001.0.0/ && (cd `dirname .tmp/BRL001.0.0` && $(TAR) BRL001.0.0.tar BRL001.0.0 && $(COMPRESS) BRL001.0.0.tar) && $(MOVE) `dirname .tmp/BRL001.0.0`/BRL001.0.0.tar.gz . && $(DEL_FILE) -r .tmp/BRL001.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_BRL00_plugin.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_BRL00_plugin.cpp
moc_BRL00_plugin.cpp: BRL00_plugin.h
	/usr/local/Trolltech/Qt-4.7.3/bin/moc $(DEFINES) $(INCPATH) BRL00_plugin.h -o moc_BRL00_plugin.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

BRL00_plugin.o: BRL00_plugin.cpp BRL00_plugin.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o BRL00_plugin.o BRL00_plugin.cpp

v3d_message.o: ../../../../v3d_external/v3d_main/basic_c_fun/v3d_message.cpp ../../../../v3d_external/v3d_main/basic_c_fun/v3d_message.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o v3d_message.o ../../../../v3d_external/v3d_main/basic_c_fun/v3d_message.cpp

basic_memory.o: ../../../../v3d_external/v3d_main/basic_c_fun/basic_memory.cpp ../../../../v3d_external/v3d_main/basic_c_fun/basic_memory.h \
		../../../../v3d_external/v3d_main/basic_c_fun/v3d_basicdatatype.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o basic_memory.o ../../../../v3d_external/v3d_main/basic_c_fun/basic_memory.cpp

moc_BRL00_plugin.o: moc_BRL00_plugin.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_BRL00_plugin.o moc_BRL00_plugin.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

