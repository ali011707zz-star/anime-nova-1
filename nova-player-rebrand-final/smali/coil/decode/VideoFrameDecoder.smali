.class public final Lcoil/decode/VideoFrameDecoder;
.super Ljava/lang/Object;
.source "VideoFrameDecoder.kt"

# interfaces
.implements Lcoil/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/VideoFrameDecoder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/decode/VideoFrameDecoder$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final delegate:Lcoil/decode/VideoFrameDecoderDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/decode/VideoFrameDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/decode/VideoFrameDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/decode/VideoFrameDecoder;->Companion:Lcoil/decode/VideoFrameDecoder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/decode/VideoFrameDecoder;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Lcoil/decode/VideoFrameDecoderDelegate;

    invoke-direct {v0, p1}, Lcoil/decode/VideoFrameDecoderDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcoil/decode/VideoFrameDecoder;->delegate:Lcoil/decode/VideoFrameDecoderDelegate;

    return-void
.end method


# virtual methods
.method public decode(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 33
    iget-object p5, p0, Lcoil/decode/VideoFrameDecoder;->context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p5

    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "tmp"

    const/4 v1, 0x0

    invoke-static {v0, v1, p5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p5

    .line 36
    :try_start_0
    const-string v0, "tempFile"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p5, v0, v2, v1}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p2, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 38
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :try_start_4
    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcoil/decode/VideoFrameDecoder;->delegate:Lcoil/decode/VideoFrameDecoderDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcoil/decode/VideoFrameDecoderDelegate;->decode(Lcoil/bitmap/BitmapPool;Landroid/media/MediaMetadataRetriever;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    :try_start_5
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 43
    :try_start_6
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p1

    goto :goto_0

    :catchall_3
    move-exception p1

    .line 36
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p3

    :try_start_8
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_0
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p3

    :try_start_a
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 46
    :goto_1
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method public handles(Lokio/BufferedSource;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 24
    const-string v2, "video/"

    invoke-static {p2, v2, p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
