.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$BadTokenException;
    }
.end annotation


# virtual methods
.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method public abstract getNumOfViewRootImpl()I
.end method

.method public abstract getViewRootImpl(I)Landroid/view/ViewRootImpl;
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method

.method public abstract setExtUsage(I)V
.end method
