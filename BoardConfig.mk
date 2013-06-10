# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
#for chs
ARCH_ARM_HAVE_TLS_REGISTER := true
#-------------------------------------------------------------------------------------------------
# Kernel 3.4
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0
BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000

# Kernel 216
TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef44s/kernel216
TARGET_PREBUILT_KERNEL := device/pantech/ef44s/kernel216
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel216 \

# Kernel 212
#TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef44s/kernel212
#TARGET_PREBUILT_KERNEL := device/pantech/ef44s/kernel212
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel212 \

#-------------------------------------------------------------------------------------------------
#kernel 3.0
#BOARD_KERNEL_BASE := 0x80200000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F kgsl.mmutype=gpummu
#BOARD_FORCE_RAMDISK_ADDRESS := 0x81600000

# Kernel 166
#TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef44s/kernel166
#TARGET_PREBUILT_KERNEL := device/pantech/ef44s/kernel166
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel166 \


# Kernel 3.0 for ws20
#TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef44s/kernel_ics_ws20
#TARGET_PREBUILT_KERNEL := device/pantech/ef44s/kernel_ics_ws20
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel_ics_ws20 \

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/pantech/ef44s/egl.cfg

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP config
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
SP1_NAME := "modem"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "rawdata"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0