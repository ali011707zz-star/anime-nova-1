.class public final Lcom/tonyodev/fetch2core/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.kt"


# instance fields
.field private closed:Z

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private final namespace:Ljava/lang/String;

.field private usageCounter:I

.field private workerTaskHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$RqMJn2Qmc5iSztIoPvu80cOEQJ8(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post$lambda$2$lambda$1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->namespace:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 14
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p2, p1

    .line 13
    :cond_0
    iput-object p2, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static final post$lambda$2$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 23
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 114
    :try_start_1
    iget-object v2, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 120
    :catch_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->workerTaskHandler:Landroid/os/Handler;

    .line 121
    iput-object v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->workerTaskHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :catch_1
    :cond_1
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final decrementUsageCounter()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_1

    .line 55
    iget v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 58
    :try_start_1
    iput v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCounter:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_2
    const-string v0, "null cannot be cast to non-null type com.tonyodev.fetch2core.HandlerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2core/HandlerWrapper;

    .line 135
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->namespace:Ljava/lang/String;

    iget-object p1, p1, Lcom/tonyodev/fetch2core/HandlerWrapper;->namespace:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    const-string v0, "synchronized(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final incrementUsageCounter()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_0

    .line 47
    iget v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCounter:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 49
    :cond_0
    :goto_0
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

.method public final post(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tonyodev/fetch2core/HandlerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/tonyodev/fetch2core/HandlerWrapper$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final usageCount()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->closed:Z

    if-nez v1, :cond_0

    .line 66
    iget v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
