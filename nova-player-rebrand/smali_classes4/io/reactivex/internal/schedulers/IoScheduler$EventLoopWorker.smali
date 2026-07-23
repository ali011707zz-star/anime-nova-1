.class final Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "IoScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field private final tasks:Lio/reactivex/disposables/CompositeDisposable;

.field private final threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V
    .locals 1

    .line 216
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    .line 218
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    .line 219
    invoke-virtual {p1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->get()Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 7

    .line 224
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 226
    sget-boolean v0, Lio/reactivex/internal/schedulers/IoScheduler;->USE_SCHEDULED_RELEASE:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    return-void

    :cond_0
    move-object v2, p0

    .line 230
    iget-object v0, v2, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    iget-object v1, v2, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->release(Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;)V

    return-void

    :cond_1
    move-object v2, p0

    return-void
.end method

.method public run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->release(Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 6

    .line 248
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 253
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method
