ifneq ($(filter a7xltechn,$(TARGET_DEVICE)),)

LOCAL_PATH := device/samsung/a7xltechn

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
