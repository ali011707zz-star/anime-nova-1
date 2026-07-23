.class public final Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
.super Ljava/lang/Object;
.source "DownloadManagerCoordinator.kt"


# instance fields
.field private final fileDownloaderMap:Ljava/util/Map;

.field private final lock:Ljava/lang/Object;

.field private final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->namespace:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addFileDownloader(ILcom/tonyodev/fetch2/downloader/FileDownloader;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 20
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final clearAll()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 45
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final containsFileDownloader(I)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getFileDownloaderList()Ljava/util/List;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final interruptDownload(I)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 12
    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setInterrupted(Z)V

    .line 13
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final removeFileDownloader(I)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->fileDownloaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tonyodev/fetch2/downloader/FileDownloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
