.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;

.field final synthetic val$_v:Landroid/view/View;

.field final synthetic val$velocity:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2678
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;->val$_v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;->val$velocity:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;->val$_v:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1$2;->val$velocity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    .line 2682
    return-void
.end method
