# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Curie device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := tcl
PRODUCT_DEVICE := Curie
PRODUCT_MANUFACTURER := tcl
PRODUCT_NAME := lineage_Curie
PRODUCT_MODEL := 5003D

PRODUCT_GMS_CLIENTID_BASE := android-tcl
TARGET_VENDOR := tcl
TARGET_VENDOR_PRODUCT_NAME := Curie
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="5003D-user 8.1.0 OPM2.171019.012 5003D_ALWE_V1.1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := TCL/5003D/Curie:8.1.0/OPM2.171019.012/5003D_ALWE_V1.1:user/release-keys
