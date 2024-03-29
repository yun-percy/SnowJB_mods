.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$FrameRate;
    }
.end annotation


# static fields
.field private static final ABNORMAL_FRAMETIME_GAP_LOWER:F = 13.0f

.field private static final ABNORMAL_FRAMETIME_GAP_MAX:I = 0x28

.field private static final ABNORMAL_FRAMETIME_GAP_UPPER:F = 22.0f

.field private static ALPHA:F = 0.0f

.field private static final COEF_OF_ABNORMAL_FRAMETIME_GAP_LOWER:F = 1.3f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_COMPUTE_MODE_USING_CONSTANT_TIME_DIFF:I = 0x1

.field private static final FLING_COMPUTE_ORIGINAL_MODE:I = 0x0

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private flingComputeMode:I

.field private frameRate:Landroid/widget/Scroller$FrameRate;

.field private isNormalFlick:Z

.field private lastTimePassed:J

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private timePassedDiffConstant:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f80

    .line 66
    const-wide/high16 v8, 0x3fe8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 67
    const/high16 v8, 0x4448

    sput v8, Landroid/widget/Scroller;->ALPHA:F

    .line 68
    const v8, 0x3ecccccd

    sput v8, Landroid/widget/Scroller;->START_TENSION:F

    .line 69
    sget v8, Landroid/widget/Scroller;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Landroid/widget/Scroller;->END_TENSION:F

    .line 71
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Landroid/widget/Scroller;->SPLINE:[F

    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, x_min:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v13, :cond_2

    .line 79
    int-to-float v8, v2

    const/high16 v9, 0x42c8

    div-float v3, v8, v9

    .line 80
    .local v3, t:F
    const/high16 v6, 0x3f80

    .line 83
    .local v6, x_max:F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 84
    .local v5, x:F
    const/high16 v8, 0x4040

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 85
    .local v0, coef:F
    sub-float v8, v12, v5

    sget v9, Landroid/widget/Scroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Landroid/widget/Scroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 86
    .local v4, tx:F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 90
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 91
    .local v1, d:F
    sget-object v8, Landroid/widget/Scroller;->SPLINE:[F

    aput v1, v8, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v1           #d:F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    .line 88
    :cond_1
    move v7, v5

    goto :goto_1

    .line 93
    .end local v0           #coef:F
    .end local v3           #t:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    :cond_2
    sget-object v8, Landroid/widget/Scroller;->SPLINE:[F

    aput v12, v8, v13

    .line 96
    const/high16 v8, 0x4100

    sput v8, Landroid/widget/Scroller;->sViscousFluidScale:F

    .line 98
    sput v12, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 99
    invoke-static {v12}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 129
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 131
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 132
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 135
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/widget/Scroller$FrameRate;

    invoke-direct {v0, p0}, Landroid/widget/Scroller$FrameRate;-><init>(Landroid/widget/Scroller;)V

    iput-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->isNormalFlick:Z

    .line 140
    :cond_0
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .parameter "friction"

    .prologue
    .line 154
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 556
    sget v1, Landroid/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 557
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 558
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 564
    :goto_0
    sget v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 565
    return p0

    .line 560
    :cond_0
    const v0, 0x3ebc5ab2

    .line 561
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 562
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 577
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 579
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    .line 315
    iget-boolean v11, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v11, :cond_0

    .line 316
    const/4 v11, 0x0

    .line 391
    :goto_0
    return v11

    .line 319
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v11, v13

    long-to-int v9, v11

    .line 322
    .local v9, timePassed:I
    sget-boolean v11, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v11, :cond_2

    .line 323
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 325
    .local v0, currentTime:J
    iget-boolean v11, p0, Landroid/widget/Scroller;->isNormalFlick:Z

    if-eqz v11, :cond_2

    .line 326
    iget-object v11, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v12, v11, Landroid/widget/Scroller$FrameRate;->frameCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 327
    iget-object v11, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget-wide v12, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long v12, v0, v12

    iput-wide v12, v11, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 329
    iget v11, p0, Landroid/widget/Scroller;->flingComputeMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget-wide v11, p0, Landroid/widget/Scroller;->lastTimePassed:J

    sub-long v11, v0, v11

    const-wide/16 v13, 0x28

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1

    iget-object v11, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v11, v11, Landroid/widget/Scroller$FrameRate;->frameCount:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 331
    iget-object v11, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v12, v11, Landroid/widget/Scroller$FrameRate;->extraTime:I

    iget-wide v13, p0, Landroid/widget/Scroller;->lastTimePassed:J

    sub-long v13, v0, v13

    long-to-float v13, v13

    iget v14, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    sub-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v11, Landroid/widget/Scroller$FrameRate;->extraTime:I

    .line 333
    :cond_1
    iput-wide v0, p0, Landroid/widget/Scroller;->lastTimePassed:J

    .line 335
    iget v11, p0, Landroid/widget/Scroller;->flingComputeMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 336
    iget v11, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    iget-object v12, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v12, v12, Landroid/widget/Scroller$FrameRate;->frameCount:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v12, v12, Landroid/widget/Scroller$FrameRate;->extraTime:I

    add-int v9, v11, v12

    .line 342
    .end local v0           #currentTime:J
    :cond_2
    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v9, v11, :cond_5

    .line 343
    iget v11, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v11, :pswitch_data_0

    .line 391
    :cond_3
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 345
    :pswitch_0
    int-to-float v11, v9

    iget v12, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v10, v11, v12

    .line 347
    .local v10, x:F
    iget-object v11, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v11, :cond_4

    .line 348
    invoke-static {v10}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v10

    .line 352
    :goto_2
    iget v11, p0, Landroid/widget/Scroller;->mStartX:I

    iget v12, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 353
    iget v11, p0, Landroid/widget/Scroller;->mStartY:I

    iget v12, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 350
    :cond_4
    iget-object v11, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_2

    .line 356
    .end local v10           #x:F
    :pswitch_1
    int-to-float v11, v9

    iget v12, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 357
    .local v6, t:F
    const/high16 v11, 0x42c8

    mul-float/2addr v11, v6

    float-to-int v5, v11

    .line 358
    .local v5, index:I
    int-to-float v11, v5

    const/high16 v12, 0x42c8

    div-float v7, v11, v12

    .line 359
    .local v7, t_inf:F
    add-int/lit8 v11, v5, 0x1

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float v8, v11, v12

    .line 360
    .local v8, t_sup:F
    sget-object v11, Landroid/widget/Scroller;->SPLINE:[F

    aget v2, v11, v5

    .line 361
    .local v2, d_inf:F
    sget-object v11, Landroid/widget/Scroller;->SPLINE:[F

    add-int/lit8 v12, v5, 0x1

    aget v3, v11, v12

    .line 362
    .local v3, d_sup:F
    sub-float v11, v6, v7

    sub-float v12, v8, v7

    div-float/2addr v11, v12

    sub-float v12, v3, v2

    mul-float/2addr v11, v12

    add-float v4, v2, v11

    .line 364
    .local v4, distanceCoef:F
    iget v11, p0, Landroid/widget/Scroller;->mStartX:I

    iget v12, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v13, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 366
    iget v11, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v12, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 367
    iget v11, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v12, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 369
    iget v11, p0, Landroid/widget/Scroller;->mStartY:I

    iget v12, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v13, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 371
    iget v11, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v12, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 372
    iget v11, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v12, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 374
    iget v11, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v12, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v11, v12, :cond_3

    iget v11, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v12, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v11, v12, :cond_3

    .line 375
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 382
    .end local v2           #d_inf:F
    .end local v3           #d_sup:F
    .end local v4           #distanceCoef:F
    .end local v5           #index:I
    .end local v6           #t:F
    .end local v7           #t_inf:F
    .end local v8           #t_sup:F
    :cond_5
    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v11, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 383
    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v11, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 384
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 386
    sget-boolean v11, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v11, :cond_3

    .line 387
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/Scroller;->isNormalFlick:Z

    goto/16 :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 590
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 591
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 592
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 593
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 594
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 25
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Scroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Scroller;->mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v12

    .line 504
    .local v12, oldVel:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v5, v0

    .line 505
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 506
    .local v6, dy:F
    mul-float v17, v5, v5

    mul-float v18, v6, v6

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 508
    .local v7, hyp:F
    div-float v10, v5, v7

    .line 509
    .local v10, ndx:F
    div-float v11, v6, v7

    .line 511
    .local v11, ndy:F
    mul-float v13, v10, v12

    .line 512
    .local v13, oldVelocityX:F
    mul-float v14, v11, v12

    .line 513
    .local v14, oldVelocityY:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 515
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 516
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    .line 520
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v7           #hyp:F
    .end local v10           #ndx:F
    .end local v11           #ndy:F
    .end local v12           #oldVel:F
    .end local v13           #oldVelocityX:F
    .end local v14           #oldVelocityY:F
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMode:I

    .line 521
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Scroller;->mFinished:Z

    .line 523
    mul-int v17, p3, p3

    mul-int v18, p4, p4

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 525
    .local v16, velocity:F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mVelocity:F

    .line 526
    sget v17, Landroid/widget/Scroller;->START_TENSION:F

    mul-float v17, v17, v16

    sget v18, Landroid/widget/Scroller;->ALPHA:F

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 527
    .local v8, l:D
    const-wide v17, 0x408f400000000000L

    sget v19, Landroid/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff0

    sub-double v19, v19, v21

    div-double v19, v8, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mDuration:I

    .line 528
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/Scroller;->mStartTime:J

    .line 529
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartX:I

    .line 530
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartY:I

    .line 532
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1

    const/high16 v3, 0x3f80

    .line 533
    .local v3, coeffX:F
    :goto_0
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_2

    const/high16 v4, 0x3f80

    .line 535
    .local v4, coeffY:F
    :goto_1
    sget v17, Landroid/widget/Scroller;->ALPHA:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sget v19, Landroid/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sget v21, Landroid/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff0

    sub-double v21, v21, v23

    div-double v19, v19, v21

    mul-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v15, v0

    .line 538
    .local v15, totalDistance:I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    .line 539
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    .line 540
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    .line 541
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    .line 543
    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 548
    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 552
    return-void

    .line 532
    .end local v3           #coeffX:F
    .end local v4           #coeffY:F
    .end local v15           #totalDistance:I
    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v3, v17, v16

    goto/16 :goto_0

    .line 533
    .restart local v3       #coeffX:F
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 176
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 177
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 213
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 635
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 613
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 614
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 616
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 626
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 627
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 629
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 151
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 409
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 410
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 9
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/high16 v8, 0x41b0

    const/high16 v7, 0x4150

    const v6, 0x3fa66666

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    iput v4, p0, Landroid/widget/Scroller;->mMode:I

    .line 427
    iput-boolean v4, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 428
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 429
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 430
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 431
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 432
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 433
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 434
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 435
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 438
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v0, :cond_2

    .line 439
    iput-boolean v5, p0, Landroid/widget/Scroller;->isNormalFlick:Z

    .line 441
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v0, v0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget-wide v0, v0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iput v4, v0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 443
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 444
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v0, v0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    .line 445
    iput v5, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 446
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->getTimeDiff()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    .line 447
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_3

    .line 448
    iput v5, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 449
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    .line 450
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDuration:I

    .line 472
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->reset()V

    .line 476
    :cond_2
    const/high16 v0, 0x3f80

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 477
    return-void

    .line 453
    :cond_3
    iput v4, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 454
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->allReset()V

    goto :goto_0

    .line 457
    :cond_4
    iput v4, p0, Landroid/widget/Scroller;->flingComputeMode:I

    goto :goto_0

    .line 460
    :cond_5
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->getTimeDiff()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    .line 461
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_6

    .line 462
    iput v5, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 463
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    .line 464
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDuration:I

    goto :goto_0

    .line 467
    :cond_6
    iput v4, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 468
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->allReset()V

    goto :goto_0
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 602
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
