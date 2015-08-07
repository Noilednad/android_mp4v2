#global vars

LOCAL_PATH := $(call my-dir)
LOCAL_PRJ_PATH := $(LOCAL_PATH)/../
LOCAL_INCLUDE_PATH := $(LOCAL_PATH)/../src

#################################
###  libplatform
#################################
include $(CLEAR_VARS)

LOCAL_MODULE:= platform
LOCAL_SRC_FILES := \
	$(LOCAL_PRJ_PATH)/libplatform/io/File.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/io/File_posix.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/io/FileSystem.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/io/FileSystem_posix.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/number/random_posix.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/process/process_posix.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/prog/option.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/sys/error.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/time/time.cpp \
	$(LOCAL_PRJ_PATH)/libplatform/time/time_posix.cpp \

LOCAL_C_INCLUDES := \
	$(LOCAL_PRJ_PATH) \
	$(LOCAL_PRJ_PATH)/include/ \
	$(LOCAL_PRJ_PATH)/libutil/ \
	$(LOCAL_PRJ_PATH)/libplatform/

#LOCAL_LDLIBS := -llog
LOCAL_CPPFLAGS += -fexceptions 
LOCAL_CFLAGS   +=
include $(BUILD_STATIC_LIBRARY)


#################################
###  libutil
#################################
include $(CLEAR_VARS)

LOCAL_MODULE:= util
LOCAL_SRC_FILES := \
	$(wildcard $(LOCAL_PRJ_PATH)/libutil/*.cpp)

LOCAL_C_INCLUDES := \
	$(LOCAL_PRJ_PATH) \
	$(LOCAL_PRJ_PATH)/include/ \
	$(LOCAL_PRJ_PATH)/libutil/ \
	$(LOCAL_PRJ_PATH)/libplatform/

#LOCAL_LDLIBS := -llog
LOCAL_CPPFLAGS += -fexceptions 
LOCAL_CFLAGS   +=
include $(BUILD_STATIC_LIBRARY)


#################################
###  src
#################################
include $(CLEAR_VARS)

LOCAL_MODULE:= mp4v2
LOCAL_SRC_FILES := \
	$(wildcard $(LOCAL_PRJ_PATH)/src/bmff/*.cpp) \
	$(wildcard $(LOCAL_PRJ_PATH)/src/itmf/*.cpp) \
	$(wildcard $(LOCAL_PRJ_PATH)/src/qtff/*.cpp) \
	$(wildcard $(LOCAL_PRJ_PATH)/src/*.cpp) \
	$(LOCAL_PRJ_PATH)/src/enum.h

LOCAL_C_INCLUDES := \
	$(LOCAL_PRJ_PATH) \
	$(LOCAL_PRJ_PATH)/include/ \
	$(LOCAL_PRJ_PATH)/libutil/ \
	$(LOCAL_PRJ_PATH)/libplatform/

#LOCAL_LDLIBS := -llog
LOCAL_CPPFLAGS += -fexceptions 
LOCAL_CFLAGS   +=
LOCAL_STATIC_LIBRARIES := util platform
LOCAL_SHARED_LIBRARIES :=
include $(BUILD_SHARED_LIBRARY)

