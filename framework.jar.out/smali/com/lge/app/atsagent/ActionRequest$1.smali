.class final Lcom/lge/app/atsagent/ActionRequest$1;
.super Ljava/lang/Object;
.source "ActionRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/app/atsagent/ActionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/ActionRequest;
    .locals 1
    .parameter "in"

    .prologue
    .line 53
    new-instance v0, Lcom/lge/app/atsagent/ActionRequest;

    invoke-direct {v0, p1}, Lcom/lge/app/atsagent/ActionRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/ActionRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/app/atsagent/ActionRequest;
    .locals 1
    .parameter "size"

    .prologue
    .line 57
    new-array v0, p1, [Lcom/lge/app/atsagent/ActionRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/ActionRequest$1;->newArray(I)[Lcom/lge/app/atsagent/ActionRequest;

    move-result-object v0

    return-object v0
.end method