LOCAL_PATH := vendor/bijia/googleaddons/media/audio/

AUDIO_FILES := \
        alarms/A_real_hoot.ogg \
        alarms/Bright_morning.ogg \
        alarms/Cuckoo_clock.ogg \
        alarms/Early_twilight.ogg \
        alarms/Full_of_wonder.ogg \
        alarms/Gentle_breeze.ogg \
        alarms/Icicles.ogg \
        alarms/Jump_start.ogg \
        alarms/Loose_change.ogg \
        alarms/Rolling_fog.ogg \
        alarms/Spokes.ogg \
        alarms/Sunshower.ogg \
        notifications/Beginning.ogg \
        notifications/Coconuts.ogg \
        notifications/Duet.ogg \
        notifications/End_note.ogg \
        notifications/Gentle_gong.ogg \
        notifications/Mallet.ogg \
        notifications/Orders_up.ogg \
        notifications/Ping.ogg \
        notifications/Pipes.ogg \
        notifications/Popcorn.ogg \
        notifications/Shopkeeper.ogg \
        notifications/Sticks_and_stones.ogg \
        notifications/Tuneup.ogg \
        notifications/Tweeter.ogg \
        notifications/Twinkle.ogg \
        ringtones/Copycat.ogg \
        ringtones/Crackle.ogg \
        ringtones/Flutterby.ogg \
        ringtones/Hotline.ogg \
        ringtones/Leaps_and_bounds.ogg \
        ringtones/Lollipop.ogg \
        ringtones/Lost_and_found.ogg \
        ringtones/Mash_up.ogg \
        ringtones/Monkey_around.ogg \
        ringtones/Schools_out.ogg \
        ringtones/The_big_adventure.ogg \
        ringtones/Zen_too.ogg \
        ui/audio_end.ogg \
        ui/audio_initiate.ogg \
        ui/camera_click.ogg \
        ui/camera_focus.ogg \
        ui/Dock.ogg \
        ui/Effect_Tick.ogg \
        ui/InCallNotification.ogg \
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
