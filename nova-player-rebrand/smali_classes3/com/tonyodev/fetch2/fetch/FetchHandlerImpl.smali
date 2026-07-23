.class public final Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;
.super Ljava/lang/Object;
.source "FetchHandlerImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/fetch/FetchHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$WhenMappings;
    }
.end annotation


# instance fields
.field private final autoStart:Z

.field private final createFileOnEnqueue:Z

.field private final downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

.field private final fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

.field private final httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

.field private volatile isTerminating:Z

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final listenerId:I

.field private final listenerSet:Ljava/util/Set;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final namespace:Ljava/lang/String;

.field private final priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

.field private final prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$DBS5axDkDeb3odLSj8AI-GNuoNQ(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->addListener$lambda$18$lambda$17(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/helper/PriorityListProcessor;Lcom/tonyodev/fetch2core/Logger;ZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2core/FileServerDownloader;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Landroid/os/Handler;Lcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/PrioritySort;Z)V
    .locals 9

    move-object v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    const-string v8, "namespace"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "fetchDatabaseManagerWrapper"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "downloadManager"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "priorityListProcessor"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "logger"

    invoke-static {p5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "httpDownloader"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "fileServerDownloader"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "listenerCoordinator"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "uiHandler"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "storageResolver"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "groupInfoProvider"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "prioritySort"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    .line 22
    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    .line 23
    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    .line 24
    iput-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    move p1, p6

    .line 25
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->autoStart:Z

    .line 26
    iput-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 27
    iput-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    .line 28
    iput-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 29
    iput-object v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->uiHandler:Landroid/os/Handler;

    .line 30
    iput-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    .line 32
    iput-object v6, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    .line 33
    iput-object v7, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move/from16 p1, p15

    .line 34
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    .line 37
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    return-void
.end method

.method private static final addListener$lambda$18$lambda$17(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 2

    .line 691
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 716
    :pswitch_0
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    :pswitch_1
    return-void

    .line 711
    :pswitch_2
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onRemoved(Lcom/tonyodev/fetch2/Download;)V

    return-void

    :pswitch_3
    const/4 v0, 0x0

    .line 708
    invoke-interface {p1, p0, v0}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    return-void

    .line 705
    :pswitch_4
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onPaused(Lcom/tonyodev/fetch2/Download;)V

    return-void

    .line 702
    :pswitch_5
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onDeleted(Lcom/tonyodev/fetch2/Download;)V

    return-void

    .line 699
    :pswitch_6
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onCancelled(Lcom/tonyodev/fetch2/Download;)V

    return-void

    .line 696
    :pswitch_7
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/tonyodev/fetch2/FetchListener;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    return-void

    .line 693
    :pswitch_8
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final cancelDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 364
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 367
    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canCancelDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    sget-object v2, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 369
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 370
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    return-object v0
.end method

.method private final cancelDownloadsIfDownloading(Ljava/util/List;)V
    .locals 2

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 764
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancel(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final deleteDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 341
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 342
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Ljava/util/List;)V

    .line 813
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 344
    sget-object v2, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 345
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/StorageResolver;->deleteFile(Ljava/lang/String;)Z

    .line 346
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;->deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final enqueueRequests(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Request;

    .line 85
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-direct {p0, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prepareDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)Z

    move-result v3

    .line 89
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v4, v5, :cond_3

    .line 90
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/RequestInfo;->getDownloadOnEnqueue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 93
    :cond_1
    sget-object v1, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    .line 90
    :goto_1
    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    if-nez v3, :cond_2

    .line 96
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lkotlin/Pair;

    move-result-object v1

    .line 97
    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueued download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 98
    new-instance v3, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-direct {v3, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    goto :goto_2

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 102
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lkotlin/Pair;

    sget-object v3, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_3
    new-instance v1, Lkotlin/Pair;

    sget-object v3, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    sget-object v3, Lcom/tonyodev/fetch2/PrioritySort;->DESC:Lcom/tonyodev/fetch2/PrioritySort;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->canAccommodateNewDownload()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 112
    :goto_3
    invoke-static {v1}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v1}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    .line 114
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :cond_4
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object v0
.end method

.method private final pauseDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 239
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 242
    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canPauseDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    sget-object v2, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    return-object v0
.end method

.method private final prepareDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)Z
    .locals 8

    .line 122
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 123
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-eq v4, v5, :cond_6

    .line 126
    iget-boolean v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v4, :cond_6

    .line 127
    iget-object v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver$DefaultImpls;->createFile$default(Lcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_4

    .line 131
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    .line 133
    const-string v4, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    sget-object v6, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v5, v6, :cond_2

    .line 134
    sget-object v5, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 136
    :try_start_0
    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 138
    iget-object v6, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    invoke-interface {v6, v4, v5}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    sget-object v6, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne v5, v6, :cond_6

    .line 141
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v5

    sget-object v6, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    if-ne v5, v6, :cond_6

    .line 142
    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 144
    :try_start_1
    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 146
    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v6

    :goto_2
    invoke-interface {v5, v4, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :goto_3
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    sget-object v4, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-eq v0, v4, :cond_5

    .line 150
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver$DefaultImpls;->createFile$default(Lcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    :cond_5
    move-object v0, v2

    .line 157
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    if-eq v4, v1, :cond_b

    const/4 v1, 0x3

    if-eq v4, v1, :cond_9

    const/4 v0, 0x4

    if-ne v4, v0, :cond_8

    .line 197
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v0, :cond_7

    .line 198
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/tonyodev/fetch2core/StorageResolver;->createFile(Ljava/lang/String;Z)Ljava/lang/String;

    .line 200
    :cond_7
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    goto/16 :goto_5

    .line 157
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    if-eqz v0, :cond_a

    .line 191
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    .line 193
    :cond_a
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    return v3

    :cond_b
    if-nez v0, :cond_c

    goto :goto_5

    .line 184
    :cond_c
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "request_with_file_path_already_exist"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz v0, :cond_11

    .line 160
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 161
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 162
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 163
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 164
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v0, v4, :cond_e

    .line 165
    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 166
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 168
    :cond_e
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 169
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v0, :cond_f

    .line 170
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver$DefaultImpls;->createFile$default(Lcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    :cond_f
    const-wide/16 v0, 0x0

    .line 172
    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    const-wide/16 v0, -0x1

    .line 173
    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 174
    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 175
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    :cond_10
    move v3, v5

    :cond_11
    :goto_5
    return v3
.end method

.method private final removeDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 311
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 312
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Ljava/util/List;)V

    .line 811
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 314
    sget-object v2, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 315
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;->deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final resumeDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 276
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canResumeDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    .line 282
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object v0
.end method

.method private final startPriorityQueueIfNotStarted()V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->sendBackOffResetSignal()V

    .line 770
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->start()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->resume()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit v0

    .line 686
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    invoke-virtual {v0, v1, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->addListener(ILcom/tonyodev/fetch2/FetchListener;)V

    if-eqz p2, :cond_0

    .line 688
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object p2

    .line 827
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 690
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 724
    :cond_0
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 726
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 683
    monitor-exit v0

    throw p1
.end method

.method public cancel(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 5

    .line 614
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    .line 618
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/FetchListener;

    .line 620
    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    invoke-virtual {v3, v4, v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->removeListener(ILcom/tonyodev/fetch2/FetchListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 623
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit v0

    .line 628
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->stop()V

    .line 629
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 630
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 631
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->removeNamespaceInstanceReference(Ljava/lang/String;)V

    return-void

    .line 618
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public delete(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->enqueueRequests(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloads()Ljava/util/List;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadsWithStatus(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasActiveDownloads(Z)Z
    .locals 4

    .line 752
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getPendingCount(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 753
    :cond_1
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "blocking_call_on_ui_thread"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->sanitizeOnFirstEntry()V

    .line 47
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->autoStart:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->start()V

    :cond_0
    return-void
.end method

.method public pause(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->pauseDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public pausedGroup(I)Ljava/util/List;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->pauseDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->removeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 733
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/FetchListener;

    .line 735
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 737
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 741
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    invoke-virtual {v1, v2, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->removeListener(ILcom/tonyodev/fetch2/FetchListener;)V

    .line 742
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public replaceExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/Download;
    .locals 2

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    .line 472
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    .line 474
    :cond_0
    const-string v1, "request_does_not_exist"

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 476
    :cond_1
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {p1, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_2
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {p1, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resume(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->resumeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resumeAll()Ljava/util/List;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    .line 1557
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1629
    check-cast v2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 287
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1629
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->resumeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resumeGroup(I)Ljava/util/List;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 802
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1629
    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 269
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1629
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_0
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->resumeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public retry(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 381
    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canRetryDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 383
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 384
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    .line 388
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object v0
.end method
