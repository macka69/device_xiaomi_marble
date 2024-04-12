#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# GMS Flags
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_USES_LAWNCHAIR := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_PIXEL_EUICC := true
TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := false
TARGET_NOT_SUPPORTS_GOOGLE_BATTERY := true
MAINLINE_INCLUDE_VIRT_MODULE := true
TARGET_GBOARD_KEY_HEIGHT := 1.1

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Derp
TARGET_SUPPORTS_QUICK_TAP := true
