.class public Landroid/net/MobileDataStateTracker;
.super Ljava/lang/Object;
.source "MobileDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final VDBG:Z = true


# instance fields
.field public featureset:Ljava/lang/String;

.field public isBootCompleted:Z

.field private mApnType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z

.field private mylgfeature:Lcom/android/internal/telephony/LGfeature;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/internal/telephony/LGfeature;)V
    .locals 3
    .parameter "netType"
    .parameter "tag"
    .parameter "lgfeature"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 82
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 83
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 87
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 88
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 101
    const-string/jumbo v0, "ro.afwdata.LGfeatureset"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->featureset:Ljava/lang/String;

    .line 102
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->isBootCompleted:Z

    .line 113
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 116
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Landroid/net/MobileDataStateTracker;->mylgfeature:Lcom/android/internal/telephony/LGfeature;

    .line 118
    return-void
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/LGfeature;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mylgfeature:Lcom/android/internal/telephony/LGfeature;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$900(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 356
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 358
    :cond_0
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 364
    :cond_3
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 741
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 745
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .parameter "netType"

    .prologue
    .line 675
    packed-switch p0, :pswitch_data_0

    .line 721
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 677
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 679
    :pswitch_2
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 681
    :pswitch_3
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 683
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 685
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 687
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 689
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 691
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 694
    :pswitch_9
    const-string v0, "admin"

    goto :goto_0

    .line 696
    :pswitch_a
    const-string/jumbo v0, "vzwapp"

    goto :goto_0

    .line 698
    :pswitch_b
    const-string/jumbo v0, "vzw800"

    goto :goto_0

    .line 702
    :pswitch_c
    const-string/jumbo v0, "tethering"

    goto :goto_0

    .line 706
    :pswitch_d
    const-string v0, "ktmultirab1"

    goto :goto_0

    .line 709
    :pswitch_e
    const-string v0, "ktmultirab2"

    goto :goto_0

    .line 714
    :pswitch_f
    const-string v0, "entitlement"

    goto :goto_0

    .line 718
    :pswitch_10
    const-string v0, "bip"

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDetailed state, old ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and new state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 464
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 465
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 466
    .local v2, wasConnecting:Z
    :goto_0
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 474
    move-object p2, v0

    .line 475
    :cond_0
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 477
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 479
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_1
    return-void

    .line 465
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 4
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 631
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 636
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 637
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 638
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    if-nez v2, :cond_1

    .line 639
    const-string v2, "Ignoring feature request because could not acquire MSim Phone Service"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_7

    const-string v2, "enable"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 671
    const/4 v2, 0x3

    :goto_3
    return v2

    .line 644
    :cond_1
    if-eqz p2, :cond_2

    .line 645
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 647
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 636
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_5

    .line 654
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 659
    :cond_5
    if-eqz p2, :cond_6

    .line 660
    :try_start_1
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 662
    :cond_6
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_3

    .line 664
    :catch_1
    move-exception v0

    .line 665
    .restart local v0       #e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    goto :goto_4

    .line 670
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    const-string v2, "disable"

    goto :goto_2
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 749
    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method


# virtual methods
.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 194
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 195
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 737
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    const-string/jumbo v0, "unknown"

    .line 381
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 383
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 430
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 385
    :pswitch_0
    const-string v0, "gprs"

    .line 386
    goto :goto_0

    .line 388
    :pswitch_1
    const-string v0, "edge"

    .line 389
    goto :goto_0

    .line 391
    :pswitch_2
    const-string/jumbo v0, "umts"

    .line 392
    goto :goto_0

    .line 394
    :pswitch_3
    const-string v0, "hsdpa"

    .line 395
    goto :goto_0

    .line 397
    :pswitch_4
    const-string v0, "hsupa"

    .line 398
    goto :goto_0

    .line 401
    :pswitch_5
    const-string v0, "hspa"

    .line 402
    goto :goto_0

    .line 404
    :pswitch_6
    const-string v0, "cdma"

    .line 405
    goto :goto_0

    .line 407
    :pswitch_7
    const-string v0, "1xrtt"

    .line 408
    goto :goto_0

    .line 410
    :pswitch_8
    const-string v0, "evdo"

    .line 411
    goto :goto_0

    .line 413
    :pswitch_9
    const-string v0, "evdo"

    .line 414
    goto :goto_0

    .line 416
    :pswitch_a
    const-string v0, "evdo_b"

    .line 417
    goto :goto_0

    .line 419
    :pswitch_b
    const-string v0, "iden"

    .line 420
    goto :goto_0

    .line 422
    :pswitch_c
    const-string v0, "lte"

    .line 423
    goto :goto_0

    .line 425
    :pswitch_d
    const-string v0, "ehrpd"

    .line 426
    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 182
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 183
    return-void
.end method

.method public reconnect()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, retValue:Z
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 498
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->featureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] isBootCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/MobileDataStateTracker;->isBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 500
    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->isBootCompleted:Z

    if-eqz v2, :cond_0

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.kt.CALL_PROTECTION_MENU_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 521
    const-string v2, "Error in reconnect - unexpected response."

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 524
    :goto_0
    :pswitch_0
    return v1

    .line 510
    :pswitch_1
    const/4 v1, 0x1

    .line 511
    goto :goto_0

    .line 514
    :pswitch_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v1, 0x1

    .line 516
    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public setDataConnectionMessanger(Landroid/os/Messenger;)V
    .locals 4
    .parameter "msger"

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force setDataConnectionMessanger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    .line 350
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 351
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 352
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 5
    .parameter "met"

    .prologue
    .line 599
    const-string v3, "apnType"

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 601
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: E met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 603
    .local v2, msg:Landroid/os/Message;
    const v3, 0x4201f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 604
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 605
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 606
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 604
    .restart local v2       #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 608
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X mAc was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyDataEnable(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 588
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 589
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 590
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 592
    :cond_0
    return-void

    .line 589
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 7
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 533
    invoke-direct {p0, v5}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 538
    const/4 v3, 0x0

    .local v3, retry:I
    :goto_0
    const/4 v6, 0x2

    if-ge v3, v6, :cond_0

    .line 539
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 540
    iget-object v6, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    if-nez v6, :cond_2

    .line 541
    const-string v4, "Ignoring mobile radio request because could not acquire MSim Phone Service"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 569
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not set radio power to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_7

    const-string/jumbo v4, "on"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    move v2, v5

    .line 570
    :cond_1
    :goto_3
    return v2

    .line 547
    :cond_2
    const/4 v2, 0x1

    .line 548
    .local v2, result:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 549
    if-eqz v2, :cond_3

    iget-object v6, p0, Landroid/net/MobileDataStateTracker;->mMSimPhoneService:Lcom/android/internal/telephony/msim/ITelephonyMSim;

    invoke-interface {v6, p1, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 548
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v2, v5

    .line 549
    goto :goto_5

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    if-nez v3, :cond_4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 538
    .end local v1           #i:I
    .end local v2           #result:Z
    :cond_4
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v6, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v6, :cond_6

    .line 557
    const-string v4, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_6
    :try_start_1
    iget-object v6, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v6, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_3

    .line 563
    :catch_1
    move-exception v0

    .line 564
    .restart local v0       #e:Landroid/os/RemoteException;
    if-nez v3, :cond_4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    goto :goto_6

    .line 569
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v4, "off"

    goto :goto_2
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 482
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 483
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 577
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 578
    const v2, 0x4201d

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 579
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 581
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 582
    return-void

    .line 578
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 127
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 130
    new-instance v1, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 140
    return-void
.end method

.method public teardown()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 439
    invoke-virtual {p0, v2}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 442
    const-string v4, "KTBASE"

    const-string/jumbo v5, "ro.afwdata.LGfeatureset"

    const-string/jumbo v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 443
    .local v1, isKTBASE:Z
    iget-boolean v4, p0, Landroid/net/MobileDataStateTracker;->isBootCompleted:Z

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.kt.CALL_PROTECTION_MENU_ON"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 448
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 616
    .local v1, writer:Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 617
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Mobile data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 618
    const-string v2, "Data enabled: user="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 619
    const-string v2, ", policy="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 620
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
