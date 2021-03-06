# Copyright (C) 2010 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/samsung/epic4gtouch/overlay

# include common makefile for c1 platform
$(call inherit-product-if-exists, device/samsung/c1-common/common.mk)

# apns config file
PRODUCT_COPY_FILES += \
        vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
		
# Init files
PRODUCT_COPY_FILES += \
	device/samsung/epic4gtouch/lpm.rc:root/lpm.rc \
	device/samsung/epic4gtouch/init.rc:root/init.rc \
	device/samsung/epic4gtouch/init.smdkv310.rc:root/init.smdkv310.rc \
	device/samsung/epic4gtouch/init.smdkv310.usb.rc:root/init.smdkv310.usb.rc \
	device/samsung/epic4gtouch/ueventd.rc:root/ueventd.rc \
	device/samsung/epic4gtouch/ueventd.smdkv310.rc:root/ueventd.smdkv310.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml 
 

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/epic4gtouch/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/samsung/epic4gtouch/keylayout/Broadcom_Bluetooth_HID.kl:system/usr/keylayout/Broadcom_Bluetooth_HID.kl \
	device/samsung/epic4gtouch/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/samsung/epic4gtouch/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
	device/samsung/epic4gtouch/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
	device/samsung/epic4gtouch/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	device/samsung/epic4gtouch/mxt224_ts_input.idc:system/usr/idc/mxt224_ts_input.idc \
	device/samsung/epic4gtouch/sec_ts_ics_bio.idc:system/usr/idc/sec_ts_ics_bio.idc 
	
PRODUCT_COPY_FILES += \
  device/samsung/epic4gtouch/configs/nvram_net.txt:system/etc/nvram_net.txt \
  device/samsung/epic4gtouch/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
  device/samsung/epic4gtouch/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal
	
PRODUCT_COPY_FILES += \
	device/samsung/epic4gtouch/media_profiles.xml:system/etc/media_profiles.xml
	
# Vold
PRODUCT_COPY_FILES += \
	device/samsung/epic4gtouch/configs/vold.fstab:system/etc/vold.fstab 

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
#PRODUCT_PROPERTY_OVERRIDES += \
#       wifi.interface=eth0 \
#       wifi.supplicant_scan_interval=15 \
#       ro.telephony.sends_barcount=1 \
#       mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
#	   ro.telephony.ril_class=samsung \
#       dalvik.vm.heapsize=64m \
#       persist.service.usb.setting=0 \
#       dev.sfbootcomplete=0 \
#	   ro.telephony.default_network=4 \
#       ro.ril.def.agps.mode=2 \
#       ro.cdma.home.operator.numeric=310120 \
#       ro.cdma.home.operator.alpha=Sprint \
#       ro.config.vc_call_vol_steps=15 \
#       ro.telephony.call_ring.multiple=false \
#       ro.telephony.call_ring.delay=3000 \
#       net.cdma.datalinkinterface=/dev/ttyCDMA0 \
#       net.cdma.ppp.interface=ppp0 \
#       net.connectivity.type=CDMA1 \
#       net.interfaces.defaultroute=cdma \
#       mobiledata.interfaces=ppp0 \
#       ro.ril.samsung_cdma=true \
#       ro.telephony.ril.v3=datacall \
#	   persist.sys.strictmode.visual=0
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=eth0 \
       wifi.supplicant_scan_interval=20 \
       dalvik.vm.heapsize=64m \
       persist.service.usb.setting=0 \
       dev.sfbootcomplete=0 \
       persist.sys.vold.switchexternal=1 \
	   persist.sys.usb.config=mass_storage
	   
# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    net.cdma.ppp.interface=ppp0 \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=eth0,ppp0 \
    ro.telephony.ril_class=samsung \
    ro.ril.samsung_cdma=true \
    ro.carrier=Sprint

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)


# Gps
PRODUCT_COPY_FILES += \
	device/samsung/epic4gtouch/configs/gps.conf:system/etc/gps.conf \
	device/samsung/epic4gtouch/configs/sirfgps.conf:system/etc/sirfgps.conf

# Packages
PRODUCT_PACKAGES := \
	audio.primary.smdkv310 \
	audio_policy.smdkv310 \
	audio.a2dp.default \
	libaudio \
	libexifa \
	libjpega \
	smdkv310_hdcp_keys \
	com.android.future.usb.accessory
	
# Camera
PRODUCT_PACKAGES += \
	Camera

# Sensors
PRODUCT_PACKAGES += \
	lights.smdkv310 \
	sensors.smdkv310

# Filesystem management tools
PRODUCT_PACKAGES += \
	static_busybox \
	make_ext4fs \
	setup_fs

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
# This device is hdpi.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += hdpi

# kernel modules for ramdisk
RAMDISK_MODULES = $(addprefix device/samsung/epic4gtouch/modules/, dhd.ko bthid.ko j4fs.ko \
	scsi_wait_scan.ko vibrator.ko cyasswitch.ko)
PRODUCT_COPY_FILES += $(foreach module,\
	$(RAMDISK_MODULES),\
	$(module):root/lib/modules/$(notdir $(module)))

# other kernel modules not in ramdisk
PRODUCT_COPY_FILES += $(foreach module,\
	$(filter-out $(RAMDISK_MODULES),$(wildcard device/samsung/epic4gtouch/modules/*.ko)),\
	$(module):system/lib/modules/$(notdir $(module)))

# kernel modules for recovery ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/epic4gtouch/modules/j4fs.ko:recovery/root/lib/modules/j4fs.ko

PRODUCT_COPY_FILES += \
    device/samsung/epic4gtouch/kernel:kernel

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/epic4gtouch/epic4gtouch-vendor.mk)
