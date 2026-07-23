.class public final Lcom/player/easy/data/CoverCache;
.super Ljava/lang/Object;
.source "CoverCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/CoverCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/player/easy/data/CoverCache;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "cacheDir",
        "Ljava/io/File;",
        "getCoverFile",
        "video",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "deleteFromCache",
        "",
        "clearMemoryCache",
        "",
        "getCacheDir",
        "dir",
        "",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoverCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverCache.kt\ncom/player/easy/data/CoverCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Contexts.kt\ncoil/Contexts\n*L\n1#1,56:1\n1#2:57\n12#3:58\n*S KotlinDebug\n*F\n+ 1 CoverCache.kt\ncom/player/easy/data/CoverCache\n*L\n49#1:58\n*E\n"
    }
.end annotation


# static fields
.field private static final COVERS_DIR:Ljava/lang/String; = "covers"

.field public static final Companion:Lcom/player/easy/data/CoverCache$Companion;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/data/CoverCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/CoverCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/CoverCache;->Companion:Lcom/player/easy/data/CoverCache$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/CoverCache;->context:Landroid/content/Context;

    .line 17
    const-string p1, "covers"

    invoke-direct {p0, p1}, Lcom/player/easy/data/CoverCache;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/CoverCache;->cacheDir:Ljava/io/File;

    return-void
.end method

.method private final getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/player/easy/data/CoverCache;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method


# virtual methods
.method public final clearMemoryCache()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/player/easy/data/CoverCache;->context:Landroid/content/Context;

    .line 58
    invoke-static {v0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcoil/ImageLoader;->getMemoryCache()Lcoil/memory/MemoryCache;

    move-result-object v0

    invoke-interface {v0}, Lcoil/memory/MemoryCache;->clear()V

    return-void
.end method

.method public final deleteFromCache(Lcom/player/easy/ui/videos/VideoStore;)I
    .locals 4

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/player/easy/data/CoverCache;->getCoverFile(Lcom/player/easy/ui/videos/VideoStore;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 41
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cover is deleted"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public final getCoverFile(Lcom/player/easy/ui/videos/VideoStore;)Ljava/io/File;
    .locals 4

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/player/easy/data/CoverCache;->cacheDir:Ljava/io/File;

    sget-object v2, Lcom/player/easy/util/lang/Hash;->INSTANCE:Lcom/player/easy/util/lang/Hash;

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "toString(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/player/easy/util/lang/Hash;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
