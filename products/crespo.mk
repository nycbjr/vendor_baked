# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/baked/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/crespo

# Setup device specific product configuration.
PRODUCT_NAME := baked_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.1/JRO03E/403059:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.1.1 JRO03E 403059 release-keys" BUILD_NUMBER=403059

PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
