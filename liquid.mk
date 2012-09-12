# name
PRODUCT_RELEASE_NAME := i9300

# device
$(call inherit-product-if-exists, device/samsung/i9300/full_i9300.mk)

# gsm
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# nfc
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# products
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := Samsung
PRODUCT_NAME := liquid_i9300
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.i9300.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=I9300XXALE8 \
    TARGET_DEVICE=m0 \
    PRODUCT_NAME=m0xx \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="m0xx-user 4.0.4 IMM76D I9300XXALE8 release-keys" \
    BUILD_FINGERPRINT="samsung/m0xx/m0:4.0.4/IMM76D/I9300XXALE8:user/release-keys"
