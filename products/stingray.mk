# Inherit device configuration
$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_large_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/stingray

# Discard inherited values and use our own instead.
PRODUCT_NAME := baked_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_FINGERPRINT="verizon/trygon/stingray:4.0.4/IMM76L/345519:user/release-keys" PRIVATE_BUILD_DESC="trygon-user 4.0.4 IMM76L 345519 release-keys" BUILD_NUMBER=345519

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
