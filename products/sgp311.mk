$(call inherit-product, device/sony/sgp311/full_sgp311.mk)

# Inherit common Baked stuff.
$(call inherit-product, vendor/baked/configs/common_full_tablet.mk)

# Inherit AOSP device configuration for mako.
#$(call inherit-product, device/sony/pollux/full_pollux.mk)

# Mako Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/sgp311

# Setup device specific product configuration
PRODUCT_NAME := baked_sgp311
PRODUCT_DEVICE := sgp311
PRODUCT_BRAND := Sony
PRODUCT_MODEL := SGP311
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP311 BUILD_FINGERPRINT=Sony/SGP311-5841/SGP311:4.1.2/10.1.1.A.1.253/Avt3rw:user/release-keys PRIVATE_BUILD_DESC="SGP311-user 4.1.2 10.1.1.A.1.253 Avt3rw test-keys"

# Release name and versioning
# PRODUCT_RELEASE_NAME := sgp311

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1920_1200.zip:system/media/bootanimation.zip
