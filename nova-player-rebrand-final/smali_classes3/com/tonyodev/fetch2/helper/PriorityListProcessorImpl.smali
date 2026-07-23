.class public final Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;
.super Ljava/lang/Object;
.source "PriorityListProcessorImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/helper/PriorityListProcessor;
.implements Lcom/tonyodev/fetch2/helper/PriorityBackoffResetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;


# instance fields
.field private volatile backOffTime:J

.field private volatile downloadConcurrentLimit:I

.field private final downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

.field private volatile globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

.field private final handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final lock:Ljava/lang/Object;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final namespace:Ljava/lang/String;

.field private final networkChangeListener:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

.field private volatile paused:Z

.field private final priorityIteratorRunnable:Ljava/lang/Runnable;

.field private final prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

.field private volatile stopped:Z


# direct methods
.method public static synthetic $r8$lambda$2VZ5DaeOsILqpJYeldHpYkY4eAY(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable$lambda$0(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$coHufw1WJTyqNHnAmz_fLdwoWpM(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->onResetBackoffTime$lambda$6(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->Companion:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;ILjava/lang/String;Lcom/tonyodev/fetch2/PrioritySort;)V
    .locals 1

    const-string v0, "handlerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prioritySort"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    .line 18
    iput-object p2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    .line 19
    iput-object p3, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    .line 20
    iput-object p4, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    .line 21
    iput-object p5, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 22
    iput-object p6, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 23
    iput p7, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadConcurrentLimit:I

    .line 25
    iput-object p8, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->namespace:Ljava/lang/String;

    .line 26
    iput-object p9, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    .line 32
    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    const-wide/16 p1, 0x1f4

    .line 42
    iput-wide p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    .line 43
    new-instance p1, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkChangeListener:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

    .line 55
    invoke-virtual {p4, p1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->registerNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V

    .line 58
    new-instance p1, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getBackOffTime$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    return-wide v0
.end method

.method public static final synthetic access$getHandlerWrapper$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object p0
.end method

.method public static final synthetic access$getNetworkInfoProvider$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object p0
.end method

.method public static final synthetic access$getPaused$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    return p0
.end method

.method public static final synthetic access$getStopped$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    return p0
.end method

.method private final canContinueToProcess()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final increaseBackOffTime()V
    .locals 5

    .line 204
    iget-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 207
    :cond_0
    iget-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 204
    :goto_0
    iput-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    .line 209
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 210
    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PriorityIterator backoffTime increased to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " minute(s)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static final onResetBackoffTime$lambda$6(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->namespace:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    .line 162
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final priorityIteratorRunnable$lambda$0(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 9

    .line 59
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 60
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->canAccommodateNewDownload()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getPriorityList()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_9

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-ltz v1, :cond_a

    move v4, v3

    .line 69
    :goto_2
    iget-object v5, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->canAccommodateNewDownload()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tonyodev/fetch2/Download;

    .line 71
    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->isFetchFileServerUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 72
    iget-object v7, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_2
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 74
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    sget-object v8, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    if-eq v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    goto :goto_3

    .line 75
    :cond_3
    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    if-ne v7, v8, :cond_4

    sget-object v7, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    goto :goto_3

    .line 76
    :cond_4
    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 78
    :goto_3
    iget-object v8, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isOnAllowedNetwork(Lcom/tonyodev/fetch2/NetworkType;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 80
    iget-object v8, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v8}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/tonyodev/fetch2/FetchListener;->onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V

    :cond_5
    if-nez v6, :cond_6

    if-eqz v7, :cond_8

    .line 84
    :cond_6
    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->contains(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 85
    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v2, v5}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->start(Lcom/tonyodev/fetch2/Download;)Z

    :cond_7
    move v2, v3

    :cond_8
    if-eq v4, v1, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move v2, v1

    :cond_a
    if-eqz v2, :cond_b

    .line 97
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->increaseBackOffTime()V

    .line 100
    :cond_b
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    :cond_c
    return-void
.end method

.method private final registerPriorityIterator()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getDownloadConcurrentLimit()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private final unregisterPriorityIterator()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getDownloadConcurrentLimit()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkChangeListener:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->unregisterNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V

    .line 200
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDownloadConcurrentLimit()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadConcurrentLimit:I

    return v0
.end method

.method public getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public getPriorityList()Ljava/util/List;
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 151
    :try_start_1
    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "PriorityIterator failed access database"

    invoke-interface {v2, v3, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public isPaused()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    return v0
.end method

.method public onResetBackoffTime(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v1, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->unregisterPriorityIterator()V

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    .line 131
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancelAll()V

    .line 132
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator paused"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 133
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public resetBackOffTime()V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x1f4

    .line 184
    :try_start_0
    iput-wide v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    .line 185
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->unregisterPriorityIterator()V

    .line 186
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    .line 187
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-wide v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PriorityIterator backoffTime reset to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 188
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public resume()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    .line 140
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    .line 141
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    .line 142
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator resumed"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 143
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public sendBackOffResetSignal()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->namespace:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->onResetBackoffTime(Ljava/lang/String;)V

    .line 194
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-void
.end method

.method public start()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    .line 110
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    .line 111
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    .line 112
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator started"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->unregisterPriorityIterator()V

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    .line 121
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancelAll()V

    .line 122
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator stop"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
