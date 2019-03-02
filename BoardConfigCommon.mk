#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

COMMON_PATH := device/lenovo/mt6753-common

TARGET_SPECIFIC_HEADER_PATH := vendor/mediatek/include

# HIDL
DEVICE_MANIFEST_FILE := vendor/mediatek/manifest.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := vendor/mediatek/framework_manifest.xml

# Architecture
ARCH := arm64
TARGET_ARCH := arm64
KERNEL_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Images
TARGET_NO_BOOTLOADER := true

# Display
SF_VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# FS
TARGET_USES_MKE2FS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Graphics
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
BOARD_PROVIDES_LIBRIL := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
TARGET_USES_ION := true
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 firmware_class.path=/system/vendor/firmware androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board A7010
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
MTK_APPENDED_DTB_SUPPORT := yes
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_USES_FULL_RECOVERY_IMAGE := true

# Recovery
BOARD_NO_SECURE_DISCARD := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# TWRP
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TW_DEFAULT_BRIGHTNESS := 80
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_EXCLUDE_SUPERSU := true

TARGET_PROVIDES_LIBLIGHT := true
BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M

# Wifi
BOARD_WLAN_DEVICE		 := MediaTek
BOARD_CONNECTIVITY_VENDOR        := MediaTek
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM        := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA          := STA
WIFI_DRIVER_FW_PATH_AP           := AP
WIFI_DRIVER_FW_PATH_P2P          := P2P
WIFI_DRIVER_STATE_CTRL_PARAM	 := "/dev/wmtWifi"
WIFI_DRIVER_STATE_ON		 := 1
WIFI_DRIVER_STATE_OFF		 := 0

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# SELinux
BOARD_SEPOLICY_DIRS := vendor/mediatek/sepolicy

# Block based ota
# see http://review.cyanogenmod.org/#/c/78849/1/core/Makefile
BLOCK_BASED_OTA := false

# Prop
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# EGL
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/recovery.fstab

# Shims
TARGET_LD_SHIM_LIBS := /system/lib/libgui.so|/system/vendor/lib/libmtkshim_gui.so:/system/lib64/libgui.so|/system/vendor/lib64/libmtkshim_gui.so:/system/vendor/lib/hw/audio.primary.mt6753.so|/system/vendor/lib/libmtkshim_audio.so:/system/vendor/lib64/hw/audio.primary.mt6753.so|/system/vendor/lib64/libmtkshim_audio.so:/system/vendor/lib/libcam.camadapter.so|/system/vendor/lib/libmtkshim_camera.so:/system/vendor/lib64/libcam.camadapter.so|/system/vendor/lib64/libmtkshim_camera.so:/system/lib/libui.so|/system/vendor/lib/libmtkshim_ui.so:/system/lib64/libui.so|/system/vendor/lib64/libmtkshim_ui.so:/system/vendor/lib/libcam.camnode.so|/system/vendor/lib/libmtkshim_camera.so:/system/vendor/lib64/libcam.camnode.so|/system/vendor/lib64/libmtkshim_camera.so

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Platform
TARGET_BOARD_PLATFORM := mt6753
TARGET_BOOTLOADER_BOARD_NAME := mt6753

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
