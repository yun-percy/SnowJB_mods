.class public final Landroid/provider/Telephony$SpamNum;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpamNum"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SPAMNUM_BYMSG_IDS:Landroid/net/Uri; = null

.field public static final SpamNumber:Ljava/lang/String; = "spam_number"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7262
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "spamnumber"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SpamNum;->CONTENT_URI:Landroid/net/Uri;

    .line 7264
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "sapmnumids"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SpamNum;->SPAMNUM_BYMSG_IDS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSpamnumToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "spam_number"

    .prologue
    .line 7270
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 7271
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "spam_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7272
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static deleteSpamnumToUri(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 7283
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateSpamnumToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "spam_number"

    .prologue
    const/4 v2, 0x0

    .line 7277
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 7278
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "spam_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7279
    invoke-virtual {p0, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
