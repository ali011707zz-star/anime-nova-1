.class public Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
.super Ljava/lang/Object;
.source "HttpUrlConnectionDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpUrlConnectionPreferences"
.end annotation


# instance fields
.field private connectTimeout:I

.field private followsRedirect:Z

.field private readTimeout:I

.field private usesCache:Z

.field private usesDefaultCache:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 211
    iput v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->readTimeout:I

    const/16 v0, 0x3a98

    .line 212
    iput v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->connectTimeout:I

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->followsRedirect:Z

    return-void
.end method


# virtual methods
.method public final getConnectTimeout()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->connectTimeout:I

    return v0
.end method

.method public final getFollowsRedirect()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->followsRedirect:Z

    return v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->readTimeout:I

    return v0
.end method

.method public final getUsesCache()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->usesCache:Z

    return v0
.end method

.method public final getUsesDefaultCache()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->usesDefaultCache:Z

    return v0
.end method
