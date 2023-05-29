#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from msmnile device
$(call inherit-product, device/qualcomm/msmnile/device.mk)

PRODUCT_DEVICE := msmnile
PRODUCT_NAME := omni_msmnile
PRODUCT_BRAND := qti
PRODUCT_MODEL := msmnile for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msmnile-user 12 SKQ1.210216.001 1679450585310 release-keys"

BUILD_FINGERPRINT := qti/msmnile/msmnile:12/SKQ1.210216.001/1679450585310:user/release-keys
