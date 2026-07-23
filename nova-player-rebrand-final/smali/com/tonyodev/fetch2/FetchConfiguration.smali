.class public final Lcom/tonyodev/fetch2/FetchConfiguration;
.super Ljava/lang/Object;
.source "FetchConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final activeDownloadsCheckInterval:J

.field private final appContext:Landroid/content/Context;

.field private final autoStart:Z

.field private final backgroundHandler:Landroid/os/Handler;

.field private final concurrentLimit:I

.field private final createFileOnEnqueue:Z

.field private final fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

.field private final fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

.field private final fileExistChecksEnabled:Z

.field private final fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

.field private final globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

.field private final hashCheckingEnabled:Z

.field private final httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

.field private final internetCheckUrl:Ljava/lang/String;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final loggingEnabled:Z

.field private final maxAutoRetryAttempts:I

.field private final namespace:Ljava/lang/String;

.field private final preAllocateFileOnCreation:Z

.field private final prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    .line 20
    iput-wide p4, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    .line 21
    iput-boolean p6, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    .line 22
    iput-object p7, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 23
    iput-object p8, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 24
    iput-object p9, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 25
    iput-boolean p10, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    .line 26
    iput-boolean p11, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    .line 27
    iput-object p12, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    .line 28
    iput-boolean p13, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    .line 29
    iput-boolean p14, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    .line 30
    iput-object p15, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 p1, p17

    .line 32
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-object/from16 p1, p18

    .line 33
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    move-object/from16 p1, p19

    .line 34
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move-object/from16 p1, p20

    .line 35
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    move-wide/from16 p1, p21

    .line 36
    iput-wide p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    move/from16 p1, p23

    .line 37
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    move/from16 p1, p24

    .line 38
    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    move/from16 p1, p25

    .line 39
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    move-object/from16 p1, p26

    .line 40
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p26}, Lcom/tonyodev/fetch2/FetchConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-class v3, Lcom/tonyodev/fetch2/FetchConfiguration;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 412
    :cond_2
    const-string v2, "null cannot be cast to non-null type com.tonyodev.fetch2.FetchConfiguration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/FetchConfiguration;

    .line 413
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 414
    :cond_3
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    .line 415
    :cond_4
    iget v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    iget v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    if-eq v2, v4, :cond_5

    return v3

    .line 416
    :cond_5
    iget-wide v4, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    iget-wide v6, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    return v3

    .line 417
    :cond_6
    iget-boolean v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    iget-boolean v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    if-eq v2, v4, :cond_7

    return v3

    .line 418
    :cond_7
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v3

    .line 419
    :cond_8
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    if-eq v2, v4, :cond_9

    return v3

    .line 420
    :cond_9
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v3

    .line 421
    :cond_a
    iget-boolean v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    iget-boolean v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    if-eq v2, v4, :cond_b

    return v3

    .line 422
    :cond_b
    iget-boolean v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    iget-boolean v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    if-eq v2, v4, :cond_c

    return v3

    .line 423
    :cond_c
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v3

    .line 424
    :cond_d
    iget-boolean v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    iget-boolean v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    if-eq v2, v4, :cond_e

    return v3

    .line 425
    :cond_e
    iget-boolean v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    iget-boolean v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    if-eq v2, v4, :cond_f

    return v3

    .line 426
    :cond_f
    iget-object v2, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iget-object v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v3

    .line 427
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 428
    :cond_11
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    iget-object v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 429
    :cond_12
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 430
    :cond_13
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    iget-object v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    if-eq v1, v2, :cond_14

    return v3

    .line 431
    :cond_14
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 432
    :cond_15
    iget-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    iget-wide v4, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_16

    return v3

    .line 433
    :cond_16
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    iget-boolean v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    if-eq v1, v2, :cond_17

    return v3

    .line 434
    :cond_17
    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    iget v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    if-eq v1, v2, :cond_18

    return v3

    .line 435
    :cond_18
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    iget-boolean v2, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    if-eq v1, v2, :cond_19

    return v3

    .line 436
    :cond_19
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    iget-object p1, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v3

    :cond_1a
    return v0
.end method

.method public final getActiveDownloadsCheckInterval()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    return-wide v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getAutoStart()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    return v0
.end method

.method public final getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getConcurrentLimit()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    return v0
.end method

.method public final getCreateFileOnEnqueue()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    return v0
.end method

.method public final getFetchDatabaseManager()Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    return-object v0
.end method

.method public final getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-object v0
.end method

.method public final getFetchNotificationManager()Lcom/tonyodev/fetch2/FetchNotificationManager;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFileExistChecksEnabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    return v0
.end method

.method public final getFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    return-object v0
.end method

.method public final getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public final getHashCheckingEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    return v0
.end method

.method public final getHttpDownloader()Lcom/tonyodev/fetch2core/Downloader;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    return-object v0
.end method

.method public final getInternetCheckUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public final getMaxAutoRetryAttempts()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    return v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreAllocateFileOnCreation()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    return v0
.end method

.method public final getPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    return-object v0
.end method

.method public final getProgressReportingIntervalMillis()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    return-wide v0
.end method

.method public final getRetryOnNetworkGain()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    return v0
.end method

.method public final getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 443
    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    iget-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 446
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 448
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 449
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 450
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 451
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 452
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 453
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 454
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 459
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 465
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 467
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 469
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    .line 471
    iget-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 472
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 473
    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 474
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    .line 479
    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    .line 480
    iget v3, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    iget-wide v4, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    .line 481
    iget-boolean v6, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    iget-object v7, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 482
    iget-object v9, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-boolean v10, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    iget-boolean v11, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    .line 483
    iget-object v12, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iget-boolean v13, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    .line 484
    iget-boolean v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 v16, v15

    .line 485
    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-object/from16 v17, v15

    .line 486
    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    move/from16 v20, v14

    move-object/from16 v21, v15

    .line 487
    iget-wide v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    move-wide/from16 v22, v14

    iget-boolean v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    .line 488
    iget-boolean v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    move/from16 v24, v15

    .line 489
    iget v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    move/from16 v25, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v15

    const-string v15, "FetchConfiguration(appContext="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", namespace=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', concurrentLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressReportingIntervalMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", httpDownloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retryOnNetworkGain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileServerDownloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCheckingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileExistChecksEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", storageResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fetchNotificationManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fetchDatabaseManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prioritySort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internetCheckUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeDownloadsCheckInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createFileOnEnqueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preAllocateFileOnCreation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxAutoRetryAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fetchHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
