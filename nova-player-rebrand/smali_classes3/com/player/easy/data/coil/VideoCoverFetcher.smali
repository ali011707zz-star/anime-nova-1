.class public final Lcom/player/easy/data/coil/VideoCoverFetcher;
.super Ljava/lang/Object;
.source "VideoCoverFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil/fetch/Fetcher;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0016J.\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/player/easy/data/coil/VideoCoverFetcher;",
        "Lcoil/fetch/Fetcher;",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "coverCache",
        "Lcom/player/easy/data/CoverCache;",
        "getCoverCache",
        "()Lcom/player/easy/data/CoverCache;",
        "coverCache$delegate",
        "Lkotlin/Lazy;",
        "delegate",
        "Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;",
        "key",
        "",
        "data",
        "fetch",
        "Lcoil/fetch/FetchResult;",
        "pool",
        "Lcoil/bitmap/BitmapPool;",
        "size",
        "Lcoil/size/Size;",
        "options",
        "Lcoil/decode/Options;",
        "(Lcoil/bitmap/BitmapPool;Lcom/player/easy/ui/videos/VideoStore;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fileLoader",
        "file",
        "Ljava/io/File;",
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
        "SMAP\nVideoCoverFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoCoverFetcher.kt\ncom/player/easy/data/coil/VideoCoverFetcher\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n*L\n1#1,85:1\n17#2:86\n*S KotlinDebug\n*F\n+ 1 VideoCoverFetcher.kt\ncom/player/easy/data/coil/VideoCoverFetcher\n*L\n29#1:86\n*E\n"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final coverCache$delegate:Lkotlin/Lazy;

.field private final delegate:Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->context:Landroid/content/Context;

    .line 86
    sget-object v0, Lcom/player/easy/data/coil/VideoCoverFetcher$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/data/coil/VideoCoverFetcher$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->coverCache$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;

    invoke-direct {v0, p1}, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->delegate:Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;

    return-void
.end method

.method private final fileLoader(Ljava/io/File;)Lcoil/fetch/FetchResult;
    .locals 3

    .line 78
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 79
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    .line 81
    sget-object v1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 78
    const-string v2, "image/*"

    invoke-direct {v0, p1, v2, v1}, Lcoil/fetch/SourceResult;-><init>(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object v0
.end method

.method private final getCoverCache()Lcom/player/easy/data/CoverCache;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->coverCache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/CoverCache;

    return-object v0
.end method


# virtual methods
.method public fetch(Lcoil/bitmap/BitmapPool;Lcom/player/easy/ui/videos/VideoStore;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/bitmap/BitmapPool;",
            "Lcom/player/easy/ui/videos/VideoStore;",
            "Lcoil/size/Size;",
            "Lcoil/decode/Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    new-instance p5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/player/easy/ui/videos/VideoStore;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 47
    invoke-direct {p0}, Lcom/player/easy/data/coil/VideoCoverFetcher;->getCoverCache()Lcom/player/easy/data/CoverCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/player/easy/data/CoverCache;->getCoverFile(Lcom/player/easy/ui/videos/VideoStore;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcoil/decode/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p2}, Lcom/player/easy/data/coil/VideoCoverFetcher;->fileLoader(Ljava/io/File;)Lcoil/fetch/FetchResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p5}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->delegate:Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;

    invoke-virtual {v0, p1, p5, p3, p4}, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->decode(Lcoil/bitmap/BitmapPool;Landroid/media/MediaMetadataRetriever;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/decode/DecodeResult;->component1()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcoil/decode/DecodeResult;->component2()Z

    move-result p1

    .line 55
    invoke-virtual {p4}, Lcoil/decode/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p3

    invoke-virtual {p3}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 57
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    move-result p4

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 58
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 59
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 62
    :cond_2
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p3, p2, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p2, 0x0

    .line 62
    :try_start_3
    invoke-static {p4, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_5
    invoke-static {p4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 67
    :cond_3
    :goto_0
    new-instance p2, Lcoil/fetch/DrawableResult;

    .line 70
    sget-object p3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 67
    invoke-direct {p2, v0, p1, p3}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    invoke-virtual {p5}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p2

    .line 47
    :cond_4
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No cover specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    :goto_1
    invoke-virtual {p5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method public bridge synthetic fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p2, Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual/range {p0 .. p5}, Lcom/player/easy/data/coil/VideoCoverFetcher;->fetch(Lcoil/bitmap/BitmapPool;Lcom/player/easy/ui/videos/VideoStore;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/player/easy/data/coil/VideoCoverFetcher;->context:Landroid/content/Context;

    return-object v0
.end method

.method public bridge handles(Lcom/player/easy/ui/videos/VideoStore;)Z
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcoil/fetch/Fetcher$DefaultImpls;->handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {p0, p1}, Lcom/player/easy/data/coil/VideoCoverFetcher;->handles(Lcom/player/easy/ui/videos/VideoStore;)Z

    move-result p1

    return p1
.end method

.method public key(Lcom/player/easy/ui/videos/VideoStore;)Ljava/lang/String;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 27
    check-cast p1, Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {p0, p1}, Lcom/player/easy/data/coil/VideoCoverFetcher;->key(Lcom/player/easy/ui/videos/VideoStore;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
