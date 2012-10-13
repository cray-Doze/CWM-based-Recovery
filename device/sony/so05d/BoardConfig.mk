USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/so05d/BoardConfigVendor.mk

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

# Enable WEBGL in WebKit
#ENABLE_WEBGL := true

TARGET_BOOTLOADER_BOARD_NAME := so05d

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=sony user_debug=31 androidboot.baseband=msm qdss.etm_boot_enable=1
BOARD_KERNEL_BASE := 0x
BOARD_KERNEL_PAGESIZE := 

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/sony/so05d/kernel

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Custom boot
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_GRAPHICS := ../../../device/sony/so05d/recovery/graphics.c
//BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/sony/so05d/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file
