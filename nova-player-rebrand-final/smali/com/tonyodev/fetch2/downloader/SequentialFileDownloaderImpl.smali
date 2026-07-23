.class public final Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;
.super Ljava/lang/Object;
.source "SequentialFileDownloaderImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/FileDownloader;


# instance fields
.field private averageDownloadedBytesPerSecond:D

.field private delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

.field private final downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

.field private final downloadInfo$delegate:Lkotlin/Lazy;

.field private volatile downloaded:J

.field private final downloader:Lcom/tonyodev/fetch2core/Downloader;

.field private estimatedTimeRemainingInMilliseconds:J

.field private final hashCheckingEnabled:Z

.field private final initialDownload:Lcom/tonyodev/fetch2/Download;

.field private final interruptMonitor:Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

.field private volatile interrupted:Z

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

.field private final preAllocateFileOnCreation:Z

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

.field private volatile terminated:Z

.field private volatile total:J

.field private final totalDownloadBlocks:I

.field private volatile totalUnknown:Z


# direct methods
.method public static synthetic $r8$lambda$BfzYYXWbKR-xk9F78RbhtJeRXnA(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadInfo_delegate$lambda$0(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZZLcom/tonyodev/fetch2core/StorageResolver;Z)V
    .locals 1

    const-string v0, "initialDownload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageResolver"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    .line 14
    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 15
    iput-wide p3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->progressReportingIntervalMillis:J

    .line 16
    iput-object p5, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 17
    iput-object p6, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    .line 18
    iput-boolean p7, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->retryOnNetworkGain:Z

    .line 19
    iput-boolean p8, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->hashCheckingEnabled:Z

    .line 20
    iput-object p9, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 21
    iput-boolean p10, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->preAllocateFileOnCreation:Z

    const-wide/16 p2, -0x1

    .line 43
    iput-wide p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    .line 48
    iput-wide p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    .line 49
    new-instance p2, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadInfo$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p2, Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/tonyodev/fetch2core/AverageCalculator;-><init>(I)V

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    .line 53
    new-instance p2, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {p2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    const/4 p3, 0x1

    .line 54
    invoke-virtual {p2, p3}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    .line 55
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    .line 52
    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    .line 58
    iput p3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    .line 354
    new-instance p1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;-><init>(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

    return-void
.end method

.method private static final downloadInfo_delegate$lambda$0(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAverageDownloadedBytesPerSecond()J
    .locals 4

    .line 348
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 351
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private final getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    return-object v0
.end method

.method private final getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 15

    .line 330
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 331
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    .line 333
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    .line 334
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 336
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 337
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 338
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 339
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getIdentifier()J

    move-result-wide v8

    .line 341
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v11

    .line 343
    const-string v13, ""

    const/4 v14, 0x1

    .line 332
    const-string v10, "GET"

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object v1
.end method

.method private final isDownloadComplete()Z
    .locals 4

    .line 212
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalUnknown:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iget-wide v2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

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

    .line 216
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalUnknown:Z

    :cond_0
    return-void
.end method

.method private final verifyDownloadCompletion(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 9

    .line 283
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    .line 285
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 286
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 287
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 288
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 289
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->hashCheckingEnabled:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/tonyodev/fetch2core/Downloader;->verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 292
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v4, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {p1, v0, v3, v4}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    iget-wide v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 295
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 296
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    .line 297
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    .line 299
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v5

    .line 300
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v7

    .line 297
    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 302
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 303
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    return-void

    .line 307
    :cond_3
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "invalid content hash"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_4
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 311
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    .line 312
    :cond_5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v4, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {p1, v0, v3, v4}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    .line 313
    :cond_6
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    iget-wide v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 314
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 315
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    .line 316
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 317
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    .line 318
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v5

    .line 319
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v7

    .line 316
    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    .line 320
    :cond_7
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 321
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 322
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    :cond_8
    return-void
.end method

.method private final writeToOutput(Ljava/io/BufferedInputStream;Lcom/tonyodev/fetch2core/OutputResourceWrapper;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 226
    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    .line 227
    new-array v6, v3, [B

    .line 228
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 229
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 230
    invoke-virtual {v1, v6, v11, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    move-wide v14, v7

    move v7, v12

    move-wide v12, v14

    move-wide v14, v9

    .line 231
    :goto_0
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2, v6, v11, v7}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->write([BII)V

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v8

    if-nez v8, :cond_7

    .line 234
    iget-wide v8, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    move-wide/from16 v20, v12

    int-to-long v11, v7

    add-long/2addr v8, v11

    iput-wide v8, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    .line 235
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-wide v8, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v7, v8, v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 236
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-wide v8, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v7, v8, v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 237
    iget-object v7, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v8, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v7, v8, v9}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 238
    iget-object v7, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v8, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v7, v8, v9}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    .line 240
    invoke-static/range {v14 .. v19}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v7

    move-wide v8, v14

    if-eqz v7, :cond_1

    .line 244
    iget-wide v11, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    sub-long/2addr v11, v4

    .line 245
    iget-object v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    long-to-double v11, v11

    invoke-virtual {v4, v11, v12}, Lcom/tonyodev/fetch2core/AverageCalculator;->add(D)V

    .line 247
    iget-object v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v10, v5, v11}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D

    move-result-wide v4

    .line 246
    iput-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    .line 249
    iget-wide v11, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    .line 250
    iget-wide v13, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    .line 251
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v15

    .line 248
    invoke-static/range {v11 .. v16}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateEstimatedTimeRemainingInMilliseconds(JJJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    .line 252
    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    .line 255
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 257
    iget-wide v11, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->progressReportingIntervalMillis:J

    move-wide/from16 v16, v11

    move-wide/from16 v12, v20

    .line 256
    invoke-static/range {v12 .. v17}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 260
    iget-object v11, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 261
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v11

    if-nez v11, :cond_4

    .line 262
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    .line 263
    :cond_2
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v12

    iget-object v13, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v14, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v11, v12, v13, v14}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    .line 264
    :cond_3
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 265
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 266
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 267
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v15

    .line 268
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v16

    .line 269
    invoke-direct {v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v18

    .line 266
    invoke-interface/range {v14 .. v19}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    .line 271
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    move-wide v12, v11

    :cond_5
    if-eqz v7, :cond_6

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-wide v14, v7

    :goto_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-wide v14, v8

    goto :goto_1

    .line 276
    :goto_2
    invoke-virtual {v1, v6, v10, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    :goto_3
    move v11, v10

    goto/16 :goto_0

    :cond_7
    move v10, v11

    move-wide v8, v14

    move-wide v14, v8

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    .line 279
    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->flush()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-object v0
.end method

.method public getDownload()Lcom/tonyodev/fetch2/Download;
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 63
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 64
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInterrupted()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interrupted:Z

    return v0
.end method

.method public getTerminated()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->terminated:Z

    return v0
.end method

.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 68
    const-string v2, "FileDownloader"

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 72
    :try_start_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    .line 73
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    .line 74
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 75
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 76
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 77
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v0

    .line 78
    iget-object v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

    invoke-interface {v7, v0, v8}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v7, :cond_0

    .line 80
    :try_start_1
    invoke-direct {v1, v7}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->setIsTotalUnknown(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v8, v6

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object v8, v6

    :goto_0
    move-object v9, v8

    :goto_1
    move-object v6, v0

    goto/16 :goto_13

    :cond_0
    :goto_2
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 82
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v9

    goto :goto_3

    :cond_1
    move v9, v8

    .line 83
    :goto_3
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v10

    if-nez v10, :cond_b

    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    .line 84
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getCode()I

    move-result v9

    const-wide/16 v10, 0x0

    const/16 v12, 0xce

    if-eq v9, v12, :cond_3

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getAcceptsRanges()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    move-wide v13, v10

    goto :goto_5

    .line 85
    :cond_3
    :goto_4
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v9}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v13

    .line 84
    :goto_5
    iput-wide v13, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    .line 89
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    .line 90
    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getCode()I

    move-result v9

    if-ne v9, v12, :cond_4

    .line 91
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileDownloader resuming Download "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 92
    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    goto :goto_6

    .line 94
    :cond_4
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileDownloader starting Download "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 97
    :goto_6
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v9, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 98
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v9, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 99
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 100
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v13}, Lcom/tonyodev/fetch2/Download;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v13

    sget-object v14, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-ne v13, v14, :cond_5

    move v8, v5

    :cond_5
    invoke-interface {v9, v12, v8}, Lcom/tonyodev/fetch2core/StorageResolver;->createFile(Ljava/lang/String;Z)Ljava/lang/String;

    .line 102
    :cond_6
    iget-boolean v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->preAllocateFileOnCreation:Z

    if-eqz v8, :cond_7

    .line 103
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v12

    invoke-interface {v8, v9, v12, v13}, Lcom/tonyodev/fetch2core/StorageResolver;->preAllocateFile(Ljava/lang/String;J)Z

    .line 105
    :cond_7
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v8, v0}, Lcom/tonyodev/fetch2core/StorageResolver;->getRequestOutputResourceWrapper(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    invoke-virtual {v8, v10, v11}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->setWriteOffset(J)V

    .line 107
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v9

    if-nez v9, :cond_a

    .line 108
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v9, v0}, Lcom/tonyodev/fetch2core/Downloader;->getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I

    move-result v0

    .line 109
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v9, v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :try_start_3
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v6, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 111
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v6, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 112
    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v6, v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 113
    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    .line 114
    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 115
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 116
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 117
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 118
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 119
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    .line 120
    iget-object v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 121
    iget v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    .line 118
    invoke-interface {v6, v10, v11, v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v0

    :goto_7
    move-object v6, v9

    goto/16 :goto_19

    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 122
    :cond_8
    :goto_8
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    iget-object v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v6, v10, v11, v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    .line 124
    :cond_9
    invoke-direct {v1, v9, v8, v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->writeToOutput(Ljava/io/BufferedInputStream;Lcom/tonyodev/fetch2core/OutputResourceWrapper;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_9
    move-object v6, v7

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto/16 :goto_19

    :catch_2
    move-exception v0

    move-object v9, v6

    goto/16 :goto_1

    :cond_a
    move-object v9, v6

    goto :goto_9

    :cond_b
    if-nez v7, :cond_d

    .line 126
    :try_start_4
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_a

    .line 127
    :cond_c
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v8, "empty_response_body"

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_a
    if-nez v9, :cond_f

    .line 128
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_b

    .line 129
    :cond_e
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v8, "request_not_successful"

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_f
    :goto_b
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_11

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_11

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_c

    .line 131
    :cond_10
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v8, "unknown"

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_11
    :goto_c
    move-object v8, v6

    move-object v9, v8

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v7, v6

    move-object v8, v7

    goto/16 :goto_19

    :catch_3
    move-exception v0

    move-object v7, v6

    move-object v8, v7

    goto/16 :goto_0

    :cond_12
    move-object v8, v6

    move-object v9, v8

    .line 134
    :goto_d
    :try_start_5
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_15

    .line 135
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 136
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 137
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 138
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 139
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 140
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v7, v6

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object v7, v6

    goto/16 :goto_1

    .line 141
    :cond_13
    :goto_e
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-object v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v0, v7, v10, v11}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    .line 142
    :cond_14
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 143
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 144
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v12

    if-eqz v12, :cond_16

    .line 145
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v13

    .line 146
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v14

    .line 147
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v16

    .line 144
    invoke-interface/range {v12 .. v17}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    goto :goto_f

    .line 149
    :cond_15
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v6, :cond_16

    .line 150
    invoke-direct {v1, v6}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->verifyDownloadCompletion(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_16
    :goto_f
    if-eqz v9, :cond_17

    .line 191
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    .line 193
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_10
    if-eqz v6, :cond_18

    .line 197
    :try_start_7
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v6}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    .line 199
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_11
    if-eqz v8, :cond_19

    .line 203
    :try_start_8
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    .line 205
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_19
    :goto_12
    invoke-virtual {v1, v5}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->setTerminated(Z)V

    goto/16 :goto_18

    .line 153
    :goto_13
    :try_start_9
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 154
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileDownloader download:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10, v6}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-static {v6}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;

    move-result-object v10

    .line 156
    invoke-virtual {v10, v6}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz v7, :cond_1a

    .line 158
    invoke-static {v7}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyDownloadResponseNoStream(Lcom/tonyodev/fetch2core/Downloader$Response;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tonyodev/fetch2/Error;->setHttpResponse(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    .line 160
    :cond_1a
    iget-boolean v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->retryOnNetworkGain:Z

    if-eqz v0, :cond_1d

    .line 161
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    xor-int/lit8 v11, v0, 0x1

    move v0, v5

    :goto_14
    const/16 v12, 0xb

    if-ge v0, v12, :cond_1c

    const-wide/16 v12, 0x1f4

    .line 164
    :try_start_a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 169
    :try_start_b
    iget-object v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v12}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v12

    if-nez v12, :cond_1b

    move v11, v5

    goto :goto_15

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :catch_8
    move-exception v0

    .line 166
    iget-object v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v12, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_15
    if-eqz v11, :cond_1d

    .line 175
    sget-object v10, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    .line 178
    :cond_1d
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 179
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 180
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 181
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    .line 182
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 183
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 184
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    .line 185
    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 186
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-direct {v1}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-interface {v0, v3, v10, v6}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_1e
    if-eqz v9, :cond_1f

    .line 191
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_16

    :catch_9
    move-exception v0

    .line 193
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_16
    if-eqz v7, :cond_20

    .line 197
    :try_start_d
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_17

    :catch_a
    move-exception v0

    .line 199
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_17
    if-eqz v8, :cond_19

    .line 203
    :try_start_e
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_12

    :goto_18
    return-void

    :goto_19
    if-eqz v6, :cond_21

    .line 191
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_1a

    :catch_b
    move-exception v0

    .line 193
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_1a
    if-eqz v7, :cond_22

    .line 197
    :try_start_10
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_1b

    :catch_c
    move-exception v0

    .line 199
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_1b
    if-eqz v8, :cond_23

    .line 203
    :try_start_11
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_1c

    :catch_d
    move-exception v0

    .line 205
    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_23
    :goto_1c
    invoke-virtual {v1, v5}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->setTerminated(Z)V

    throw v3
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-void
.end method

.method public setInterrupted(Z)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

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

    .line 27
    :cond_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interrupted:Z

    return-void
.end method

.method public setTerminated(Z)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

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

    .line 33
    :cond_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->terminated:Z

    return-void
.end method
