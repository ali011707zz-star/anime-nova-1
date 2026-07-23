.class public final Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
.super Ljava/lang/Object;
.source "GroupInfoProvider.kt"


# instance fields
.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

.field private final groupInfoMap:Ljava/util/Map;

.field private final lock:Ljava/lang/Object;

.field private final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/DownloadProvider;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->namespace:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->lock:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->groupInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->groupInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 53
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final clear()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->groupInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 59
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getGroupInfo(ILcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/model/FetchGroupInfo;
    .locals 4

    .line 16
    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->groupInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 19
    new-instance v1, Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    iget-object v3, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->namespace:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;-><init>(ILjava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-virtual {v3, p1}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getByGroup(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p2}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->update(Ljava/util/List;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->groupInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;
    .locals 3

    const-string v0, "download"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupInfo(ILcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-virtual {v2, p1, p2}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getByGroupReplace(ILcom/tonyodev/fetch2/Download;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1, p2, p3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->update(Ljava/util/List;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->groupInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 40
    iget-object v2, p0, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-virtual {v2, p1, p2}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getByGroupReplace(ILcom/tonyodev/fetch2/Download;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1, p2, p3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->update(Ljava/util/List;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
