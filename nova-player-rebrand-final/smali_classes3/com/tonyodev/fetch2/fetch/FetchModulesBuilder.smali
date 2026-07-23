.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
.super Ljava/lang/Object;
.source "FetchModulesBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;,
        Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

.field private static final holderMap:Ljava/util/Map;

.field private static final lock:Ljava/lang/Object;

.field private static final mainUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->lock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->holderMap:Ljava/util/Map;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->mainUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildModulesFromPrefs(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
    .locals 13

    const-string v0, "fetchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->holderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    if-eqz v2, :cond_0

    .line 33
    new-instance v3, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v6

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getDownloadProvider()Lcom/tonyodev/fetch2/provider/DownloadProvider;

    move-result-object v7

    .line 34
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v8

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getUiHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getDownloadManagerCoordinator()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    move-result-object v10

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v11

    move-object v4, p1

    .line 33
    invoke-direct/range {v3 .. v11}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;-><init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_0
    move-object v3, p1

    .line 36
    new-instance v4, Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 37
    new-instance v10, Lcom/tonyodev/fetch2/fetch/LiveSettings;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v10, p1}, Lcom/tonyodev/fetch2/fetch/LiveSettings;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFetchDatabaseManager()Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 39
    new-instance v5, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;

    .line 40
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v6

    .line 41
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v8

    .line 43
    sget-object p1, Lcom/tonyodev/fetch2/database/DownloadDatabase;->Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;->getMigrations()[Lcom/tonyodev/fetch2/database/migration/Migration;

    move-result-object v9

    .line 45
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFileExistChecksEnabled()Z

    move-result v11

    .line 46
    new-instance v12, Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-direct {v12, p1, v2}, Lcom/tonyodev/fetch2core/DefaultStorageResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-direct/range {v5 .. v12}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2core/Logger;[Lcom/tonyodev/fetch2/database/migration/Migration;Lcom/tonyodev/fetch2/fetch/LiveSettings;ZLcom/tonyodev/fetch2core/DefaultStorageResolver;)V

    move-object p1, v5

    .line 48
    :cond_1
    new-instance v5, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-direct {v5, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManager;)V

    .line 49
    new-instance v6, Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-direct {v6, v5}, Lcom/tonyodev/fetch2/provider/DownloadProvider;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V

    .line 50
    new-instance v8, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v7, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1, v6}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/DownloadProvider;)V

    .line 52
    new-instance v9, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object p1

    move-object v10, v9

    move-object v9, v8

    sget-object v8, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->mainUIHandler:Landroid/os/Handler;

    invoke-direct {v10, p1, v7, v6, v8}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/provider/DownloadProvider;Landroid/os/Handler;)V

    .line 53
    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    invoke-direct/range {v2 .. v10}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;-><init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V

    move-object p1, v2

    .line 55
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    .line 56
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-result-object v10

    .line 55
    invoke-direct/range {v2 .. v10}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p1

    .line 59
    :goto_0
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->incrementUsageCounter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v1

    return-object v3

    :goto_1
    monitor-exit v1

    throw p1
.end method

.method public final getMainUIHandler()Landroid/os/Handler;
    .locals 1

    .line 27
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->mainUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final removeNamespaceInstanceReference(Ljava/lang/String;)V
    .locals 4

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->holderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->decrementUsageCounter()V

    .line 69
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->close()V

    .line 71
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->clearAll()V

    .line 72
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->clear()V

    .line 73
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->close()V

    .line 74
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getDownloadManagerCoordinator()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->clearAll()V

    .line 75
    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->unregisterAllNetworkChangeListeners()V

    .line 76
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
