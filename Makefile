#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.127 #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -I/usr/include/libxml2 -Iinclude
CFLAGS = -Wall `wx-config --cflags` -Winvalid-pch -include wx_pch.h `python-config --include` `pkg-config --libs --cflags glib-2.0` -DWX_PRECOMP `pkg-config --cflags libusb-1.0`
RESINC =
LIBDIR =
LIB = -lopenobex -lxml2 -ludev `pkg-config --libs --cflags libusb-1.0`
LDFLAGS = `wx-config --libs` `python-config --libs` -lglib-2.0 `wx-config --cflags` -Winvalid-pch -include wx_pch.h `pkg-config --libs --cflags glib-2.0`

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -O3 -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG =
OUT_DEBUG = bin/Debug/LibreScribe

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O3
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = -s $(LDFLAGS)
OBJDIR_RELEASE = obj/Release
DEP_RELEASE =
OUT_RELEASE = bin/Release/LibreScribe

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/AboutDialog.o $(OBJDIR_DEBUG)/src/DeviceInfo.o $(OBJDIR_DEBUG)/src/GUIFrame.o $(OBJDIR_DEBUG)/src/LibreScribe.o $(OBJDIR_DEBUG)/src/BackgroundMonitor.o $(OBJDIR_DEBUG)/src/Smartpen.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/AboutDialog.o $(OBJDIR_RELEASE)/src/DeviceInfo.o $(OBJDIR_RELEASE)/src/GUIFrame.o $(OBJDIR_RELEASE)/src/LibreScribe.o $(OBJDIR_RELEASE)/src/BackgroundMonitor.o $(OBJDIR_RELEASE)/src/Smartpen.o

all: before_build build_debug build_release after_build

clean: clean_debug clean_release

before_build:
cd $(PROJECT_DIRECTORY) && rm -rfv ./bin

after_build:
cd $(PROJECT_DIRECTORY)
find ./bin/ -mindepth 1 -maxdepth 1 -type d | xargs -n 1 cp -rfv -L ./res ./xdg
find ./bin/ -mindepth 1 -maxdepth 1 -type d | xargs -n 1 cp -fv -L ./stf.py ./convert_stfs.sh

before_debug:
test -d bin/Debug || mkdir -p bin/Debug
test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug:

build_debug: before_debug out_debug after_debug

debug: before_build build_debug after_build

out_debug: $(OBJ_DEBUG) $(DEP_DEBUG)
$(LD) -o $(OUT_DEBUG) $(OBJ_DEBUG) $(LDFLAGS_DEBUG) $(LIBDIR_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/AboutDialog.o: src/AboutDialog.cc
$(CC) -o $(OBJDIR_DEBUG)/src/AboutDialog.o $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/AboutDialog.cc

$(OBJDIR_DEBUG)/src/DeviceInfo.o: src/DeviceInfo.cc
$(CC) -o $(OBJDIR_DEBUG)/src/DeviceInfo.o $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/DeviceInfo.cc

$(OBJDIR_DEBUG)/src/GUIFrame.o: src/GUIFrame.cc
$(CC) -o $(OBJDIR_DEBUG)/src/GUIFrame.o $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/GUIFrame.cc

$(OBJDIR_DEBUG)/src/LibreScribe.o: src/LibreScribe.cc
$(CC) -o $(OBJDIR_DEBUG)/src/LibreScribe.o $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/LibreScribe.cc

$(OBJDIR_DEBUG)/src/BackgroundMonitor.o: src/BackgroundMonitor.cc
$(CC) -o $(OBJDIR_DEBUG)/src/BackgroundMonitor.o $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/BackgroundMonitor.cc

$(OBJDIR_DEBUG)/src/Smartpen.o: src/Smartpen.cc
$(CC) -o $(OBJDIR_DEBUG)/src/Smartpen.o $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Smartpen.cc

clean_debug:
rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
rm -rf bin/Debug
rm -rf $(OBJDIR_DEBUG)/src

before_release:
test -d bin/Release || mkdir -p bin/Release
test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release:

build_release: before_release out_release after_release

release: before_build build_release after_build

out_release: $(OBJ_RELEASE) $(DEP_RELEASE)
$(LD) -o $(OUT_RELEASE) $(OBJ_RELEASE) $(LDFLAGS_RELEASE) $(LIBDIR_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/src/AboutDialog.o: src/AboutDialog.cc
$(CC) -o $(OBJDIR_RELEASE)/src/AboutDialog.o $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/AboutDialog.cc

$(OBJDIR_RELEASE)/src/DeviceInfo.o: src/DeviceInfo.cc
$(CC) -o $(OBJDIR_RELEASE)/src/DeviceInfo.o $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/DeviceInfo.cc

$(OBJDIR_RELEASE)/src/GUIFrame.o: src/GUIFrame.cc
$(CC) -o $(OBJDIR_RELEASE)/src/GUIFrame.o $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/GUIFrame.cc

$(OBJDIR_RELEASE)/src/LibreScribe.o: src/LibreScribe.cc
$(CC) -o $(OBJDIR_RELEASE)/src/LibreScribe.o $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/LibreScribe.cc

$(OBJDIR_RELEASE)/src/BackgroundMonitor.o: src/BackgroundMonitor.cc
$(CC) -o $(OBJDIR_RELEASE)/src/BackgroundMonitor.o $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/BackgroundMonitor.cc

$(OBJDIR_RELEASE)/src/Smartpen.o: src/Smartpen.cc
$(CC) -o $(OBJDIR_RELEASE)/src/Smartpen.o $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Smartpen.cc

clean_release:
rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
rm -rf bin/Release
rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_build after_build before_debug after_debug clean_debug before_release after_release clean_release
