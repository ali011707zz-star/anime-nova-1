.class public Lcom/tonyodev/fetch2/FetchFileServerDownloader;
.super Ljava/lang/Object;
.source "FetchFileServerDownloader.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/FileServerDownloader;


# instance fields
.field private final connections:Ljava/util/Map;

.field private final fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 1

    const-string v0, "fileDownloaderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "synchronizedMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 28
    sget-object p1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->close()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    .line 126
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->close()V

    :cond_0
    return-void
.end method

.method public execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "request"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "interruptMonitor"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v12, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v12, v1, v3, v1}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;-><init>(Ljava/net/Socket;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    invoke-virtual {v0, v12, v7}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->onPreClientExecute(Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->connect(Ljava/net/SocketAddress;)V

    .line 66
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->getFileRequest()Lcom/tonyodev/fetch2core/server/FileRequest;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->sendFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V

    .line 67
    invoke-interface {v2}, Lcom/tonyodev/fetch2core/InterruptMonitor;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 68
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->receiveFileResponse()Lcom/tonyodev/fetch2core/server/FileResponse;

    move-result-object v2

    move-object v4, v2

    .line 69
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getStatus()I

    move-result v2

    .line 70
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getConnection()I

    move-result v5

    const/16 v6, 0xce

    const/4 v8, 0x0

    if-ne v5, v3, :cond_0

    .line 71
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getType()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getStatus()I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v8

    .line 72
    :goto_0
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getContentLength()J

    move-result-wide v9

    .line 73
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    if-nez v3, :cond_1

    .line 75
    invoke-static {v13, v8}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v11

    :goto_1
    move v14, v5

    move-wide/from16 v18, v9

    move-object v10, v4

    move-wide/from16 v4, v18

    goto :goto_2

    :cond_1
    move-object v11, v1

    goto :goto_1

    .line 79
    :goto_2
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v1

    :try_start_1
    invoke-virtual {v10}, Lcom/tonyodev/fetch2core/server/FileResponse;->getToJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v8, "keys(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 83
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v9, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x1

    goto :goto_3

    :catch_0
    move-object/from16 v16, v1

    .line 88
    :catch_1
    :cond_2
    const-string v1, "Content-MD5"

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 89
    invoke-virtual {v10}, Lcom/tonyodev/fetch2core/server/FileResponse;->getMd5()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_3
    invoke-virtual {v0, v9}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->getContentHash(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eq v2, v6, :cond_6

    .line 93
    const-string v1, "Accept-Ranges"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v1, v16

    :goto_4
    const-string v6, "bytes"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v10, 0x1

    .line 95
    :goto_6
    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$Response;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    .line 106
    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$Response;

    move-object v6, v13

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 117
    iget-object v2, v0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_7
    move-object/from16 v16, v1

    return-object v16
.end method

.method public getContentHash(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "responseHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string v0, "Content-MD5"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

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

    .line 146
    iget-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p1
.end method

.method public getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    :try_start_0
    invoke-static {p1, p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 245
    :catch_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public onPreClientExecute(Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;
    .locals 17

    const-string v0, "client"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 35
    const-string v2, "Range"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "bytes=0-"

    :cond_0
    invoke-static {v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRangeForFetchFileServerRequest(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    .line 36
    const-string v3, "Authorization"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v11, v3

    .line 37
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFetchFileServerPort(Ljava/lang/String;)I

    move-result v3

    .line 38
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFetchFileServerHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Extras;->toMutableExtras()Lcom/tonyodev/fetch2core/MutableExtras;

    move-result-object v13

    .line 40
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    .line 249
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v7, v6}, Lcom/tonyodev/fetch2core/MutableExtras;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    new-instance v5, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    invoke-direct {v5}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;-><init>()V

    .line 44
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->setInetSocketAddress(Ljava/net/InetSocketAddress;)V

    .line 45
    new-instance v4, Lcom/tonyodev/fetch2core/server/FileRequest;

    .line 47
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileResourceIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 49
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 51
    const-string v1, "Client"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object v12, v1

    .line 54
    const-string v1, "Page"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_1

    :cond_4
    move v14, v2

    .line 56
    :goto_1
    const-string v1, "Size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    move v15, v2

    const/16 v16, 0x0

    move-object v0, v5

    const/4 v5, 0x1

    .line 45
    invoke-direct/range {v4 .. v16}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZ)V

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->setFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V

    return-object v0
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

    .line 149
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileMd5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
