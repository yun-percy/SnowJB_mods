.class public final Landroid/provider/Telephony$Fota;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fota"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final EXEINFO:Ljava/lang/String; = "exeinfo"

.field public static final PREF_KEY_NOTIFICATION_METHOD:Ljava/lang/String; = "lge_pref_key_notification_method"

.field public static final PREF_KEY_NOTIFICATION_OF_THE_CALL:Ljava/lang/String; = "lge_pref_key_notification_of_the_call"

.field public static final PREF_KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "lge_pref_key_notification_sound"

.field public static final PREF_KEY_NOTIFICATION_VIBRATION:Ljava/lang/String; = "lge_pref_key_notification_vibration"

.field public static final PREF_VALUE_ERROR:I = -0x1

.field public static final PREF_VALUE_NOTI_CALL_OFF:I = 0x2

.field public static final PREF_VALUE_NOTI_CALL_SILENT:I = 0x2

.field public static final PREF_VALUE_NOTI_CALL_SOUND:I = 0x0

.field public static final PREF_VALUE_NOTI_CALL_VIBRATION:I = 0x1

.field public static final PREF_VALUE_NOTI_VIBRATION_ALWAYS:I = 0x0

.field public static final PREF_VALUE_NOTI_VIBRATION_NEVER:I = 0x2

.field public static final PREF_VALUE_NOTI_VIBRATION_WHENSILENT:I = 0x1

.field public static final TABLE_FOTA:Ljava/lang/String; = "fota"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7340
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "fota"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Fota;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7338
    invoke-static {p0}, Landroid/provider/Telephony$Fota;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static addFotaSmsToUri(Landroid/content/ContentResolver;Landroid/net/Uri;JILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "date"
    .parameter "exeinfo"
    .parameter "body"

    .prologue
    .line 7368
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 7369
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7370
    const-string v1, "exeinfo"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7371
    const-string v1, "body"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7372
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 7508
    if-eqz p0, :cond_0

    .line 7510
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 7511
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7516
    :cond_0
    :goto_0
    return-void

    .line 7512
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFotaSmsToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 7380
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getNotiCall(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 7449
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7452
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "lge_pref_key_notification_of_the_call"

    const-string v3, "TurnOff"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7453
    .local v0, notiCall:Ljava/lang/String;
    const-string v2, "Vibration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7454
    const/4 v2, 0x1

    .line 7460
    :goto_0
    return v2

    .line 7455
    :cond_0
    const-string v2, "Sound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7456
    const/4 v2, 0x0

    goto :goto_0

    .line 7457
    :cond_1
    const-string v2, "TurnOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7458
    const/4 v2, 0x2

    goto :goto_0

    .line 7460
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getNotiMethodSet(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 7432
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7433
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "lge_pref_key_notification_method"

    const-string v4, "Sound"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7435
    .local v0, notiMethodValue:Ljava/lang/String;
    const-string v3, "Vibration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7436
    const/4 v2, 0x1

    .line 7444
    :cond_0
    :goto_0
    return v2

    .line 7437
    :cond_1
    const-string v3, "Sound"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7438
    const/4 v2, 0x0

    goto :goto_0

    .line 7439
    :cond_2
    const-string v3, "TurnOff"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7441
    const-string v3, "Silent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7444
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getNotification(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 8
    .parameter "context"
    .parameter "notification"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 7384
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7385
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-static {p0}, Landroid/provider/Telephony$Fota;->getPreferenceDefaultNotiSoundValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 7386
    .local v4, ringtoneStr:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 7387
    .local v2, audioManagerRingerMode:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 7388
    .local v1, audioManagerMode:I
    invoke-static {p0}, Landroid/provider/Telephony$Fota;->getNotiMethodSet(Landroid/content/Context;)I

    move-result v3

    .line 7390
    .local v3, preferenceNotiMethodSet:I
    if-ne v1, v7, :cond_3

    .line 7391
    invoke-static {p0}, Landroid/provider/Telephony$Fota;->getNotiCall(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 7392
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 7420
    :cond_0
    :goto_0
    return-object p1

    .line 7393
    :cond_1
    invoke-static {p0}, Landroid/provider/Telephony$Fota;->getNotiCall(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_2

    .line 7394
    invoke-static {p0, p1, v4}, Landroid/provider/Telephony$Fota;->setSoundRingtone(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V

    goto :goto_0

    .line 7396
    :cond_2
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, -0x4

    iput v5, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 7398
    :cond_3
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 7414
    :pswitch_0
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, -0x4

    iput v5, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 7400
    :pswitch_1
    if-nez v3, :cond_4

    .line 7401
    invoke-static {p0, p1, v4}, Landroid/provider/Telephony$Fota;->setSoundRingtone(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V

    goto :goto_0

    .line 7402
    :cond_4
    if-ne v3, v6, :cond_5

    .line 7403
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 7404
    :cond_5
    if-ne v3, v7, :cond_0

    .line 7405
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, -0x4

    iput v5, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 7408
    :pswitch_2
    if-eq v3, v6, :cond_6

    if-nez v3, :cond_7

    .line 7409
    :cond_6
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 7410
    :cond_7
    if-ne v3, v7, :cond_0

    .line 7411
    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, -0x4

    iput v5, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 7398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getPreferenceDefaultNotiSoundValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 7425
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7426
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "lge_pref_key_notification_sound"

    const-string v3, "content://settings/system/notification_sound"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7427
    .local v0, returnValue:Ljava/lang/String;
    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 7364
    sget-object v1, Landroid/provider/Telephony$Fota;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static setSoundRingtone(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "notification"
    .parameter "ringtoneStr"

    .prologue
    const/4 v4, 0x0

    .line 7464
    const-string v1, "/system/media/audio/ui/SMSinCall.ogg"

    .line 7465
    .local v1, filepath:Ljava/lang/String;
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 7468
    .local v3, tm:Landroid/telephony/TelephonyManager;
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7471
    .local v0, au:Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 7475
    iput-object v4, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 7476
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 7477
    .local v2, mMediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v2, :cond_0

    .line 7479
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 7480
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 7481
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 7482
    new-instance v4, Landroid/provider/Telephony$Fota$1;

    invoke-direct {v4}, Landroid/provider/Telephony$Fota$1;-><init>()V

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7487
    new-instance v4, Landroid/provider/Telephony$Fota$2;

    invoke-direct {v4}, Landroid/provider/Telephony$Fota$2;-><init>()V

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 7493
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7505
    .end local v2           #mMediaPlayer:Landroid/media/MediaPlayer;
    :cond_0
    :goto_0
    return-void

    .line 7503
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    iput-object v4, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 7498
    .restart local v2       #mMediaPlayer:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 7496
    :catch_1
    move-exception v4

    goto :goto_0

    .line 7494
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public static updateFotaSmsToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    .line 7376
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
