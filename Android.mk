LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),aio_otfp)

include $(CLEAR_VARS)
LOCAL_MODULE := libmtkcamera_client
LOCAL_SRC_FILES_64 := proprietary/lib64/libmtkcamera_client.so
LOCAL_SRC_FILES_32 := proprietary/lib/libmtkcamera_client.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

endif
