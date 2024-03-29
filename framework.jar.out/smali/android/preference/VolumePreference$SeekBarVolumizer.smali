.class public Landroid/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# static fields
.field private static final MSG_REVERT_VOLUME:I = 0xc8


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerRevertVolume:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 338
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v2, -0x1

    .line 341
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 262
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 264
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 268
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer$1;

    invoke-direct {v1, p0}, Landroid/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer$2;

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer$2;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer$3;

    invoke-direct {v1, p0}, Landroid/preference/VolumePreference$SeekBarVolumizer$3;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandlerRevertVolume:Landroid/os/Handler;

    .line 342
    iput-object p2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 343
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 344
    iput p4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 345
    iput-object p3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 348
    const-string/jumbo v1, "ro.lge.audio_soundexception"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Landroid/preference/VolumePreference;->mIsSoundException:Z
    invoke-static {p1, v1}, Landroid/preference/VolumePreference;->access$602(Landroid/preference/VolumePreference;Z)Z

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "lge.settings.intent.action.NOTI_RESUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    invoke-direct {p0, p3, p5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 360
    return-void
.end method

.method static synthetic access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 7
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 363
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 364
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 365
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 367
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v5, :cond_1

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 374
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 376
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    if-nez p2, :cond_2

    .line 381
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v4, :cond_3

    .line 382
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 398
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-static {v0, p2, v1}, Landroid/media/RingtoneManager;->getRingtoneWithStreamType(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 407
    return-void

    .line 383
    :cond_3
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v6, :cond_4

    .line 384
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 386
    :cond_4
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v5, :cond_5

    .line 387
    const-string v0, "file:///system/media/audio/ui/Effect_Tick.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 388
    :cond_5
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 390
    const-string v0, "file:///system/media/audio/ui/LG_Media_volume.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 393
    :cond_6
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 4
    .parameter "amount"

    .prologue
    .line 514
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 515
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 518
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 520
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 521
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 522
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 525
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 526
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 527
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 528
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 529
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 532
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 533
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 534
    invoke-virtual {p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 444
    if-nez p3, :cond_0

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 546
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 547
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 548
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 549
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 539
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 540
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 541
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 543
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 459
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 467
    :cond_0
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 470
    :cond_1
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 453
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 454
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 425
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mIsSoundException:Z
    invoke-static {v0}, Landroid/preference/VolumePreference;->access$600(Landroid/preference/VolumePreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandlerRevertVolume:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandlerRevertVolume:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandlerRevertVolume:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    const/4 v1, 0x1

    #setter for: Landroid/preference/VolumePreference;->mIsActive:Z
    invoke-static {v0, v1}, Landroid/preference/VolumePreference;->access$002(Landroid/preference/VolumePreference;Z)Z

    .line 474
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 475
    return-void
.end method

.method public startSample()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 482
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v1, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 483
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v3, :cond_1

    .line 486
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 494
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 495
    .local v0, audioManager:Landroid/media/AudioManager;
    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "VolumePreference"

    const-string/jumbo v2, "protected headset volume by setVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    const/high16 v2, 0x3e80

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setVolume(F)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 411
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 414
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    iput-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 420
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 421
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 507
    :cond_0
    return-void
.end method
