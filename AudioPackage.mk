LOCAL_PATH := vendor/bijia/googleaddons/media/audio/

AUDIO_FILES := \
        alarms/Awaken.ogg \
        alarms/Bounce.ogg \
        alarms/Drip.ogg \
        alarms/Flow.ogg \
        alarms/Gallop.ogg \
        alarms/Nudge.ogg \
        alarms/Orbit.ogg \
        alarms/Rise.ogg \
        alarms/Sway.ogg \
        alarms/Wag.ogg \
        notifications/Birdsong.ogg \
        notifications/Chime.ogg \
        notifications/Clink.ogg \
        notifications/Flick.ogg \
        notifications/Hey.ogg \
        notifications/Note.ogg \
        notifications/Strum.ogg \
        notifications/Trill.ogg \
        ringtones/Beats.ogg \
        ringtones/Dance_party.ogg \
        ringtones/Early_bird.ogg \
        ringtones/Hey_hey.ogg \
        ringtones/Romance.ogg \
        ringtones/Rrrring.ogg \
        ringtones/Shooting_star.ogg \
        ringtones/Spaceship.ogg \
        ringtones/Summer_night.ogg \
        ringtones/Zen.ogg \
        ui/audio_end.ogg \
        ui/audio_initiate.ogg \
        ui/camera_click.ogg \
        ui/camera_focus.ogg \
        ui/Dock.ogg \
        ui/Effect_Tick.ogg \
        ui/KeypressDelete.ogg \
        ui/KeypressInvalid.ogg \
        ui/KeypressReturn.ogg \
        ui/KeypressSpacebar.ogg \
        ui/KeypressStandard.ogg \
        ui/Lock.ogg \
        ui/LowBattery.ogg \
        ui/NFCFailure.ogg \
        ui/NFCInitiated.ogg \
        ui/NFCSuccess.ogg \
        ui/NFCTransferComplete.ogg \
        ui/NFCTransferInitiated.ogg \
        ui/Trusted.ogg \
        ui/Undock.ogg \
        ui/Unlock.ogg \
        ui/VideoRecord.ogg \
        ui/VideoStop.ogg \
        ui/WirelessChargingStarted.ogg \

PRODUCT_COPY_FILES := $(foreach fn,$(AUDIO_FILES),\
	$(LOCAL_PATH)/$(fn):system/media/audio/$(fn))
