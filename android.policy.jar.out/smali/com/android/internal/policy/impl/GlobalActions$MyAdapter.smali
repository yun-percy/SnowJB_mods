.class Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    .line 433
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LGMDMAirplaneModeUIAdpater"

    invoke-interface {v0, v1, v2}, Lcom/lge/cappuccino/IMdm;->checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 412
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/GlobalActions$Action;

    .line 414
    .local v0, action:Lcom/android/internal/policy/impl/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v0           #action:Lcom/android/internal/policy/impl/GlobalActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;
    .locals 6
    .parameter "position"

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, filteredPos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 446
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/GlobalActions$Action;

    .line 447
    .local v0, action:Lcom/android/internal/policy/impl/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    :cond_2
    if-ne v1, p1, :cond_3

    .line 454
    return-object v0

    .line 456
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    .end local v0           #action:Lcom/android/internal/policy/impl/GlobalActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 468
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    .line 473
    .local v0, action:Lcom/android/internal/policy/impl/GlobalActions$Action;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/internal/policy/impl/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
