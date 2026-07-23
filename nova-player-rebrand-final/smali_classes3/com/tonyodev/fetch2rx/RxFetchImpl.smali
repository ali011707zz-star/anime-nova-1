.class public Lcom/tonyodev/fetch2rx/RxFetchImpl;
.super Ljava/lang/Object;
.source "RxFetchImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2rx/RxFetch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;


# instance fields
.field private final activeDownloadsRunnable:Ljava/lang/Runnable;

.field private final activeDownloadsSet:Ljava/util/Set;

.field private volatile closed:Z

.field private final fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

.field private final fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

.field private final handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final lock:Ljava/lang/Object;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final namespace:Ljava/lang/String;

.field private final scheduler:Lio/reactivex/Scheduler;

.field private final uiHandler:Landroid/os/Handler;

.field private final uiScheduler:Lio/reactivex/Scheduler;


# direct methods
.method public static synthetic $r8$lambda$4x4l0Zq3PoNqTqDKbUMMiWfQx1I(Lcom/tonyodev/fetch2rx/RxFetchImpl;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->_init_$lambda$3(Lcom/tonyodev/fetch2rx/RxFetchImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J61dHNMzxpl1U7bQ-4ECmUujsW8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/reactivestreams/Publisher;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->hasActiveDownloads$lambda$175$lambda$174(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SMJtaMGZ-LtJke323L1Rck-qMc8(Lcom/tonyodev/fetch2rx/RxFetchImpl;Ljava/lang/Boolean;)Lorg/reactivestreams/Publisher;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->hasActiveDownloads$lambda$175$lambda$173(Lcom/tonyodev/fetch2rx/RxFetchImpl;Ljava/lang/Boolean;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fwGyvRY2EdQJCiNQOJ6pY6pY1Qk(Lcom/tonyodev/fetch2rx/RxFetchImpl;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->activeDownloadsRunnable$lambda$2$lambda$1(Lcom/tonyodev/fetch2rx/RxFetchImpl;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzRhV_GG2HFDZlGcm7DkLhUhdT4(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->activeDownloadsRunnable$lambda$2(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->Companion:Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Landroid/os/Handler;Lcom/tonyodev/fetch2/fetch/FetchHandler;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->namespace:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    .line 22
    iput-object p3, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    .line 23
    iput-object p4, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->uiHandler:Landroid/os/Handler;

    .line 24
    iput-object p5, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    .line 25
    iput-object p6, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 26
    iput-object p7, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 27
    iput-object p8, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    .line 29
    invoke-virtual {p3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->scheduler:Lio/reactivex/Scheduler;

    .line 30
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->uiScheduler:Lio/reactivex/Scheduler;

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->lock:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->activeDownloadsSet:Ljava/util/Set;

    .line 41
    new-instance p1, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    .line 64
    new-instance p1, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda1;-><init>(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V

    invoke-virtual {p3, p1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 67
    invoke-direct {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->registerActiveDownloadsRunnable()V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/tonyodev/fetch2rx/RxFetchImpl;)Lkotlin/Unit;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->init()V

    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final activeDownloadsRunnable$lambda$2(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V
    .locals 4

    .line 42
    invoke-virtual {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result v1

    .line 45
    iget-object v2, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda2;-><init>(Lcom/tonyodev/fetch2rx/RxFetchImpl;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final activeDownloadsRunnable$lambda$2$lambda$1(Lcom/tonyodev/fetch2rx/RxFetchImpl;ZZ)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->activeDownloadsSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 52
    throw p0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->registerActiveDownloadsRunnable()V

    :cond_2
    return-void
.end method

.method private static final hasActiveDownloads$lambda$175$lambda$173(Lcom/tonyodev/fetch2rx/RxFetchImpl;Ljava/lang/Boolean;)Lorg/reactivestreams/Publisher;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->throwExceptionIfClosed()V

    .line 1007
    iget-object p0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result p0

    .line 1008
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method private static final hasActiveDownloads$lambda$175$lambda$174(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/reactivestreams/Publisher;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/reactivestreams/Publisher;

    return-object p0
.end method

.method private final registerActiveDownloadsRunnable()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/FetchConfiguration;->getActiveDownloadsCheckInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    .line 1138
    iget-boolean v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 1139
    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "This rxFetch instance has been closed. Create a new instance using the builder."

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    return-object v0
.end method

.method public hasActiveDownloads(Z)Lcom/tonyodev/fetch2rx/Convertible;
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl;->throwExceptionIfClosed()V

    .line 1003
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1004
    iget-object v1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1005
    new-instance v1, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda3;-><init>(Lcom/tonyodev/fetch2rx/RxFetchImpl;)V

    new-instance v2, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/tonyodev/fetch2rx/RxFetchImpl$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1010
    iget-object v1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->uiScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1005
    const-string v1, "observeOn(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-static {p1}, Lcom/tonyodev/fetch2rx/util/RxUtilsKt;->toConvertible(Lio/reactivex/Flowable;)Lcom/tonyodev/fetch2rx/Convertible;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public isClosed()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2rx/RxFetchImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
