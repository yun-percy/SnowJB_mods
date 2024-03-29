.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I = null

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "parent=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x2710

.field private static final IMAGE_CACHE_VERSION:I = 0x3

.field static final IMAGE_PROPERTIES:[I = null

.field private static final IMAGE_THUMBNAIL_ID_WHERE:Ljava/lang/String; = "image_id=?"

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_WHERE:Ljava/lang/String; = "format=?"

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I = null

.field private static final VIDEO_THUMBNAIL_ID_WHERE:Ljava/lang/String; = "video_id=?"

.field private static mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface; = null

.field private static final newMethod:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 98
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "_size"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 579
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 596
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 623
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 656
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 686
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    return-void

    .line 579
    :array_0
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x8t 0xdct 0x0t 0x0t
    .end array-data

    .line 596
    :array_1
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x8t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
    .end array-data

    .line 623
    :array_2
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x8t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x47t 0xdct 0x0t 0x0t
    .end array-data

    .line 656
    :array_3
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x8t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x47t 0xdct 0x0t 0x0t
    .end array-data

    .line 686
    :array_4
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x8t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x47t 0xdct 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"
    .parameter "subDirectories"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 77
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 81
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 152
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 154
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 156
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 158
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 159
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 161
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 162
    if-eqz p4, :cond_2

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move-object/from16 v0, p4

    array-length v2, v0

    .line 167
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 168
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 171
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 178
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 179
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 180
    aget-object v9, p4, v4

    .line 181
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 182
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 188
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 189
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 192
    if-eqz v3, :cond_4

    .line 193
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 199
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 200
    return-void

    .line 195
    .restart local v3       #country:Ljava/lang/String;
    .restart local v7       #language:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 11
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storageId"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    if-eqz p1, :cond_2

    .line 312
    const/4 v7, 0x0

    .line 314
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 316
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 317
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/4 v0, -0x1

    .line 323
    if-eqz v7, :cond_0

    .line 324
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 320
    :catch_0
    move-exception v8

    .line 321
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    if-eqz v7, :cond_2

    .line 324
    .end local v8           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 330
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string/jumbo v0, "storage_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v10}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 340
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_4

    .line 341
    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 323
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 324
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_3
    throw v0

    .line 343
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 345
    .end local v9           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 346
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 323
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_5
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 10
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    if-ne p1, v0, :cond_6

    .line 392
    if-nez p2, :cond_3

    .line 394
    if-nez p3, :cond_1

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 461
    .local v4, whereArgs:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 462
    if-nez v3, :cond_c

    .line 463
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 464
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 482
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 399
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 401
    const/4 p3, 0x0

    .line 403
    :cond_2
    const-string v3, "format=?"

    .line 404
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 410
    const-string/jumbo v3, "parent=?"

    .line 411
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 413
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 415
    const/4 p3, 0x0

    .line 417
    :cond_5
    const-string/jumbo v3, "parent=? AND parent=?"

    .line 418
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 424
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 426
    if-nez p3, :cond_7

    .line 428
    const-string/jumbo v3, "storage_id=?"

    .line 429
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 431
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 433
    const/4 p3, 0x0

    .line 435
    :cond_8
    const-string/jumbo v3, "storage_id=? AND parent=?"

    .line 436
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 441
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 443
    const-string/jumbo v3, "storage_id=? AND format=?"

    .line 444
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 447
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 449
    const/4 p3, 0x0

    .line 451
    :cond_b
    const-string/jumbo v3, "storage_id=? AND format=? AND parent=?"

    .line 452
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 466
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    array-length v0, v4

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v9, v0, [Ljava/lang/String;

    .line 472
    .local v9, newWhereArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v4

    if-ge v7, v0, :cond_d

    .line 473
    aget-object v0, v4, v7

    aput-object v0, v9, v7

    .line 472
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 475
    :cond_d
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_e

    .line 476
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v8

    aput-object v0, v9, v7

    .line 475
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 478
    :cond_e
    move-object v4, v9

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 14
    .parameter "handle"

    .prologue
    const/16 v13, 0x2002

    const/4 v0, 0x1

    .line 1074
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1075
    const/4 v11, 0x0

    .line 1076
    .local v11, path:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1078
    .local v9, format:I
    const/4 v7, 0x0

    .line 1080
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1082
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1085
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1086
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 1091
    if-eqz v11, :cond_0

    if-nez v9, :cond_4

    .line 1129
    :cond_0
    if-eqz v7, :cond_1

    .line 1130
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v13

    .line 1127
    :cond_2
    :goto_0
    return v0

    .line 1088
    :cond_3
    const/16 v0, 0x2009

    .line 1129
    if-eqz v7, :cond_2

    .line 1130
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1096
    :cond_4
    :try_start_1
    invoke-direct {p0, v11}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1097
    const/16 v0, 0x200d

    .line 1129
    if-eqz v7, :cond_2

    goto :goto_1

    .line 1100
    :cond_5
    const/16 v0, 0x3001

    if-ne v9, v0, :cond_6

    .line 1102
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1103
    .local v12, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v1, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v12, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1110
    .end local v12           #uri:Landroid/net/Uri;
    :cond_6
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    .line 1111
    .restart local v12       #uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v12, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 1112
    const/16 v0, 0x3001

    if-eq v9, v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    .line 1115
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "/"

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1116
    .local v10, parentPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v1, "unhide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v10, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1121
    .end local v10           #parentPath:Ljava/lang/String;
    :cond_7
    :goto_2
    const/16 v0, 0x2001

    .line 1129
    if-eqz v7, :cond_2

    goto/16 :goto_1

    .line 1117
    :catch_0
    move-exception v8

    .line 1118
    .local v8, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to unhide/rescan for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1125
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v12           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 1126
    .restart local v8       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1129
    if-eqz v7, :cond_8

    .line 1130
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v13

    .line 1127
    goto/16 :goto_0

    .line 1123
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_9
    const/16 v0, 0x2009

    .line 1129
    if-eqz v7, :cond_2

    goto/16 :goto_1

    .end local v12           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 1130
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1129
    :cond_a
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 352
    if-eqz p4, :cond_3

    .line 355
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 357
    move-object v2, p1

    .line 358
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 359
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 360
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 375
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 379
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 901
    sparse-switch p1, :sswitch_data_0

    .line 926
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 905
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 907
    .local v3, length:I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 908
    const/16 v3, 0xff

    .line 910
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 911
    aput-char v10, p3, v3

    move v6, v7

    .line 912
    goto :goto_0

    .line 916
    .end local v3           #length:I
    .end local v4           #value:Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 918
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 919
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 920
    .local v1, height:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, imageSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 922
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 923
    goto :goto_0

    .line 901
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_3

    .line 516
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 521
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_0
    :goto_0
    return v2

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    if-eqz v0, :cond_1

    .line 522
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 522
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_2
    throw v2

    :cond_3
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 11
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    .line 1032
    if-nez p1, :cond_1

    .line 1034
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1035
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 1036
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p3, v0

    .line 1037
    const/4 v0, 0x1

    const-wide/16 v1, 0x3001

    aput-wide v1, p3, v0

    .line 1038
    const/16 v0, 0x2001

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 1040
    :cond_1
    const/4 v7, 0x0

    .line 1042
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1044
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1046
    .local v10, path:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1047
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 1048
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1050
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1051
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v9, outFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1054
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getObjectFilePath() : There is no file size on mediaDB!! file path ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .end local v9           #outFile:Ljava/io/File;
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    const/16 v0, 0x2001

    .line 1067
    if-eqz v7, :cond_0

    .line 1068
    .end local v10           #path:Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1061
    :cond_3
    const/16 v0, 0x2009

    .line 1067
    if-eqz v7, :cond_0

    goto :goto_1

    .line 1063
    :catch_0
    move-exception v8

    .line 1064
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    const/16 v0, 0x2002

    .line 1067
    if-eqz v7, :cond_0

    goto :goto_1

    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1068
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1067
    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 20
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 946
    const/4 v11, 0x0

    .line 948
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 950
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 951
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, p2, v3

    .line 952
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, p2, v3

    .line 953
    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, p2, v3

    .line 956
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 957
    .local v18, path:Ljava/lang/String;
    const/16 v3, 0x2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 958
    .local v16, lastSlash:I
    if-ltz v16, :cond_5

    add-int/lit8 v19, v16, 0x1

    .line 959
    .local v19, start:I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v14

    .line 960
    .local v14, end:I
    sub-int v3, v14, v19

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    .line 961
    move/from16 v0, v19

    add-int/lit16 v14, v0, 0xff

    .line 963
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 964
    sub-int v3, v14, v19

    const/4 v4, 0x0

    aput-char v4, p3, v3

    .line 966
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 967
    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 969
    const/4 v10, 0x0

    .line 970
    .local v10, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    aget v3, p2, v3

    sparse-switch v3, :sswitch_data_0

    .line 995
    :cond_1
    :goto_1
    if-eqz v10, :cond_3

    .line 996
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 998
    .local v17, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1000
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1002
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1003
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 1004
    .local v12, data:[B
    array-length v3, v12

    const v4, 0x4b000

    if-gt v3, v4, :cond_2

    .line 1007
    sget-object v3, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-eqz v3, :cond_2

    .line 1008
    sget-object v3, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v4, v12}, Landroid/mtp/ILgeMtpInterface;->putImageData(Ljava/lang/String;I[B)V

    .line 1011
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, p2, v3

    .line 1012
    const/4 v3, 0x4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    aput v4, p2, v3

    .line 1013
    const/4 v3, 0x5

    array-length v4, v12

    aput v4, p2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1019
    .end local v12           #data:[B
    .end local v17           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 1024
    if-eqz v11, :cond_4

    .line 1025
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1028
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #end:I
    .end local v16           #lastSlash:I
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #start:I
    :cond_4
    :goto_3
    return v3

    .line 958
    .restart local v16       #lastSlash:I
    .restart local v18       #path:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    goto :goto_0

    .line 978
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #end:I
    .restart local v19       #start:I
    :sswitch_0
    const/4 v3, 0x0

    :try_start_2
    aget-wide v3, p4, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 979
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1

    .line 986
    :sswitch_1
    sget-object v3, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-eqz v3, :cond_1

    .line 988
    const/4 v3, 0x0

    aget-wide v3, p4, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 989
    sget-object v3, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v4}, Landroid/mtp/ILgeMtpInterface;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1

    .line 1014
    .restart local v17       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v15

    .line 1015
    .local v15, ex:Ljava/io/IOException;
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1021
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #end:I
    .end local v15           #ex:Ljava/io/IOException;
    .end local v16           #lastSlash:I
    .end local v17           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #start:I
    :catch_1
    move-exception v13

    .line 1022
    .local v13, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MtpDatabase"

    const-string v4, "RemoteException in getObjectInfo"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1024
    if-eqz v11, :cond_6

    .line 1025
    .end local v13           #e:Landroid/os/RemoteException;
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1028
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 1024
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_7

    .line 1025
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_7
    throw v3

    :cond_8
    if-eqz v11, :cond_6

    goto :goto_4

    .line 970
    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_0
        0x300b -> :sswitch_0
        0x300c -> :sswitch_0
        0x3801 -> :sswitch_1
        0x3804 -> :sswitch_1
        0x3807 -> :sswitch_1
        0x380b -> :sswitch_1
        0xb981 -> :sswitch_0
        0xb982 -> :sswitch_0
        0xb984 -> :sswitch_0
    .end sparse-switch
.end method

.method private getObjectList(III)[I
    .locals 8
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 489
    if-nez v0, :cond_2

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 508
    :cond_1
    :goto_0
    return-object v4

    .line 492
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 493
    .local v1, count:I
    if-lez v1, :cond_6

    .line 494
    new-array v4, v1, [I

    .line 495
    .local v4, result:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 496
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 497
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 501
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #result:[I
    :catch_0
    move-exception v2

    .line 502
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    if-eqz v0, :cond_3

    .line 505
    .end local v2           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v5

    .line 508
    goto :goto_0

    .line 504
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_4
    throw v5

    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #result:[I
    :cond_5
    if-eqz v0, :cond_1

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 504
    .end local v3           #i:I
    .end local v4           #result:[I
    :cond_6
    if-eqz v0, :cond_3

    goto :goto_2
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 5
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 776
    if-eqz p6, :cond_0

    .line 777
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 797
    :goto_0
    return-object v2

    .line 781
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 782
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 783
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 784
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 785
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 786
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .end local v1           #propertyList:[I
    :cond_1
    :goto_1
    long-to-int v2, p1

    invoke-virtual {v0, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 789
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 790
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 791
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 792
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 793
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 13
    .parameter "handle"

    .prologue
    const/4 v12, 0x0

    .line 1136
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1137
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1139
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1140
    if-nez v7, :cond_2

    .line 1155
    if-eqz v7, :cond_0

    .line 1156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v12

    .line 1159
    :cond_1
    :goto_0
    return-object v11

    .line 1143
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1144
    .local v8, count:I
    if-lez v8, :cond_6

    .line 1145
    new-array v11, v8, [I

    .line 1146
    .local v11, result:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_5

    .line 1147
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1148
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1146
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1152
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #result:[I
    :catch_0
    move-exception v9

    .line 1153
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectList"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1155
    if-eqz v7, :cond_3

    .line 1156
    .end local v9           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v12

    .line 1159
    goto :goto_0

    .line 1155
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_4
    throw v0

    .restart local v8       #count:I
    .restart local v10       #i:I
    .restart local v11       #result:[I
    :cond_5
    if-eqz v7, :cond_1

    .line 1156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1155
    .end local v10           #i:I
    .end local v11           #result:[I
    :cond_6
    if-eqz v7, :cond_3

    goto :goto_2
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .parameter "format"

    .prologue
    .line 736
    sparse-switch p1, :sswitch_data_0

    .line 760
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 742
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 751
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 756
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 758
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 529
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0x1t 0xb9t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
        0x6t 0xb9t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xct 0x30t 0x0t 0x0t
        0x4t 0x38t 0x0t 0x0t
        0x83t 0xbat 0x0t 0x0t
        0x85t 0xbat 0x0t 0x0t
        0x86t 0xbat 0x0t 0x0t
    .end array-data
.end method

.method private getThumbnailData(I[B[I)I
    .locals 13
    .parameter "handle"
    .parameter "outData"
    .parameter "length"

    .prologue
    .line 1266
    const/4 v7, 0x0

    .line 1268
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1271
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1272
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1273
    .local v12, path:Ljava/lang/String;
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HAN] getThumbnailData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v10, 0x0

    .line 1276
    .local v10, getData:Z
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-eqz v0, :cond_0

    .line 1277
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v12, v1}, Landroid/mtp/ILgeMtpInterface;->getImageData(Ljava/lang/String;I)Z

    move-result v10

    .line 1279
    :cond_0
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    .line 1283
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    invoke-interface {v0}, Landroid/mtp/ILgeMtpInterface;->getImageData()[B

    move-result-object v8

    .line 1284
    .local v8, data:[B
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    invoke-interface {v0}, Landroid/mtp/ILgeMtpInterface;->getImageDataOffset()I

    move-result v11

    .line 1285
    .local v11, offset:I
    const/4 v0, 0x0

    array-length v1, v8

    sub-int/2addr v1, v11

    invoke-static {v8, v11, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1286
    const/4 v0, 0x0

    array-length v1, v8

    aput v1, p3, v0

    .line 1287
    const/4 v0, 0x1

    aput v11, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    const/16 v0, 0x2001

    .line 1301
    if-eqz v7, :cond_1

    .line 1302
    .end local v8           #data:[B
    .end local v10           #getData:Z
    .end local v11           #offset:I
    .end local v12           #path:Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1299
    :cond_1
    return v0

    .line 1292
    .restart local v10       #getData:Z
    .restart local v12       #path:Ljava/lang/String;
    :cond_2
    const/16 v0, 0x2009

    .line 1301
    if-eqz v7, :cond_1

    goto :goto_0

    .line 1295
    .end local v10           #getData:Z
    .end local v12           #path:Ljava/lang/String;
    :cond_3
    const/16 v0, 0x2009

    .line 1301
    if-eqz v7, :cond_1

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v9

    .line 1298
    .local v9, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    const/16 v0, 0x2002

    .line 1301
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1302
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1301
    :cond_4
    throw v0
.end method

.method private getThumbnailFilePath(IZ[C)I
    .locals 12
    .parameter "handle"
    .parameter "isVideo"
    .parameter "outFilePath"

    .prologue
    .line 1223
    if-nez p1, :cond_1

    .line 1225
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1226
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p3, v0

    .line 1227
    const/16 v0, 0x2001

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1229
    :cond_1
    const/4 v7, 0x0

    .line 1233
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1235
    const/4 v10, 0x0

    .line 1237
    .local v10, mBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1238
    const/4 v8, 0x0

    .line 1239
    .local v8, cacheData:Z
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1241
    .local v11, path:Ljava/lang/String;
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-eqz v0, :cond_2

    .line 1242
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v11, v1}, Landroid/mtp/ILgeMtpInterface;->checkImageData(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1244
    :cond_2
    const/4 v0, 0x1

    if-ne v8, v0, :cond_3

    .line 1245
    const/16 v0, 0x2001

    .line 1257
    if-eqz v7, :cond_0

    .line 1258
    .end local v8           #cacheData:Z
    .end local v10           #mBitmap:Landroid/graphics/Bitmap;
    .end local v11           #path:Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1247
    .restart local v8       #cacheData:Z
    .restart local v10       #mBitmap:Landroid/graphics/Bitmap;
    .restart local v11       #path:Ljava/lang/String;
    :cond_3
    const/16 v0, 0x2002

    .line 1257
    if-eqz v7, :cond_0

    goto :goto_1

    .line 1249
    .end local v8           #cacheData:Z
    .end local v11           #path:Ljava/lang/String;
    :cond_4
    const/16 v0, 0x2009

    .line 1257
    if-eqz v7, :cond_0

    goto :goto_1

    .line 1253
    .end local v10           #mBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 1254
    .local v9, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    const/16 v0, 0x2002

    .line 1257
    if-eqz v7, :cond_0

    goto :goto_1

    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_5
    throw v0
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 276
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_2
    const/4 v0, 0x0

    .line 280
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 281
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 282
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 283
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 284
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    const/4 v0, 0x1

    .line 281
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 239
    const-string v10, "device-properties"

    .line 240
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 241
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 243
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 249
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_4

    .line 251
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 253
    if-eqz v8, :cond_4

    .line 254
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 255
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 258
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 264
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_0
    if-eqz v0, :cond_1

    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 269
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 271
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 260
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_5
    if-eqz v0, :cond_1

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 266
    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 298
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 19
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 801
    const/4 v9, 0x0

    .line 804
    .local v9, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 805
    .local v15, path:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 807
    .local v6, whereArgs:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 808
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 815
    :cond_0
    if-eqz v9, :cond_1

    .line 816
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 819
    :cond_1
    if-nez v15, :cond_4

    .line 820
    const/16 v2, 0x2009

    .line 886
    :cond_2
    :goto_0
    return v2

    .line 811
    :catch_0
    move-exception v10

    .line 812
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectFilePath"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    const/16 v2, 0x2002

    .line 815
    if-eqz v9, :cond_2

    .line 816
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 815
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 816
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_3
    throw v2

    .line 824
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 825
    const/16 v2, 0x200d

    goto :goto_0

    .line 829
    :cond_5
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .local v14, oldFile:Ljava/io/File;
    const/16 v2, 0x2f

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 831
    .local v11, lastSlash:I
    const/4 v2, 0x1

    if-gt v11, v2, :cond_6

    .line 832
    const/16 v2, 0x2002

    goto :goto_0

    .line 834
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 835
    .local v13, newPath:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    .local v12, newFile:Ljava/io/File;
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 837
    .local v16, success:Z
    if-nez v16, :cond_7

    .line 838
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/16 v2, 0x2002

    goto/16 :goto_0

    .line 843
    :cond_7
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 844
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v2, "_display_name"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/16 v17, 0x0

    .line 852
    .local v17, updated:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v4, "_id=?"

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0, v4, v6}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    .line 856
    :goto_1
    if-nez v17, :cond_8

    .line 857
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 860
    const/16 v2, 0x2002

    goto/16 :goto_0

    .line 853
    :catch_1
    move-exception v10

    .line 854
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in mMediaProvider.update"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 864
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 866
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "."

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 869
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v13, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 886
    :cond_9
    :goto_2
    const/16 v2, 0x2001

    goto/16 :goto_0

    .line 870
    :catch_2
    move-exception v10

    .line 871
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 876
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_a
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 879
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v3, "unhide"

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 880
    :catch_3
    move-exception v10

    .line 881
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1206
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-eqz v0, :cond_0

    .line 1208
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/mtp/ILgeMtpInterface;->removeFiles(Landroid/content/Context;)V

    .line 1209
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    .line 1213
    :cond_0
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1217
    :cond_1
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "session end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void
.end method

.method private sessionStarted()V
    .locals 6

    .prologue
    .line 1183
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "session start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-nez v0, :cond_0

    .line 1189
    invoke-static {}, Landroid/mtp/LgeMtpInterfaceManager;->getInterface()Landroid/mtp/ILgeMtpInterface;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    .line 1191
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v2, "imgcache"

    const/16 v3, 0x2710

    const/high16 v4, 0xc80

    const/4 v5, 0x3

    invoke-interface/range {v0 .. v5}, Landroid/mtp/ILgeMtpInterface;->makeCache(Landroid/content/Context;Ljava/lang/String;III)Z

    .line 1199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1200
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 931
    packed-switch p1, :pswitch_data_0

    .line 941
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 935
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 936
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 937
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 891
    packed-switch p2, :pswitch_data_0

    .line 896
    const v0, 0xa80a

    :goto_0
    return v0

    .line 893
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 9
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 1163
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1164
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1165
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 1166
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1167
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1168
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    aput-object v4, v5, v2

    .line 1167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1173
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v6, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1174
    const/16 v6, 0x2001

    .line 1179
    :goto_1
    return v6

    .line 1176
    :catch_0
    move-exception v1

    .line 1177
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 223
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "MtpDatabase"

    const-string v1, "[HAN] call finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/mtp/ILgeMtpInterface;->removeFiles(Landroid/content/Context;)V

    .line 211
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->mLgeMtpInterface:Landroid/mtp/ILgeMtpInterface;

    .line 216
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isExistingStorage(Landroid/mtp/MtpStorage;)Z
    .locals 2
    .parameter "storage"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method
