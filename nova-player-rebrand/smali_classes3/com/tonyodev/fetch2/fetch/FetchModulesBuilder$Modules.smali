.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
.super Ljava/lang/Object;
.source "FetchModulesBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Modules"
.end annotation


# instance fields
.field private final downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

.field private final downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

.field private final fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

.field private final fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

.field private final handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

.field private final priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    move-object/from16 v8, p8

    const-string v2, "fetchConfiguration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "handlerWrapper"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fetchDatabaseManagerWrapper"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "downloadProvider"

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "groupInfoProvider"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uiHandler"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "downloadManagerCoordinator"

    move-object/from16 v5, p7

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listenerCoordinator"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    .line 92
    iput-object v3, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    .line 93
    iput-object v12, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    .line 96
    iput-object v13, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->uiHandler:Landroid/os/Handler;

    .line 98
    iput-object v8, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 102
    new-instance v2, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-direct {v2, v12}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V

    iput-object v2, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    .line 103
    new-instance v6, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getInternetCheckUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    .line 107
    new-instance v14, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;

    .line 108
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getHttpDownloader()Lcom/tonyodev/fetch2core/Downloader;

    move-result-object v15

    .line 109
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getConcurrentLimit()I

    move-result v16

    .line 110
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getProgressReportingIntervalMillis()J

    move-result-wide v17

    .line 111
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v19

    .line 113
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getRetryOnNetworkGain()Z

    move-result v21

    .line 117
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;

    move-result-object v25

    .line 118
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getHashCheckingEnabled()Z

    move-result v26

    .line 119
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;

    move-result-object v27

    .line 120
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v28

    .line 122
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getMaxAutoRetryAttempts()I

    move-result v30

    .line 123
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getPreAllocateFileOnCreation()Z

    move-result v31

    move-object/from16 v29, p5

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v8

    .line 107
    invoke-direct/range {v14 .. v31}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;-><init>(Lcom/tonyodev/fetch2core/Downloader;IJLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2core/FileServerDownloader;ZLcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;IZ)V

    iput-object v14, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    .line 125
    new-instance v2, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    .line 130
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v7

    .line 132
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getConcurrentLimit()I

    move-result v9

    .line 133
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object v11

    move-object v5, v14

    .line 125
    invoke-direct/range {v2 .. v11}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;ILjava/lang/String;Lcom/tonyodev/fetch2/PrioritySort;)V

    iput-object v2, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    .line 135
    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;

    invoke-virtual {v14, v3}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->setPriorityBackoffResetCallback(Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;)V

    .line 136
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 137
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;

    move-object v5, v2

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v6

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAutoStart()Z

    move-result v7

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getHttpDownloader()Lcom/tonyodev/fetch2core/Downloader;

    move-result-object v8

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;

    move-result-object v9

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;

    move-result-object v12

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFetchNotificationManager()Lcom/tonyodev/fetch2/FetchNotificationManager;

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object v15

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getCreateFileOnEnqueue()Z

    move-result v16

    const/4 v13, 0x0

    move-object/from16 v3, p3

    move-object/from16 v11, p6

    move-object/from16 v10, p8

    move-object v4, v14

    move-object/from16 v14, p5

    .line 137
    invoke-direct/range {v1 .. v16}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/helper/PriorityListProcessor;Lcom/tonyodev/fetch2core/Logger;ZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2core/FileServerDownloader;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Landroid/os/Handler;Lcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/PrioritySort;Z)V

    move-object v12, v3

    move-object v3, v1

    :cond_0
    iput-object v3, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    .line 153
    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;

    invoke-direct {v1, v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)V

    invoke-virtual {v12, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V

    return-void
.end method


# virtual methods
.method public final getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    return-object v0
.end method

.method public final getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-object v0
.end method

.method public final getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-object v0
.end method

.method public final getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object v0
.end method

.method public final getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    return-object v0
.end method

.method public final getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object v0
.end method

.method public final getUiHandler()Landroid/os/Handler;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method
