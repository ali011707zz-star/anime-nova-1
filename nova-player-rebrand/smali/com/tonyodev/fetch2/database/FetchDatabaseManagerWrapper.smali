.class public final Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
.super Ljava/lang/Object;
.source "FetchDatabaseManagerWrapper.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/database/FetchDatabaseManager;


# instance fields
.field private final fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

.field private final lock:Ljava/lang/Object;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManager;)V
    .locals 1

    const-string v0, "fetchDatabaseManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    .line 10
    invoke-interface {p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 177
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 47
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 2

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->delete(Ljava/util/List;)V

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public get()Ljava/util/List;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->get()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getByGroup(I)Ljava/util/List;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByGroup(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCount(Z)J
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getPendingCount(Z)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;
    .locals 2

    const-string v0, "prioritySort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lkotlin/Pair;
    .locals 2

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lkotlin/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public sanitizeOnFirstEntry()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->sanitizeOnFirstEntry()V

    .line 155
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V

    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 2

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->update(Ljava/util/List;)V

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 77
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
