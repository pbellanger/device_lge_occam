# What the Nexus 4 may have been like if Google had continued supporting it

## Introduction:
This repo contains the files and instructions necessary to build a working Nougat ROM for the Nexus 4 (occam). The ROM is meant to emulate the "pure Android experience" found on the Nexus/Pixel devices and includes all the necessary google apps and services.
See instructions below to build the ROM.

## Credits:
This ROM is heavily inspired from the excellent work of [Ganadist](https://github.com/ganadist) who released a ["pure Android experience" Marshmallow ROM for the Nexus 4](https://github.com/ganadist/device_lge_occam).
This ROM would not have been possible without [Zaclimon's work](http://https://github.com/zaclimon/) on the mako device.

## Pre-requisites:
See [Requirements](http://s.android.com/source/requirements.html) and [Establishing a Build Environment](http://s.android.com/source/initializing.html) to set up a build environment on your computer.

## Build Instructions:
    $ repo init -u https://android.googlesource.com/platform/manifest -b android-7.1.2_r18 -g default,-flo,-fugu,-shamu,-flounder,-hammerhead,-bullhead,-angler -p linux
    $ cd .repo
    $ git clone https://github.com/pbellanger/local_manifests.git
    $ cd ..
    $ repo sync
    $ export ANDROID_JACK_VM_ARGS="-Xmx4g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"
    $ . build/envsetup.sh
    $ lunch occam-userdebug
    $ prepare_occam >occamprepare.log 2>&1
    $ kernel_build >occamkernel.log 2>&1
    $ make -j$(grep -c processor /proc/cpuinfo) dist >occambuild.log 2>&1
    $ make_signed_images

## Installation instructions:

### On your Nexus 4
    1. Power down your phone
    2. Press and hold the volume down and the power buttons of your phone to enter fastboot mode
    3. Connect your phone to your computer via the USB cable

### On your PC
Assuming you are at the top of your AOSP working directory:

    $ cd out/target/product/mako

If installing the ROM for the first time (**WARNING: all user data will be deleted on your tablet!**):

    $ fastboot oem unlock
    $ fastboot -w update occam-signed-img-eng.*.zip

If installing the ROM from an older version of this ROM (no user data will be lost):

    $ fastboot update occam-signed-img-eng.*.zip
or, for the OTA update:
    $ adb sideload occam-signed-ota-update.*.zip

**NOTE: the initial boot after flashing the ROM may take a long time (in the order of several minutes)**
