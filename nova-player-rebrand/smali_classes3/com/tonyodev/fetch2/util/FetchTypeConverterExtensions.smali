.class public abstract Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;
.super Ljava/lang/Object;
.source "TypeConverterExtensions.kt"


# direct methods
.method public static final toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 32
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 36
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 37
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 38
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 39
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 40
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 41
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 42
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 43
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getCreated()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    .line 44
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    .line 45
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    .line 46
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    .line 47
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getDownloadOnEnqueue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    .line 48
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    .line 49
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getAutoRetryMaxAttempts()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    .line 50
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getAutoRetryAttempts()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    return-object p1
.end method

.method public static final toDownloadInfo(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 11
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 14
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 15
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getGroupId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 16
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 17
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 18
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    const-wide/16 v0, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 20
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    .line 22
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    .line 23
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getDownloadOnEnqueue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    .line 25
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getAutoRetryMaxAttempts()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    const/4 p0, 0x0

    .line 26
    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    return-object p1
.end method
