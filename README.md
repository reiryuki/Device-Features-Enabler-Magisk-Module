# Device Features Enabler Magisk Module

## Descriptions
- Enables android.hardware.audio.pro feature that activates Pro Audio in Telegram app voice call
- Enables android.software.vr.mode feature that allows changing VR mode in Settings app
- Enables android.hardware.camera.ar feature that allows installation of Google Play Services for AR app (com.google.ar.core) https://www.apkmirror.com/apk/google-inc/arcore/
- Enables android.software.incremental_delivery that allows incremental update in Play Store
- Enables several other device features
- Compatiblity is not guaranteed

## Changelog

v0.8
- Fix wrong target in latest KernelSU

v0.7
- Remove unexpected features

v0.6
- Fix bug in uninstall.sh

v0.5
- Fix conflict with modules_update while installing via recovery if Magisk installed

v0.4
- Redirect /sdcard to /data/media/"$UID"

v0.3
- Save install log at /sdcard/..._recovery.log if installing via Recovery
- Add optional debug.log=1 for more detailed install log
- Does not use android.hardware.ram.low by default and make it as an optional

v0.2
- Remove features that causes bootloop in some devices

v0.1
- Initial release

## Requirements
- Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
- Install this module https://devuploads.com/q8ygctjgr8ah via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- Reboot

## Optionals
- https://t.me/ryukinotes/87
- Global: https://t.me/ryukinotes/35

## Troubleshootings
- Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately.

## Credits and Contributors
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
- https://t.me/ryukinotes/25


