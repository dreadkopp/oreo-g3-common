# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    media.aac_51_output_enabled=true \
    use.voice.path.for.pcm.voip=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    ro.qc.sdk.audio.fluencetype=fluence

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path="/data/misc/bluetooth/bdaddr"

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    persist.metadata_dynfps.disable=true \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=560

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.telephony.oosisdc=false \
    ril.subscription.types=NV,RUIM \
    ro.ril.telephony.mqanelements=5 \
		persist.dbg.ims_volte_enable=1 \
		persist.dbg.volte_avail_ovr=1 \
		persist.dbg.vt_avail_ovr=1 \
		persist.dbg.wfc_avail_ovr=1 \
		persist.radio.rat_on=combine \
		persist.radio.data_ltd_sys_ind=1 \
		persist.radio.data_con_rprt=1 \
		persist.radio.calls.on.ims=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=false \
    persist.data.qmi.adb_logmask=0 \
    persist.qcril.disable_retry=true \
    ro.use_data_netmgrd=true

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    debug.qualcomm.sns.daemon=e \
    debug.qualcomm.sns.hal=e \
    debug.qualcomm.sns.libsensor1=e
