.class Lcom/lge/systemui/MusicControl$4;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Lcom/lge/systemui/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$4;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 1
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$4;->this$0:Lcom/lge/systemui/MusicControl;

    #calls: Lcom/lge/systemui/MusicControl;->scanForward(IJ)V
    invoke-static {v0, p4, p2, p3}, Lcom/lge/systemui/MusicControl;->access$300(Lcom/lge/systemui/MusicControl;IJ)V

    .line 424
    return-void
.end method
