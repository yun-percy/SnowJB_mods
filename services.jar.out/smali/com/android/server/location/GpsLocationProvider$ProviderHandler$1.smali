.class Lcom/android/server/location/GpsLocationProvider$ProviderHandler$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$ProviderHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$ProviderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 2736
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$1;->this$1:Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$1;->this$1:Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()Z

    .line 2739
    return-void
.end method
