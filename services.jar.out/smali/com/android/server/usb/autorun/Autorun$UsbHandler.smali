.class final Lcom/android/server/usb/autorun/Autorun$UsbHandler;
.super Landroid/os/Handler;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/autorun/Autorun;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/android/server/usb/autorun/Autorun;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    #getter for: Lcom/android/server/usb/autorun/Autorun;->mAutorunObservered:Z
    invoke-static {p1}, Lcom/android/server/usb/autorun/Autorun;->access$300(Lcom/android/server/usb/autorun/Autorun;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    #getter for: Lcom/android/server/usb/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/autorun/Autorun;->access$400(Lcom/android/server/usb/autorun/Autorun;)Landroid/os/UEventObserver;

    move-result-object v0

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    #setter for: Lcom/android/server/usb/autorun/Autorun;->mAutorunObservered:Z
    invoke-static {p1, v0}, Lcom/android/server/usb/autorun/Autorun;->access$302(Lcom/android/server/usb/autorun/Autorun;Z)Z

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] ERROR!! unknown msg is delivered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/android/server/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/android/server/usb/autorun/Autorun;->onUsbUnPlugged()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/android/server/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/android/server/usb/autorun/Autorun;->onUsbPlugged()V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/android/server/usb/autorun/Autorun;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/autorun/Autorun;->onAutorunUpdateState(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->removeMessages(I)V

    .line 197
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, m:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->removeMessages(I)V

    .line 203
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, m:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method
