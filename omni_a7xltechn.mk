$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/samsung/a7xltechn/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := a7xltechn
PRODUCT_NAME := omni_a7xltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a7xltechn
PRODUCT_MANUFACTURER := samsung
# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="samsung/a7xltezh/a7xltechn:6.0/MMB29M/A7100ZHU1BQB1:user/release-keys" \
    PRIVATE_BUILD_DESC="a7xltezh-user 6.0 MMB29M A7100ZHU1BQB1 release-keys"
