.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$RMSCallback;,
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final CS_ACTIVE:I = 0x1

.field public static final CS_ACTIVE_SESSION2:I = 0x100

.field public static final CS_HOLD:I = 0x2

.field public static final CS_HOLD_SESSION2:I = 0x200

.field public static final CS_INACTIVE:I = 0x0

.field public static final CS_INACTIVE_SESSION2:I = 0x0

.field public static final DEVICE_IN_AMBIENT:I = 0x200000

.field public static final DEVICE_IN_ANC_HEADSET:I = 0x10000000

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x80000000

.field public static final DEVICE_IN_AUX_DIGITAL:I = 0x8000000

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = 0x2000000

.field public static final DEVICE_IN_BUILTIN_MIC1:I = 0x400000

.field public static final DEVICE_IN_BUILTIN_MIC2:I = 0x800000

.field public static final DEVICE_IN_COMMUNICATION:I = 0x100000

.field public static final DEVICE_IN_DEFAULT:I = 0x400000

.field public static final DEVICE_IN_FM_RX:I = 0x20000000

.field public static final DEVICE_IN_FM_RX_A2DP:I = 0x40000000

.field public static final DEVICE_IN_MIC_ARRAY:I = 0x1000000

.field public static final DEVICE_IN_PROXY:I = -0x80000000

.field public static final DEVICE_IN_WIRED_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_ALL:I = 0xfffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x6000

.field public static final DEVICE_OUT_ANC_HEADPHONE:I = 0x40000

.field public static final DEVICE_OUT_ANC_HEADPHONE_NAME:Ljava/lang/String; = "anc_headphone"

.field public static final DEVICE_OUT_ANC_HEADSET:I = 0x20000

.field public static final DEVICE_OUT_ANC_HEADSET_NAME:Ljava/lang/String; = "anc_headset"

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_DEFAULT:I = 0x2

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x8000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm"

.field public static final DEVICE_OUT_FM_TX:I = 0x10000

.field public static final DEVICE_OUT_FM_TX_NAME:Ljava/lang/String; = "fm_tx"

.field public static final DEVICE_OUT_PROXY:I = 0x80000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final IMS_ACTIVE:I = 0x10

.field public static final IMS_HOLD:I = 0x20

.field public static final IMS_INACTIVE:I = 0x0

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field private static final NUM_DEVICE_STATES:I = 0x1

.field private static final NUM_FORCE_CONFIG:I = 0xb

.field private static final NUM_FORCE_USE:I = 0x4

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xc

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DMB:I = 0xb

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM:I = 0xa

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static mRMSCallback:Landroid/media/AudioSystem$RMSCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RMSCallbackFromNative(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, rmsCallback:Landroid/media/AudioSystem$RMSCallback;
    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    .line 223
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->mRMSCallback:Landroid/media/AudioSystem$RMSCallback;

    if-eqz v1, :cond_0

    .line 224
    sget-object v0, Landroid/media/AudioSystem;->mRMSCallback:Landroid/media/AudioSystem$RMSCallback;

    .line 226
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0, p0}, Landroid/media/AudioSystem$RMSCallback;->onCallback(I)V

    .line 230
    :cond_1
    return-void

    .line 226
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static errorCallbackFromNative(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, errorCallback:Landroid/media/AudioSystem$ErrorCallback;
    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    .line 195
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v1, :cond_0

    .line 196
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 198
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 202
    :cond_1
    return-void

    .line 198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1
    .parameter "device"

    .prologue
    .line 333
    sparse-switch p0, :sswitch_data_0

    .line 376
    const-string v0, ""

    :goto_0
    return-object v0

    .line 335
    :sswitch_0
    const-string v0, "earpiece"

    goto :goto_0

    .line 337
    :sswitch_1
    const-string/jumbo v0, "speaker"

    goto :goto_0

    .line 339
    :sswitch_2
    const-string v0, "headset"

    goto :goto_0

    .line 341
    :sswitch_3
    const-string v0, "headphone"

    goto :goto_0

    .line 343
    :sswitch_4
    const-string v0, "bt_sco"

    goto :goto_0

    .line 345
    :sswitch_5
    const-string v0, "bt_sco_hs"

    goto :goto_0

    .line 347
    :sswitch_6
    const-string v0, "bt_sco_carkit"

    goto :goto_0

    .line 349
    :sswitch_7
    const-string v0, "bt_a2dp"

    goto :goto_0

    .line 351
    :sswitch_8
    const-string v0, "bt_a2dp_hp"

    goto :goto_0

    .line 353
    :sswitch_9
    const-string v0, "bt_a2dp_spk"

    goto :goto_0

    .line 355
    :sswitch_a
    const-string v0, "aux_digital"

    goto :goto_0

    .line 357
    :sswitch_b
    const-string v0, "analog_dock"

    goto :goto_0

    .line 359
    :sswitch_c
    const-string v0, "digital_dock"

    goto :goto_0

    .line 361
    :sswitch_d
    const-string/jumbo v0, "usb_accessory"

    goto :goto_0

    .line 363
    :sswitch_e
    const-string/jumbo v0, "usb_device"

    goto :goto_0

    .line 365
    :sswitch_f
    const-string v0, "fm"

    goto :goto_0

    .line 367
    :sswitch_10
    const-string v0, "fm_tx"

    goto :goto_0

    .line 369
    :sswitch_11
    const-string v0, "anc_headset"

    goto :goto_0

    .line 371
    :sswitch_12
    const-string v0, "anc_headphone"

    goto :goto_0

    .line 373
    :sswitch_13
    const-string/jumbo v0, "proxy"

    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
    .end sparse-switch
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static native getHeapFD(II)Ljava/io/FileDescriptor;
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xc

    return v0
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isRecording()Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native muteMicrophone(Z)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;)I
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 181
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 182
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    .line 189
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setInCallPhoneState(I)I
.end method

.method public static native setMABLControl(II)I
.end method

.method public static native setMABLEnable(I)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static setRMSCallback(Landroid/media/AudioSystem$RMSCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 214
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 215
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->mRMSCallback:Landroid/media/AudioSystem$RMSCallback;

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static native setRingerMode(II)I
.end method

.method public static native setStreamVolumeIndex(III)I
.end method
