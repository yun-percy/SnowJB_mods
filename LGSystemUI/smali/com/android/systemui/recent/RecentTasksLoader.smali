.class public Lcom/android/systemui/recent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"


# static fields
.field private static final DISPLAY_TASKS:I

.field public static LGCAMERA:Ljava/lang/String;

.field private static final MAX_TASKS:I

.field public static QUICKMEMO:Ljava/lang/String;

.field public static mCameraQuickmemoException:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIconBackground:Landroid/graphics/Bitmap;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mNumTasksInFirstScreenful:I

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/recent/TaskDescription;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/lge/systemui/Utils;->getRecnetPanelNum()I

    move-result v0

    sput v0, Lcom/android/systemui/recent/RecentTasksLoader;->DISPLAY_TASKS:I

    .line 51
    sget v0, Lcom/android/systemui/recent/RecentTasksLoader;->DISPLAY_TASKS:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/recent/RecentTasksLoader;->MAX_TASKS:I

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recent/RecentTasksLoader;->mCameraQuickmemoException:Z

    .line 66
    const-string v0, "com.lge.camera"

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->LGCAMERA:Ljava/lang/String;

    .line 67
    const-string v0, "com.lge.QuickClip"

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->QUICKMEMO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 75
    .local v7, res:Landroid/content/res/Resources;
    const/high16 v10, 0x7f08

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 76
    .local v6, isTablet:Z
    if-eqz v6, :cond_0

    .line 77
    const-string v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 79
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    .line 85
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :goto_0
    const/high16 v10, 0x105

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 86
    .local v4, defaultIconSize:I
    iget v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    mul-int/2addr v10, v4

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v5, v10, v11

    .line 87
    .local v5, iconSize:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    .line 90
    const v10, 0x1050002

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 92
    .local v9, thumbnailWidth:I
    const v10, 0x1050001

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 94
    .local v8, thumbnailHeight:I
    const v10, 0x7f0203d3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 96
    .local v3, color:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    .line 98
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    .local v2, c:Landroid/graphics/Canvas;
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 103
    iget-object v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 106
    .local v1, am:Landroid/app/ActivityManager;
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    .line 107
    return-void

    .line 81
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #color:I
    .end local v4           #defaultIconSize:I
    .end local v5           #iconSize:I
    .end local v8           #thumbnailHeight:I
    .end local v9           #thumbnailWidth:I
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/systemui/recent/RecentTasksLoader;->MAX_TASKS:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentTasksLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    return v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "info"
    .parameter "packageManager"

    .prologue
    .line 210
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 215
    .local v2, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 216
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 217
    .local v1, iconId:I
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 221
    .end local v1           #iconId:I
    :goto_1
    return-object v3

    .line 212
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 221
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$2;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 388
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 389
    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnailsAndIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 227
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 231
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 233
    :cond_1
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;
    .locals 12
    .parameter "taskId"
    .parameter "persistentTaskId"
    .parameter "baseIntent"
    .parameter "origActivity"
    .parameter "description"
    .parameter "homeInfo"

    .prologue
    .line 126
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 127
    .local v9, intent:Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 128
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 131
    .local v10, pm:Landroid/content/pm/PackageManager;
    if-nez p6, :cond_1

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    .line 136
    :cond_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    .line 142
    :cond_2
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v10, v9, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 145
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_5

    .line 146
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 148
    .local v8, info:Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_3

    .line 149
    const-string v2, "RecentTasksLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info == null && SKIPPING item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v8, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, title:Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 156
    const-string v2, "RecentTasksLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating activity desc for id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", label="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Lcom/android/systemui/recent/TaskDescription;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 162
    .local v1, item:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {v1, v11}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    .end local v1           #item:Lcom/android/systemui/recent/TaskDescription;
    :cond_4
    const-string v2, "RecentTasksLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SKIPPING item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v8           #info:Landroid/content/pm/ActivityInfo;
    .end local v11           #title:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 201
    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method isTheApp(Ljava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "appname"
    .parameter "baseIntent"
    .parameter "origActivity"

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 394
    .local v0, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 395
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public loadTasksInBackground()V
    .locals 5

    .prologue
    .line 236
    const-string v2, "RecentTasksLoader"

    const-string v3, "loadTasksInBackground is called. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 239
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 241
    .local v1, tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, taskDescriptionsWaitingToLoad:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v2, Lcom/android/systemui/recent/RecentTasksLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 341
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V

    .line 343
    return-void
.end method

.method loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .parameter "td"

    .prologue
    .line 173
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 175
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 176
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget v4, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v3

    .line 177
    .local v3, thumbs:Landroid/app/ActivityManager$TaskThumbnails;
    iget-object v4, p1, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    const-string v4, "RecentTasksLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded bitmap for task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-enter p1

    .line 182
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 183
    iget-object v4, v3, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 187
    :goto_0
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setLoaded(Z)V

    .line 191
    monitor-exit p1

    .line 192
    return-void

    .line 185
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1
    .parameter "recentsPanel"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->numItemsInOneScreenful()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    .line 112
    return-void
.end method
