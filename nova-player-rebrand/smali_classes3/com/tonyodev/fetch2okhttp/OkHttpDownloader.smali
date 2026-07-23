.class public Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;
.super Ljava/lang/Object;
.source "OkHttpDownloader.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/Downloader;


# instance fields
.field private volatile client:Lokhttp3/OkHttpClient;

.field private final connections:Ljava/util/Map;

.field private final fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 1

    const-string v0, "fileDownloaderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;-><init>(Lokhttp3/OkHttpClient;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 2

    const-string v0, "fileDownloaderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "synchronizedMap(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 34
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x3a98

    .line 35
    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/tonyodev/fetch2okhttp/OkHttpUtils;->getDefaultCookieJar()Lokhttp3/CookieJar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final closeResponse(Lokhttp3/Response;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private final getRedirectedServerRequest(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 14

    .line 54
    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    .line 55
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getId()I

    move-result v1

    .line 56
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 58
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    .line 60
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getIdentifier()J

    move-result-wide v7

    .line 62
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v9

    .line 63
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v10

    const/4 v11, 0x1

    .line 66
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getSegment()I

    move-result v13

    move-object/from16 v12, p2

    .line 54
    invoke-direct/range {v0 .. v13}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Response;

    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->closeResponse(Lokhttp3/Response;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Response;

    .line 147
    iget-object v1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->closeResponse(Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 12

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interruptMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p2, p1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onPreClientExecute(Lokhttp3/OkHttpClient;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/Request;

    move-result-object p2

    .line 71
    const-string v0, "Referer"

    invoke-virtual {p2, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 74
    invoke-virtual {p2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    .line 79
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12f

    if-ne v2, v3, :cond_4

    .line 82
    :cond_1
    const-string v3, "Location"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 83
    iget-object v2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/OkHttpClient;

    .line 84
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 83
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->getRedirectedServerRequest(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onPreClientExecute(Lokhttp3/OkHttpClient;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/Request;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 92
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 94
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Failed executing request."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    iget-object p2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    .line 98
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    :cond_4
    move-object v8, v1

    move v1, v2

    .line 101
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    const-wide/16 v3, -0x1

    .line 102
    invoke-static {v8, v3, v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getContentLengthFromHeader(Ljava/util/Map;J)J

    move-result-wide v3

    .line 103
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_5
    move-object v11, v5

    :goto_1
    if-nez v2, :cond_6

    const/4 v0, 0x0

    .line 105
    invoke-static {v11, v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v5

    :cond_6
    move-object v10, v5

    .line 110
    invoke-static {v8}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->getContentHash(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-static {v1, v8}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->acceptRanges(ILjava/util/Map;)Z

    move-result v9

    .line 114
    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$Response;

    const/4 v5, 0x0

    move-object v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    .line 125
    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$Response;

    move-object v5, v11

    invoke-direct/range {v0 .. v10}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getContentHash(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "responseHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const-string v0, "Content-MD5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getFileSlicingCount(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;J)Ljava/lang/Integer;
    .locals 0

    .line 0
    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z
    .locals 1

    .line 0
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I
    .locals 1

    .line 0
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x2000

    return p1
.end method

.method public getRequestFileDownloaderType(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/Set;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "supportedFileDownloaderTypes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p1
.end method

.method public getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    sget-object v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 201
    new-array p1, v3, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    aput-object v0, p1, v2

    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 206
    :catch_0
    iget-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    new-array v0, v3, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    aput-object p1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public onPreClientExecute(Lokhttp3/OkHttpClient;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/Request;
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 45
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 211
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 1

    .line 0
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileMd5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
