.class public final Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/DownloadManager;


# instance fields
.field private volatile closed:Z

.field private volatile concurrentLimit:I

.field private final currentDownloadsMap:Ljava/util/HashMap;

.field private volatile downloadCounter:I

.field private final downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

.field private final downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

.field private final globalAutoRetryMaxAttempts:I

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

.field private final hashCheckingEnabled:Z

.field private final httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final lock:Ljava/lang/Object;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final namespace:Ljava/lang/String;

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

.field private final preAllocateFileOnCreation:Z

.field private priorityBackoffResetCallback:Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;


# direct methods
.method public static synthetic $r8$lambda$1OC3BrkaPhSSEK1WGIV8Evj84dg(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->start$lambda$4$lambda$3(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader;IJLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2core/FileServerDownloader;ZLcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;IZ)V
    .locals 10

    move-object v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    const-string v9, "httpDownloader"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "logger"

    invoke-static {p5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "networkInfoProvider"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "downloadInfoUpdater"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "downloadManagerCoordinator"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "listenerCoordinator"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "fileServerDownloader"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "storageResolver"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "namespace"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "groupInfoProvider"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 18
    iput-wide p3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->progressReportingIntervalMillis:J

    .line 19
    iput-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 20
    iput-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move/from16 p1, p7

    .line 21
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    .line 22
    iput-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    .line 23
    iput-object v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    .line 24
    iput-object v4, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 25
    iput-object v5, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    move/from16 p1, p12

    .line 26
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->hashCheckingEnabled:Z

    .line 27
    iput-object v6, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 28
    iput-object v7, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->namespace:Ljava/lang/String;

    .line 29
    iput-object v8, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move/from16 p1, p16

    .line 30
    iput p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->globalAutoRetryMaxAttempts:I

    move/from16 p1, p17

    .line 31
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->preAllocateFileOnCreation:Z

    .line 34
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    .line 35
    invoke-direct {p0, p2}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getNewDownloadExecutorService(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    .line 40
    iput p2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->concurrentLimit:I

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    return-void
.end method

.method private final cancelAllDownloads()V
    .locals 5

    .line 163
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->getFileDownloaderList()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 169
    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setInterrupted(Z)V

    .line 170
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v3

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    .line 171
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager cancelled download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    return-void
.end method

.method private final cancelDownloadNoLock(I)Z
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    .line 141
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 143
    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setInterrupted(Z)V

    .line 144
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    .line 146
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    .line 147
    iget-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadManager cancelled download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getInterrupted()Z

    move-result p1

    return p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->interruptDownload(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private final getFileDownloader(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/downloader/FileDownloader;
    .locals 12

    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 258
    invoke-static {p1, v0, v3, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v0

    .line 259
    invoke-interface {p2, v0}, Lcom/tonyodev/fetch2core/Downloader;->getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    const-string v0, "HEAD"

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v0

    .line 264
    :cond_0
    invoke-interface {p2, v0}, Lcom/tonyodev/fetch2core/Downloader;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;

    move-result-object v3

    .line 265
    invoke-interface {p2, v0, v3}, Lcom/tonyodev/fetch2core/Downloader;->getRequestFileDownloaderType(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/Set;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    if-ne v3, v4, :cond_1

    .line 266
    new-instance v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;

    .line 269
    iget-wide v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->progressReportingIntervalMillis:J

    .line 270
    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 271
    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    .line 272
    iget-boolean v7, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    .line 273
    iget-boolean v8, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->hashCheckingEnabled:Z

    .line 274
    iget-object v9, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 275
    iget-boolean v10, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->preAllocateFileOnCreation:Z

    move-object v1, p1

    move-object v2, p2

    .line 266
    invoke-direct/range {v0 .. v10}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZZLcom/tonyodev/fetch2core/StorageResolver;Z)V

    return-object v0

    .line 277
    :cond_1
    new-instance v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    .line 280
    iget-wide v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->progressReportingIntervalMillis:J

    .line 281
    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 282
    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    .line 283
    iget-boolean v7, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    .line 284
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v2, v0}, Lcom/tonyodev/fetch2core/StorageResolver;->getDirectoryForFileDownloaderTypeParallel(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/String;

    move-result-object v8

    .line 285
    iget-boolean v9, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->hashCheckingEnabled:Z

    .line 286
    iget-object v10, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 287
    iget-boolean v11, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->preAllocateFileOnCreation:Z

    move-object v2, p2

    move-object v0, v1

    move-object v1, p1

    .line 277
    invoke-direct/range {v0 .. v11}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLjava/lang/String;ZLcom/tonyodev/fetch2core/StorageResolver;Z)V

    return-object v0
.end method

.method private final getNewDownloadExecutorService(I)Ljava/util/concurrent/ExecutorService;
    .locals 0

    if-lez p1, :cond_0

    .line 306
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 129
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private static final start$lambda$4$lambda$3(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V
    .locals 5

    .line 87
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getNewFileDownloaderForDownload(Lcom/tonyodev/fetch2/Download;)Lcom/tonyodev/fetch2/downloader/FileDownloader;

    move-result-object v0

    .line 93
    iget-object v1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getFileDownloaderDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V

    .line 96
    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->addFileDownloader(ILcom/tonyodev/fetch2/downloader/FileDownloader;)V

    .line 98
    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager starting download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 93
    :goto_0
    :try_start_3
    monitor-exit v1

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    .line 107
    :cond_1
    :goto_1
    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    .line 108
    iget-object v0, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->clean()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    .line 113
    iget-object p0, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->priorityBackoffResetCallback:Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;

    if-eqz p0, :cond_2

    :goto_2
    iget-object p1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->namespace:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;->onResetBackoffTime(Ljava/lang/String;)V

    goto :goto_5

    .line 93
    :goto_3
    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    :goto_4
    :try_start_5
    iget-object v1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadManager failed to start download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    .line 113
    iget-object p0, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->priorityBackoffResetCallback:Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_5
    return-void

    .line 112
    :goto_6
    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    .line 113
    iget-object p0, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->priorityBackoffResetCallback:Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->namespace:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;->onResetBackoffTime(Ljava/lang/String;)V

    :cond_3
    throw v0
.end method

.method private final terminateAllDownloads()V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 184
    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setTerminated(Z)V

    .line 185
    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadManager terminated download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "DownloadManager is already shutdown."

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canAccommodateNewDownload()Z
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public cancel(I)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->cancelDownloadNoLock(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public cancelAll()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    .line 158
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->cancelAllDownloads()V

    .line 159
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 196
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 198
    :try_start_1
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    .line 199
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v1

    if-lez v1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->terminateAllDownloads()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 202
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "DownloadManager closing download manager"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 205
    :catch_0
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public contains(I)Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->containsFileDownloader(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public getConcurrentLimit()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->concurrentLimit:I

    return v0
.end method

.method public getFileDownloaderDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .locals 5

    .line 292
    new-instance v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    .line 293
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    .line 294
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    .line 295
    iget-boolean v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    .line 296
    iget v4, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->globalAutoRetryMaxAttempts:I

    .line 292
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;-><init>(Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/FetchListener;ZI)V

    return-object v0
.end method

.method public getNewFileDownloaderForDownload(Lcom/tonyodev/fetch2/Download;)Lcom/tonyodev/fetch2/downloader/FileDownloader;
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->isFetchFileServerUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-direct {p0, p1, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getFileDownloader(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/downloader/FileDownloader;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-direct {p0, p1, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getFileDownloader(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/downloader/FileDownloader;

    move-result-object p1

    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    return v0
.end method

.method public final setPriorityBackoffResetCallback(Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->priorityBackoffResetCallback:Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;

    return-void
.end method

.method public start(Lcom/tonyodev/fetch2/Download;)Z
    .locals 6

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    .line 71
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager already running download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 75
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 76
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager cannot init download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because the download queue is full"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit v0

    return v2

    .line 80
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    .line 81
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v4

    invoke-virtual {v1, v4, v5}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->addFileDownloader(ILcom/tonyodev/fetch2/downloader/FileDownloader;)V

    .line 83
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    new-instance v2, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    monitor-exit v0

    return v3

    .line 69
    :cond_2
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0

    throw p1
.end method
