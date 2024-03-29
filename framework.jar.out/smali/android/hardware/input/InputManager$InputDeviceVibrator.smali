.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 1
    .parameter
    .parameter "deviceId"

    .prologue
    .line 785
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 786
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 787
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 788
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    #getter for: Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    invoke-static {v1}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVibrateVolume()I
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public getVibrateVolume(I)I
    .locals 1
    .parameter "vibrateType"

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method public setVibrateVolume(I)V
    .locals 0
    .parameter "volumeIndex"

    .prologue
    .line 832
    return-void
.end method

.method public setVibrateVolume(II)V
    .locals 0
    .parameter "vibrateType"
    .parameter "volumeIndex"

    .prologue
    .line 841
    return-void
.end method

.method public vibrate(J)V
    .locals 4
    .parameter "milliseconds"

    .prologue
    .line 797
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate([JI)V

    .line 798
    return-void
.end method

.method public vibrate(JI)V
    .locals 0
    .parameter "milliseconds"
    .parameter "volumeIndex"

    .prologue
    .line 824
    return-void
.end method

.method public vibrate([JI)V
    .locals 4
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 802
    array-length v1, p1

    if-lt p2, v1, :cond_0

    .line 803
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 806
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    #getter for: Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;
    invoke-static {v1}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrate([JI[I)V
    .locals 0
    .parameter "pattern"
    .parameter "repeat"
    .parameter "volumeIndex"

    .prologue
    .line 828
    return-void
.end method
