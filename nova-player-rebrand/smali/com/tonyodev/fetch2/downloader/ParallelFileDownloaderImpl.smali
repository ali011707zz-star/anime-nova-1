.class public final Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;
.super Ljava/lang/Object;
.source "ParallelFileDownloaderImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/FileDownloader;


# instance fields
.field private volatile actionsCounter:I

.field private actionsTotal:I

.field private averageDownloadedBytesPerSecond:D

.field private delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

.field private final downloadInfo$delegate:Lkotlin/Lazy;

.field private volatile downloaded:J

.field private final downloader:Lcom/tonyodev/fetch2core/Downloader;

.field private estimatedTimeRemainingInMilliseconds:J

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private fileSlices:Ljava/util/List;

.field private final fileTempDir:Ljava/lang/String;

.field private final hashCheckingEnabled:Z

.field private final initialDownload:Lcom/tonyodev/fetch2/Download;

.field private final interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

.field private volatile interrupted:Z

.field private final lock:Ljava/lang/Object;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

.field private outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

.field private final preAllocateFileOnCreation:Z

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

.field private volatile terminated:Z

.field private volatile throwable:Ljava/lang/Throwable;

.field private volatile total:J

.field private totalDownloadBlocks:I

.field private volatile totalUnknown:Z


# direct methods
.method public static synthetic $r8$lambda$ReID84cDaw9eCG4Tvxbv232SFkw(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadSliceFiles$lambda$7(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ofY7RmXIhDwyOv_5ovq8AqtsLp8(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadInfo_delegate$lambda$0(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLjava/lang/String;ZLcom/tonyodev/fetch2core/StorageResolver;Z)V
    .locals 1

    const-string v0, "initialDownload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileTempDir"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageResolver"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    .line 20
    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 21
    iput-wide p3, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    .line 22
    iput-object p5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 23
    iput-object p6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    .line 24
    iput-boolean p7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->retryOnNetworkGain:Z

    .line 25
    iput-object p8, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    .line 26
    iput-boolean p9, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->hashCheckingEnabled:Z

    .line 27
    iput-object p10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 28
    iput-boolean p11, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->preAllocateFileOnCreation:Z

    .line 51
    new-instance p1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadInfo$delegate:Lkotlin/Lazy;

    const-wide/16 p1, -0x1

    .line 64
    iput-wide p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    .line 71
    new-instance p3, Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Lcom/tonyodev/fetch2core/AverageCalculator;-><init>(I)V

    iput-object p3, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    .line 73
    iput-wide p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    .line 82
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    .line 535
    new-instance p1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;-><init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    return-void
.end method

.method private static final downloadInfo_delegate$lambda$0(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method private final downloadSliceFiles(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    .line 408
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsTotal:I

    .line 409
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v2, v0}, Lcom/tonyodev/fetch2core/StorageResolver;->createFile(Ljava/lang/String;Z)Ljava/lang/String;

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->preAllocateFileOnCreation:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/StorageResolver;->preAllocateFile(Ljava/lang/String;J)Z

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/StorageResolver;->getRequestOutputResourceWrapper(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    .line 416
    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->setWriteOffset(J)V

    .line 417
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tonyodev/fetch2core/FileSlice;

    .line 418
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static final downloadSliceFiles$lambda$7(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 421
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-Slice-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    .line 426
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    .line 427
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    .line 428
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 429
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    .line 430
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 431
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v11, v3, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v13}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;IILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v3

    const/4 v5, 0x0

    .line 435
    :try_start_1
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/tonyodev/fetch2/util/FetchUtils;->getDownloadedInfoFilePath(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 436
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 437
    :try_start_2
    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    invoke-interface {v6, v3, v8}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v5

    .line 438
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v6

    if-ne v6, v4, :cond_f

    .line 440
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2core/Downloader;->getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I

    move-result v3

    .line 441
    new-array v4, v3, [B

    .line 442
    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4, v8, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    goto/16 :goto_11

    :cond_0
    move v6, v9

    .line 444
    :goto_0
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v13

    .line 445
    :goto_1
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v15

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v17

    add-long v15, v15, v17

    sub-long v15, v13, v15

    .line 446
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide v11, v15

    :goto_2
    const-wide/16 v15, 0x0

    .line 449
    iget-boolean v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v10, :cond_2

    cmp-long v10, v11, v15

    if-lez v10, :cond_15

    :cond_2
    if-eq v6, v9, :cond_15

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v10

    if-nez v10, :cond_15

    .line 450
    iget-boolean v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v10, :cond_4

    int-to-long v9, v6

    cmp-long v9, v9, v11

    if-gtz v9, :cond_3

    goto :goto_3

    :cond_3
    long-to-int v6, v11

    const/4 v9, -0x1

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v6

    .line 456
    :goto_4
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v19

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v21

    move/from16 v23, v9

    add-long v8, v19, v21

    .line 457
    iget-object v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    :try_start_3
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v20

    if-nez v20, :cond_9

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v20

    if-nez v20, :cond_9

    .line 459
    iget-object v15, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v15, :cond_5

    invoke-virtual {v15, v8, v9}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->setWriteOffset(J)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v8, v10

    goto/16 :goto_b

    .line 460
    :cond_5
    :goto_5
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v8, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9, v6}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->write([BII)V

    .line 461
    :cond_6
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v8

    if-nez v8, :cond_7

    .line 462
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v10

    int-to-long v9, v6

    move-wide/from16 v24, v9

    add-long v9, v15, v24

    :try_start_4
    invoke-virtual {v2, v9, v10}, Lcom/tonyodev/fetch2core/FileSlice;->setDownloaded(J)V

    const-wide/16 v9, 0x0

    .line 463
    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 464
    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 465
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 466
    iget-wide v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    add-long v9, v9, v24

    iput-wide v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :cond_7
    move-object v8, v10

    .line 468
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    .line 470
    iget-wide v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    move-wide/from16 v21, v9

    .line 469
    invoke-static/range {v17 .. v22}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 472
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 473
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 474
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    iget v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v6, v9, v0, v10}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    .line 476
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    move-wide/from16 v17, v9

    goto :goto_7

    :cond_9
    move-object v8, v10

    .line 479
    :cond_a
    :goto_7
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 457
    :try_start_5
    monitor-exit v8

    .line 480
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_e

    move/from16 v6, v23

    const/4 v8, -0x1

    if-eq v6, v8, :cond_d

    .line 481
    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_b

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    move v6, v8

    .line 482
    :goto_8
    iget-boolean v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v10, :cond_c

    .line 483
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v19

    add-long v10, v10, v19

    sub-long v10, v13, v10

    move v12, v9

    move v9, v8

    move v8, v12

    move-wide v11, v10

    goto/16 :goto_2

    :cond_c
    :goto_9
    move v15, v9

    move v9, v8

    move v8, v15

    goto/16 :goto_2

    :cond_d
    :goto_a
    const/4 v9, 0x0

    goto :goto_9

    :cond_e
    move/from16 v6, v23

    const/4 v8, -0x1

    goto :goto_a

    .line 457
    :goto_b
    monitor-exit v8

    throw v0

    :cond_f
    if-nez v5, :cond_11

    .line 487
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_c

    .line 488
    :cond_10
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v3, "empty_response_body"

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_c
    if-eqz v5, :cond_13

    .line 489
    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_d

    .line 490
    :cond_12
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v3, "request_not_successful"

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_13
    :goto_d
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_e

    .line 492
    :cond_14
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v3, "unknown"

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_15
    :goto_e
    if-eqz v5, :cond_16

    .line 500
    :try_start_6
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v5}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    .line 503
    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "FileDownloader"

    invoke-interface {v2, v3, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    :cond_16
    :goto_f
    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_10

    :catch_3
    move-exception v0

    .line 508
    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "FileDownloader"

    invoke-interface {v2, v3, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    :cond_17
    :goto_10
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->incrementActionCompletedCount()V

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v7, v5

    .line 495
    :goto_11
    :try_start_8
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileDownloader downloads slice "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    iput-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwable:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_18

    .line 500
    :try_start_9
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v5}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    .line 503
    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "FileDownloader"

    invoke-interface {v2, v3, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_12
    if-eqz v7, :cond_17

    .line 506
    :try_start_a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_10

    :goto_13
    return-void

    :goto_14
    if-eqz v5, :cond_19

    .line 500
    :try_start_b
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v5}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_15

    :catch_6
    move-exception v0

    .line 503
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v4, "FileDownloader"

    invoke-interface {v3, v4, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_15
    if-eqz v7, :cond_1a

    .line 506
    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_16

    :catch_7
    move-exception v0

    .line 508
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v4, "FileDownloader"

    invoke-interface {v3, v4, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    :cond_1a
    :goto_16
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->incrementActionCompletedCount()V

    throw v2
.end method

.method private final getAverageDownloadedBytesPerSecond()J
    .locals 4

    .line 346
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 349
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private final getChuckInfo(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileSliceInfo;
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-interface {v0, p1, v1, v2}, Lcom/tonyodev/fetch2core/Downloader;->getFileSlicingCount(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 342
    :goto_0
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-static {p1, v0, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getFileSliceInfo(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;

    move-result-object p1

    return-object p1
.end method

.method private final getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    return-object v0
.end method

.method private final getFileSliceList(ZLcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;
    .locals 13

    .line 288
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getPreviousSliceCount(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 292
    iget-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez p1, :cond_4

    .line 293
    invoke-direct {p0, p2}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getChuckInfo(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileSliceInfo;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result p2

    if-eq v0, p2, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v0

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/tonyodev/fetch2/util/FetchUtils;->saveCurrentSliceCount(IILjava/lang/String;)V

    .line 299
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v0

    if-gt v1, v0, :cond_3

    const-wide/16 v2, 0x0

    move v6, v1

    move-wide v7, v2

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 304
    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    :goto_1
    move-wide v9, v1

    goto :goto_2

    .line 306
    :cond_2
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getBytesPerFileSlice()J

    move-result-wide v1

    add-long/2addr v1, v7

    goto :goto_1

    .line 309
    :goto_2
    new-instance v4, Lcom/tonyodev/fetch2core/FileSlice;

    .line 310
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v5

    .line 314
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v6, v2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getSavedDownloadedInfo(IILjava/lang/String;)J

    move-result-wide v11

    .line 309
    invoke-direct/range {v4 .. v12}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJ)V

    .line 316
    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v7

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 317
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    move-wide v7, v9

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    if-eq v0, v1, :cond_5

    .line 325
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    .line 327
    :cond_5
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->saveCurrentSliceCount(IILjava/lang/String;)V

    .line 328
    new-instance v2, Lcom/tonyodev/fetch2core/FileSlice;

    .line 329
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v3

    .line 332
    iget-wide v7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    .line 333
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getSavedDownloadedInfo(IILjava/lang/String;)J

    move-result-wide v9

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    .line 328
    invoke-direct/range {v2 .. v10}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJ)V

    .line 334
    iget-wide p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 335
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final incrementActionCompletedCount()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    .line 522
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final isDownloadComplete()Z
    .locals 4

    .line 526
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    iget-wide v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final setIsTotalUnknown(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 4

    .line 530
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 531
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    :cond_0
    return-void
.end method

.method private final throwExceptionIfFound()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    throw v0
.end method

.method private final waitAndPerformProgressReporting()V
    .locals 18

    move-object/from16 v1, p0

    .line 355
    iget-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 357
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 358
    :goto_0
    iget v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    iget v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsTotal:I

    if-eq v0, v8, :cond_5

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v8, v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 360
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v8, v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    .line 362
    invoke-static/range {v6 .. v11}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v0

    move-wide v10, v6

    if-eqz v0, :cond_0

    .line 366
    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    sub-long/2addr v6, v2

    .line 367
    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    long-to-double v6, v6

    invoke-virtual {v2, v6, v7}, Lcom/tonyodev/fetch2core/AverageCalculator;->add(D)V

    .line 369
    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v7, v3, v6}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D

    move-result-wide v2

    .line 368
    iput-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    .line 371
    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 372
    iget-wide v14, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    .line 373
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v16

    .line 370
    invoke-static/range {v12 .. v17}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateEstimatedTimeRemainingInMilliseconds(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    .line 374
    iget-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 378
    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    .line 377
    invoke-static/range {v4 .. v9}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 380
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 381
    :try_start_0
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 382
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 383
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 384
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 385
    :cond_1
    :goto_1
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 386
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 387
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 388
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v13

    .line 389
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v14

    .line 390
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v16

    .line 387
    invoke-interface/range {v12 .. v17}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    .line 392
    :cond_2
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit v4

    .line 393
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    goto :goto_3

    .line 380
    :goto_2
    monitor-exit v4

    throw v0

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 396
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    goto :goto_4

    :cond_4
    move-wide v6, v10

    .line 399
    :goto_4
    :try_start_1
    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 401
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v9, "FileDownloader"

    invoke-interface {v8, v9, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-object v0
.end method

.method public getDownload()Lcom/tonyodev/fetch2/Download;
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 56
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 57
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInterrupted()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interrupted:Z

    return v0
.end method

.method public getTerminated()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->terminated:Z

    return v0
.end method

.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 94
    const-string v2, "FileDownloader"

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 96
    :try_start_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 97
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    .line 98
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 99
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 100
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    const/4 v8, 0x2

    invoke-static {v7, v6, v8, v6}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2core/Downloader;->getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    const-string v7, "HEAD"

    invoke-static {v0, v7}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_11

    .line 103
    :cond_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-static {v0, v6, v8, v6}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v0

    goto :goto_0

    .line 105
    :goto_1
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    invoke-interface {v0, v7, v8}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 107
    invoke-direct {v1, v6}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->setIsTotalUnknown(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    .line 109
    :cond_1
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "empty_response_body"

    const-wide/16 v9, 0x0

    if-nez v0, :cond_b

    :try_start_1
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-ne v0, v5, :cond_b

    .line 110
    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    .line 111
    iget-boolean v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v0, :cond_3

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v0, v11, v9

    if-lez v0, :cond_2

    goto :goto_2

    .line 155
    :cond_2
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    :goto_2
    iput-wide v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    .line 113
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 114
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 115
    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/Downloader$Response;->getAcceptsRanges()Z

    move-result v0

    invoke-direct {v1, v0, v7}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getFileSliceList(ZLcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v6}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 120
    :try_start_3
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v8, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_3
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    .line 550
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/tonyodev/fetch2core/FileSlice;

    .line 122
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/FileSlice;->isDownloaded()Z

    move-result v12

    if-nez v12, :cond_4

    .line 551
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_11

    .line 124
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 125
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 126
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    .line 1557
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1629
    check-cast v12, Lcom/tonyodev/fetch2core/FileSlice;

    .line 127
    new-instance v13, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    .line 128
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/FileSlice;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    .line 129
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    .line 130
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 131
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    .line 132
    invoke-virtual {v12}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 1629
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 135
    :cond_6
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_9

    .line 136
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 137
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 138
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 139
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v12

    .line 141
    iget v13, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I

    .line 138
    invoke-interface {v0, v12, v11, v13}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    .line 557
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v0, :cond_9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    .line 143
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v15

    iget v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v14, v15, v13, v9}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_8
    const-wide/16 v9, 0x0

    goto :goto_6

    .line 146
    :cond_9
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 147
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 149
    :cond_a
    invoke-direct {v1, v7, v8}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadSliceFiles(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/List;)V

    .line 150
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->waitAndPerformProgressReporting()V

    .line 151
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 152
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    goto :goto_9

    :cond_b
    if-nez v6, :cond_d

    .line 157
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 158
    :cond_c
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    if-eqz v6, :cond_f

    .line 159
    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    .line 160
    :cond_e
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v7, "request_not_successful"

    invoke-direct {v0, v7}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_f
    :goto_8
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    .line 162
    :cond_10
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v7, "unknown"

    invoke-direct {v0, v7}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_11
    :goto_9
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 165
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 166
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwExceptionIfFound()V

    .line 167
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_13

    .line 168
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    .line 169
    :cond_12
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 170
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 171
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 172
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    .line 173
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v11

    .line 174
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v13

    .line 171
    invoke-interface/range {v9 .. v14}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    goto/16 :goto_c

    .line 175
    :cond_13
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 176
    iget-boolean v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v0, :cond_15

    .line 178
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    .line 559
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v9, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tonyodev/fetch2core/FileSlice;

    .line 179
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v7

    add-long/2addr v9, v7

    goto :goto_a

    .line 181
    :cond_14
    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v0, v9, v7

    if-eqz v0, :cond_16

    .line 182
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v7, "download_incomplete"

    invoke-direct {v0, v7}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwable:Ljava/lang/Throwable;

    .line 183
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwExceptionIfFound()V

    goto :goto_b

    .line 186
    :cond_15
    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    .line 187
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 188
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 190
    :cond_16
    :goto_b
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_17

    .line 191
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    .line 193
    :cond_17
    iget-boolean v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->hashCheckingEnabled:Z

    if-eqz v0, :cond_1a

    if-eqz v6, :cond_19

    .line 194
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/Downloader$Response;->getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/Downloader$Response;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/tonyodev/fetch2core/Downloader;->verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 195
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 197
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 198
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 199
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object v0

    .line 200
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 201
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    .line 202
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v9

    .line 203
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v11

    .line 200
    invoke-interface/range {v7 .. v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    .line 204
    :cond_18
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 205
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 206
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v7, v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    goto/16 :goto_c

    .line 210
    :cond_19
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    .line 211
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v7, "invalid content hash"

    invoke-direct {v0, v7}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1a
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 216
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 217
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 218
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object v0

    .line 219
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 220
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    .line 221
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v9

    .line 222
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v11

    .line 219
    invoke-interface/range {v7 .. v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    .line 223
    :cond_1b
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 224
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 225
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v7, v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    :cond_1c
    :goto_c
    :try_start_4
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    .line 269
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :cond_1d
    :goto_d
    :try_start_5
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    .line 274
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_e
    if-eqz v6, :cond_1f

    .line 278
    :try_start_6
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v6}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    .line 280
    :goto_f
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    :cond_1f
    :goto_10
    invoke-virtual {v1, v5}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->setTerminated(Z)V

    goto/16 :goto_17

    .line 231
    :goto_11
    :try_start_7
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_24

    .line 232
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileDownloader download:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v6}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    invoke-static {v6}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;

    move-result-object v8

    .line 234
    invoke-virtual {v8, v6}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz v7, :cond_20

    .line 236
    invoke-static {v7}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyDownloadResponseNoStream(Lcom/tonyodev/fetch2core/Downloader$Response;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tonyodev/fetch2/Error;->setHttpResponse(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    goto/16 :goto_18

    .line 238
    :cond_20
    :goto_12
    iget-boolean v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->retryOnNetworkGain:Z

    if-eqz v0, :cond_23

    .line 239
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    xor-int/lit8 v9, v0, 0x1

    move v0, v5

    :goto_13
    const/16 v10, 0xb

    if-ge v0, v10, :cond_22

    const-wide/16 v10, 0x1f4

    .line 242
    :try_start_8
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 247
    :try_start_9
    iget-object v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v10}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v10

    if-nez v10, :cond_21

    move v9, v5

    goto :goto_14

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :catch_5
    move-exception v0

    .line 244
    iget-object v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v10, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_14
    if-eqz v9, :cond_23

    .line 253
    sget-object v8, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    .line 256
    :cond_23
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v9, v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 257
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v9, v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 258
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 259
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_24

    .line 260
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 261
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 262
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-interface {v0, v3, v8, v6}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 267
    :cond_24
    :try_start_a
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_15

    :catch_6
    move-exception v0

    .line 269
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :cond_25
    :goto_15
    :try_start_b
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_16

    :catch_7
    move-exception v0

    .line 274
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_16
    if-eqz v7, :cond_1f

    .line 278
    :try_start_c
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_10

    :catch_8
    move-exception v0

    goto/16 :goto_f

    :goto_17
    return-void

    .line 267
    :goto_18
    :try_start_d
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_19

    :catch_9
    move-exception v0

    .line 269
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :cond_27
    :goto_19
    :try_start_e
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_1a

    :catch_a
    move-exception v0

    .line 274
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_1a
    if-eqz v6, :cond_29

    .line 278
    :try_start_f
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v6}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_1b

    :catch_b
    move-exception v0

    .line 280
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    :cond_29
    :goto_1b
    invoke-virtual {v1, v5}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->setTerminated(Z)V

    throw v3
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-void
.end method

.method public setInterrupted(Z)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    instance-of v1, v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->setInterrupted(Z)V

    .line 34
    :cond_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interrupted:Z

    return-void
.end method

.method public setTerminated(Z)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    instance-of v1, v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->setInterrupted(Z)V

    .line 41
    :cond_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->terminated:Z

    return-void
.end method
