.class public abstract Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;
.super Landroid/os/Binder;
.source "ICoreControlManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

.field static final TRANSACTION_changeCoreState:I = 0x3

.field static final TRANSACTION_changeDisableEDP:I = 0x5

.field static final TRANSACTION_changeMaxFrequency:I = 0x4

.field static final TRANSACTION_getCoreState:I = 0x2

.field static final TRANSACTION_nativeCoreControlNotification:I = 0x1

.field static final TRANSACTION_setLowPowerModePolicy:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->nativeCoreControlNotification(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->getCoreState()I

    move-result v2

    .line 58
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v2           #_result:I
    :sswitch_3
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->changeCoreState(I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->changeMaxFrequency(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->changeDisableEDP(I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v4, "com.lge.systemservice.core.corecontrolmanager.ICoreControlManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 96
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/corecontrolmanager/ICoreControlManager$Stub;->setLowPowerModePolicy(IZ)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
