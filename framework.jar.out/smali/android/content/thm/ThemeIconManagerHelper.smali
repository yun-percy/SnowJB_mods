.class public Landroid/content/thm/ThemeIconManagerHelper;
.super Ljava/lang/Object;
.source "ThemeIconManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeIconManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 50
    if-nez p0, :cond_0

    move-object v0, v4

    .line 67
    .local v2, height:I
    .local v3, width:I
    :goto_0
    return-object v0

    .line 52
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_0
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 53
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 55
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 56
    .restart local v3       #width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 57
    .restart local v2       #height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    move-object v0, v4

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static drawBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFI)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "icon"
    .parameter "icon_bg"
    .parameter "width"
    .parameter "height"
    .parameter "resizeRate"
    .parameter "heightAlpha"

    .prologue
    .line 72
    invoke-static {p0}, Landroid/content/thm/ThemeIconManagerHelper;->changeDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 73
    .local v5, iconBitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 74
    const/4 v3, 0x0

    .line 100
    :goto_0
    return-object v3

    .line 77
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/thm/ThemeIconManagerHelper;->changeDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 78
    .local v4, iconBgBitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 79
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    :cond_1
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 84
    .local v3, canvasBitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v6, v13, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    .local v6, iconBounds:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Paint;

    const/4 v13, 0x3

    invoke-direct {v7, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 88
    .local v7, p:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 91
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v9, v13, p4

    .line 92
    .local v9, paddedWidth:F
    move/from16 v0, p3

    int-to-float v13, v0

    mul-float v8, v13, p4

    .line 93
    .local v8, paddedHeight:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v13

    const/high16 v14, 0x4000

    div-float v14, v9, v14

    sub-float v11, v13, v14

    .line 94
    .local v11, x:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v13

    const/high16 v14, 0x4000

    div-float v14, v8, v14

    sub-float/2addr v13, v14

    move/from16 v0, p5

    int-to-float v14, v0

    add-float v12, v13, v14

    .line 96
    .local v12, y:F
    new-instance v10, Landroid/graphics/RectF;

    add-float v13, v11, v9

    add-float v14, v12, v8

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .local v10, r:Landroid/graphics/RectF;
    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 98
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "resId"
    .parameter "density"

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 35
    .local v1, result:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 30
    .end local v1           #result:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 32
    .end local v1           #result:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getResourcesForApplication(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 2
    .parameter "pm"
    .parameter "appInfo"

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    .local v1, result:Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 43
    .end local v1           #result:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #result:Landroid/content/res/Resources;
    goto :goto_0
.end method
