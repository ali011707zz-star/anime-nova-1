.class public final Lcoil/fetch/FileFetcher;
.super Ljava/lang/Object;
.source "FileFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# instance fields
.field private final addLastModifiedToFileCacheKey:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcoil/fetch/FileFetcher;->addLastModifiedToFileCacheKey:Z

    return-void
.end method


# virtual methods
.method public fetch(Lcoil/bitmap/BitmapPool;Ljava/io/File;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    new-instance p1, Lcoil/fetch/SourceResult;

    .line 25
    invoke-static {p2}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object p3

    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p3

    .line 26
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p4

    invoke-static {p2}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    sget-object p4, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 24
    invoke-direct {p1, p3, p2, p4}, Lcoil/fetch/SourceResult;-><init>(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object p1
.end method

.method public bridge synthetic fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcoil/fetch/FileFetcher;->fetch(Lcoil/bitmap/BitmapPool;Ljava/io/File;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/File;)Z
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcoil/fetch/Fetcher$DefaultImpls;->handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcoil/fetch/FileFetcher;->handles(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public key(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-boolean v0, p0, Lcoil/fetch/FileFetcher;->addLastModifiedToFileCacheKey:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcoil/fetch/FileFetcher;->key(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
