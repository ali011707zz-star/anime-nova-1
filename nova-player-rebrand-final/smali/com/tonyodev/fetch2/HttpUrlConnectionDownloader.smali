.class public Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;
.super Ljava/lang/Object;
.source "HttpUrlConnectionDownloader.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
    }
.end annotation


# instance fields
.field private final connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

.field private final connections:Ljava/util/Map;

.field private final cookieManager:Ljava/net/CookieManager;

.field private final fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 1

    const-string v0, "fileDownloaderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-direct {p1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "synchronizedMap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getDefaultCookieManager()Ljava/net/CookieManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->cookieManager:Ljava/net/CookieManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    sget-object p2, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method

.method private final disconnectClient(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final getCleanedHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final isResponseOk(I)Z
    .locals 2

    .line 0
    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->disconnectClient(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 139
    iget-object v1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->disconnectClient(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "request"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "interruptMonitor"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, v0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->cookieManager:Ljava/net/CookieManager;

    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 62
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 64
    invoke-virtual {v0, v1, v7}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;

    .line 65
    const-string v3, "Referer"

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 66
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 70
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    const-string v5, "getHeaderFields(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->getCleanedHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 71
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v8, 0x12e

    .line 72
    const-string v9, ""

    if-eq v6, v8, :cond_1

    const/16 v8, 0x12d

    if-eq v6, v8, :cond_1

    const/16 v8, 0x12f

    if-ne v6, v8, :cond_4

    .line 74
    :cond_1
    const-string v8, "Location"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 76
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    new-instance v1, Ljava/net/URL;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v9

    :cond_2
    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 81
    invoke-virtual {v0, v1, v7}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;

    .line 82
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 83
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 87
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->getCleanedHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    :cond_4
    move-object v12, v1

    move-object v13, v4

    move v2, v6

    .line 95
    invoke-direct {v0, v2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->isResponseOk(I)Z

    move-result v1

    const/4 v3, 0x0

    const-wide/16 v10, -0x1

    if-eqz v1, :cond_5

    .line 97
    invoke-static {v13, v10, v11}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getContentLengthFromHeader(Ljava/util/Map;J)J

    move-result-wide v10

    .line 98
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v13}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->getContentHash(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    move-object v14, v1

    move-object v8, v9

    move-wide v9, v10

    move-object v11, v3

    :goto_0
    move v3, v4

    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    move-object v14, v3

    move-object v8, v9

    move-wide v9, v10

    move-object v11, v1

    goto :goto_0

    .line 104
    :goto_1
    invoke-static {v2, v13}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->acceptRanges(ILjava/util/Map;)Z

    move-result v1

    move-wide v15, v9

    move v10, v1

    .line 106
    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$Response;

    .line 113
    invoke-virtual {v12}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-wide v4, v15

    .line 106
    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    .line 117
    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$Response;

    move-object v9, v13

    move-object v6, v14

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 128
    iget-object v2, v0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getContentHash(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "responseHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
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

    .line 168
    iget-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p1
.end method

.method public getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    sget-object v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    new-array p1, v3, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    aput-object v0, p1, v2

    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 200
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 202
    :catch_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    new-array v0, v3, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    aput-object p1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 38
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 39
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getUsesCache()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 40
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getUsesDefaultCache()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 41
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getFollowsRedirect()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 43
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 220
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    .line 172
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileMd5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
