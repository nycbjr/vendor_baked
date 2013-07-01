# Inherit GSM make.
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for m7att.
$(call inherit-product, device/htc/m7att/full_m7att.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/baked/overlay/m7

# Setup device specific product configuration.
PRODUCT_NAME := baked_m7att
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := m7att
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="cingular_us/m7/m7:4.1.2/JZO54K/166754.12:user/release-keys" PRIVATE_BUILD_DESC="1.26.502.12 CL166754 release-keys"

# Release name
PRODUCT_RELEASE_NAME := m7att

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip

