LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	csc.c

LOCAL_C_INCLUDES := \
	hardware/samsung_slsi-cm/exynos3470/include \
	$(LOCAL_PATH)/../exynos_omx/openmax/$(OMX_NAME)_omx/include/khronos \
	$(LOCAL_PATH)/../exynos_omx/openmax/$(OMX_NAME)_omx/include/$(OMX_NAME) \
	$(LOCAL_PATH)/../libexynosutils

LOCAL_HEADER_LIBRARIES := generated_kernel_headers

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_CFLAGS :=

LOCAL_MODULE := libcsc


LOCAL_ARM_MODE := arm

LOCAL_STATIC_LIBRARIES := libswconverter
LOCAL_SHARED_LIBRARIES := liblog libexynosutils

LOCAL_CFLAGS += -DUSE_SAMSUNG_COLORFORMAT
LOCAL_CFLAGS += -Wno-unused-parameter

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true


LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include

#LOCAL_CFLAGS += -DENABLE_GSCALER -DENABLE_G2D
#LOCAL_SHARED_LIBRARIES += libexynosgscaler
LOCAL_CFLAGS += -DENABLE_SCALER
#LOCAL_SHARED_LIBRARIES += libexynosscaler

LOCAL_CFLAGS += -DUSE_ION
LOCAL_SHARED_LIBRARIES += libion_exynos

include $(BUILD_SHARED_LIBRARY)
