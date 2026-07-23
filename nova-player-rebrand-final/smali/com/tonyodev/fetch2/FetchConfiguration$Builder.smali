.class public final Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
.super Ljava/lang/Object;
.source "FetchConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/FetchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private activeDownloadCheckInterval:J

.field private final appContext:Landroid/content/Context;

.field private autoStart:Z

.field private backgroundHandler:Landroid/os/Handler;

.field private concurrentLimit:I

.field private createFileOnEnqueue:Z

.field private fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

.field private fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

.field private fileExistChecksEnabled:Z

.field private fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

.field private globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

.field private hashCheckEnabled:Z

.field private httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

.field private internetCheckUrl:Ljava/lang/String;

.field private logger:Lcom/tonyodev/fetch2core/Logger;

.field private loggingEnabled:Z

.field private maxAutoRetryAttempts:I

.field private namespace:Ljava/lang/String;

.field private preAllocateFileOnCreation:Z

.field private prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

.field private progressReportingIntervalMillis:J

.field private retryOnNetworkGain:Z

.field private storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->appContext:Landroid/content/Context;

    .line 54
    const-string v0, "LibGlobalFetchLib"

    iput-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->concurrentLimit:I

    const-wide/16 v1, 0x7d0

    .line 56
    iput-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->progressReportingIntervalMillis:J

    .line 58
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultDownloader()Lcom/tonyodev/fetch2core/Downloader;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 59
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 60
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 61
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->autoStart:Z

    .line 62
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->retryOnNetworkGain:Z

    .line 63
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    .line 65
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileExistChecksEnabled:Z

    .line 66
    new-instance v1, Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    const-string v2, "appContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/tonyodev/fetch2core/DefaultStorageResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 70
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    const-wide/32 v1, 0x493e0

    .line 72
    iput-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->activeDownloadCheckInterval:J

    .line 73
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->createFileOnEnqueue:Z

    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->maxAutoRetryAttempts:I

    .line 75
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->preAllocateFileOnCreation:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 30

    move-object/from16 v0, p0

    .line 371
    iget-object v10, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 372
    instance-of v1, v10, Lcom/tonyodev/fetch2core/FetchLogger;

    if-eqz v1, :cond_0

    .line 373
    move-object v1, v10

    check-cast v1, Lcom/tonyodev/fetch2core/FetchLogger;

    iget-boolean v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/FetchLogger;->setEnabled(Z)V

    .line 374
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FetchLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fetch2"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/FetchLogger;->setTag(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    invoke-interface {v10, v1}, Lcom/tonyodev/fetch2core/Logger;->setEnabled(Z)V

    .line 380
    :cond_1
    :goto_0
    new-instance v1, Lcom/tonyodev/fetch2/FetchConfiguration;

    .line 381
    iget-object v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->appContext:Landroid/content/Context;

    const-string v3, "appContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v3, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    .line 383
    iget v4, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->concurrentLimit:I

    .line 384
    iget-wide v5, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->progressReportingIntervalMillis:J

    .line 385
    iget-boolean v7, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    .line 386
    iget-object v8, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 387
    iget-object v9, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 389
    iget-boolean v11, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->autoStart:Z

    .line 390
    iget-boolean v12, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->retryOnNetworkGain:Z

    .line 391
    iget-object v13, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    .line 392
    iget-boolean v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->hashCheckEnabled:Z

    .line 393
    iget-boolean v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileExistChecksEnabled:Z

    move-object/from16 v16, v1

    .line 394
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 v17, v1

    .line 396
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-object/from16 v18, v1

    .line 397
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->backgroundHandler:Landroid/os/Handler;

    move-object/from16 v19, v1

    .line 398
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move-object/from16 v20, v1

    .line 399
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->internetCheckUrl:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    .line 400
    iget-wide v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->activeDownloadCheckInterval:J

    move-wide/from16 v23, v1

    .line 401
    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->createFileOnEnqueue:Z

    .line 402
    iget v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->maxAutoRetryAttempts:I

    move/from16 v25, v1

    .line 403
    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->preAllocateFileOnCreation:Z

    move/from16 v26, v1

    .line 404
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/16 v28, 0x0

    move-object/from16 v27, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    const/16 v17, 0x0

    move/from16 v29, v25

    move/from16 v25, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v22

    move-wide/from16 v22, v23

    move/from16 v24, v29

    .line 380
    invoke-direct/range {v1 .. v28}, Lcom/tonyodev/fetch2/FetchConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final enableAutoStart(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->autoStart:Z

    return-object p0
.end method

.method public final enableFileExistChecks(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileExistChecksEnabled:Z

    return-object p0
.end method

.method public final enableRetryOnNetworkGain(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->retryOnNetworkGain:Z

    return-object p0
.end method

.method public final setAutoRetryMaxAttempts(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 352
    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->maxAutoRetryAttempts:I

    return-object p0

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The AutoRetryMaxAttempts has to be greater than -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDownloadConcurrentLimit(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 150
    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->concurrentLimit:I

    return-object p0

    .line 148
    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "Concurrent limit cannot be less than 0"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object p0
.end method

.method public final setHttpDownloader(Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1

    const-string v0, "downloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    return-object p0
.end method

.method public final setNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    const-string p1, "LibGlobalFetchLib"

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public final setProgressReportingInterval(J)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 133
    iput-wide p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->progressReportingIntervalMillis:J

    return-object p0

    .line 131
    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "progressReportingIntervalMillis cannot be less than 0"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
