# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2usc/full_d2usc.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2vzw

# Setup device specific product configuration.
PRODUCT_NAME := baked_d2usc
PRODUCT_DEVICE := d2usc
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-R530U

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="d2usc-user 4.0.4 IMM76D R530UVXALG1 release-keys" PRIVATE_BUILD_DESC="samsung/d2usc/d2usc:4.0.4/IMM76D/R530UVXALG1:user/release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

