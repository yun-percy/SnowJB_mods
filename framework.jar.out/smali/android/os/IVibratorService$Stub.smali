.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_getVibrateVolume:I = 0x8

.field static final TRANSACTION_getVibrateVolumeType:I = 0xa

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_setVibrateVolume:I = 0x7

.field static final TRANSACTION_setVibrateVolumeType:I = 0x9

.field static final TRANSACTION_vibrate:I = 0x2

.field static final TRANSACTION_vibrateIndex:I = 0x5

.field static final TRANSACTION_vibratePattern:I = 0x3

.field static final TRANSACTION_vibratePatternIndex:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IVibratorService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    move-result v5

    .line 50
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v5, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 56
    .end local v5           #_result:Z
    :sswitch_2
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 60
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 61
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IVibratorService$Stub;->vibrate(JLandroid/os/IBinder;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_3
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 71
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 74
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IVibratorService$Stub;->vibratePattern([JILandroid/os/IBinder;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_5
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 93
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 96
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IVibratorService$Stub;->vibrateIndex(JILandroid/os/IBinder;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 106
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 110
    .local v3, _arg2:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 111
    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/IVibratorService$Stub;->vibratePatternIndex([JI[ILandroid/os/IBinder;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:Landroid/os/IBinder;
    :sswitch_7
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->setVibrateVolume(I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->getVibrateVolume()I

    move-result v5

    .line 128
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v5           #_result:I
    :sswitch_9
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->setVibrateVolumeType(II)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_a
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->getVibrateVolumeType(I)I

    move-result v5

    .line 149
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
