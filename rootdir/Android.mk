LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.variant.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.variant.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := fstab.g3
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/fstab.g3
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
