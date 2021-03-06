#
# Copyright 2013 The Android Open-Source Project
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

# Opengapps settings 
GAPPS_VARIANT := stock
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_MATCHING_DPI := false
GAPPS_FORCE_PIXEL_LAUNCHER := true

# Include overlays to enable LTE
PRODUCT_PACKAGE_OVERLAYS := \
        device/lge/occam/overlays

PRODUCT_PROPERTY_OVERRIDES := \
	ro.config.ringtone=Zen_too.ogg \
	ro.config.notification_sound=Popcorn.ogg \
	ro.config.alarm_alert=Sunshower.ogg \

# remove unecessary google packages 
# Nexus 4 does not support VR
# WebViewGoogle not needed when Chrome is installed
# Fitness can be a battery hog on Nexus 4 when tracking movement
GAPPS_EXCLUDED_PACKAGES := FitnessPrebuilt \
        GoogleVrCore \
        WebViewGoogle \
        FaceLock

# Remove packages to reduce system image:
#    - GMail (use Inbox instead)
#    - News and Weather as it seems now replaced with the new gNews (formerly Newsstand)
#    - Instant apps (may be installed automtically by gPlayStore)
# TODO: make a stub of PrebuiltGmail
GAPPS_EXCLUDED_PACKAGES += PrebuiltGmail \
        PrebuiltNewsWeather \
        PrebuiltGmsCoreInstantApps \

# override package with stubs for reduce system image
PRODUCT_PACKAGES := BooksStub \
        CalendarGoogleStub \
        CloudPrint2Stub \
        DriveStub \
        EditorsDocsStub \
        EditorsSheetsStub \
        EditorsSlidesStub \
        HangoutsStub \
        MapsStub \
        Music2Stub \
        NewsstandStub \
        PhotosStub \
        PlayGamesStub \
        PlusOneStub \
        PrebuiltKeepStub \
        VideosStub \
        YouTubeStub

#PRODUCT_PACKAGES += \
#	PartnerBookmarksProvider \
#	CellBroadcastReceiver \
#	Stk \
#	NfcProvision

# Include additional opengapps package not included in selected variant
PRODUCT_PACKAGES += \
	GCS \

PRODUCT_COPY_FILES := \
	device/lge/occam/init.occam.rc:root/init.occam.rc \

$(call inherit-product, vendor/bijia/googleaddons/media/bootanimation.mk)
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
$(call inherit-product, device/lge/mako/full_mako.mk)
$(call inherit-product, device/lge/occam/AudioPackage.mk)

ifeq ($(TARGET_BUILD_VARIANT),user)
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.adb.secure=1 \

endif

# reduce system image size
MINIMAL_FONT_FOOTPRINT := true
SMALLER_FONT_FOOTPRINT := true
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi
PRODUCT_LOCALES := en_US en_GB fr_FR zh-rTW

PRODUCT_NAME := occam
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.product.name=$(PRODUCT_NAME) \
