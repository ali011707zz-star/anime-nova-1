.class public final Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
.super Ljava/lang/Object;
.source "ListenerCoordinator.kt"


# instance fields
.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

.field private final downloadsObserverMap:Ljava/util/Map;

.field private final fetchGroupListenerMap:Ljava/util/Map;

.field private final fetchListenerMap:Ljava/util/Map;

.field private final fetchNotificationHandler:Landroid/os/Handler;

.field private final fetchNotificationManagerList:Ljava/util/List;

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

.field private final lock:Ljava/lang/Object;

.field private final mainListener:Lcom/tonyodev/fetch2/FetchListener;

.field private final namespace:Ljava/lang/String;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/provider/DownloadProvider;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfoProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->namespace:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    .line 15
    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    .line 16
    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->uiHandler:Landroid/os/Handler;

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    .line 23
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FetchNotificationsIO"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 25
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationHandler:Landroid/os/Handler;

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    .line 93
    new-instance p1, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->mainListener:Lcom/tonyodev/fetch2/FetchListener;

    return-void
.end method

.method public static final synthetic access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final addListener(ILcom/tonyodev/fetch2/FetchListener;)V
    .locals 3

    const-string v0, "fetchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final clearAll()V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 723
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 724
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 725
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 726
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getMainListener()Lcom/tonyodev/fetch2/FetchListener;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->mainListener:Lcom/tonyodev/fetch2/FetchListener;

    return-object v0
.end method

.method public final removeListener(ILcom/tonyodev/fetch2/FetchListener;)V
    .locals 2

    const-string v0, "fetchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 48
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 66
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
