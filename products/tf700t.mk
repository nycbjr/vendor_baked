# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_tablet.mk)

# Inherit device configuration for tf700t.
$(call inherit-product, device/asus/tf700t/full_tf700t.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tf-common

# Setup device specific product configuration.
PRODUCT_NAME := baked_tf700t
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf700t
PRODUCT_MODEL := Transformer Pad TF700T
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.1.1/JRO03C/US_epad-10.4.4.18-20121012:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.1.1 JRO03C US_epad-10.4.4.18-20121012 release-keys"

# Release name and versioning
# PRODUCT_RELEASE_NAME := tf700t

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1920_1200.zip:system/media/bootanimation.zip

# Inherit additional apps to install
$(call inherit-product, vendor/baked/prebuilt/asus_common/device_vendor.mk)
