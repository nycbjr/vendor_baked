# Inherit device configuration for tf300t.
$(call inherit-product, device/asus/tf700t/full_tf700t.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_large_tablet.mk)

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
	vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

# Additional APK to install
PRODUCT_COPY_FILES += vendor/baked/prebuilt/tf300t/MyCloud.apk:system/app/MyCloud.apk \
                      vendor/baked/prebuilt/tf300t/StrAsus.apk:system/app/StrAsus.apk \
                      vendor/baked/prebuilt/tf300t/PolarisOffice.apk:system/app/PolarisOffice.apk \
                      vendor/baked/prebuilt/asus_common/Supernote.apk:system/app/Supernote.apk
