.class Lcom/android/server/location/GpsLocationProvider$4;
.super Landroid/location/INetInitiatedListener$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 4
    .parameter "notificationId"
    .parameter "userResponse"

    .prologue
    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2467
    .local v0, extrasBuf:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNiResponse, notifId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V
    invoke-static {v1, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;II)V

    .line 2470
    const/4 v1, 0x1

    return v1
.end method
