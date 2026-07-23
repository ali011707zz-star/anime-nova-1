.class public final Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;
.super Lcom/player/easy/util/download/DownloadListener;
.source "QueueViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1",
        "Lcom/player/easy/util/download/DownloadListener;",
        "onAdded",
        "",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "onQueued",
        "waitingOnNetwork",
        "",
        "onCompleted",
        "onError",
        "error",
        "Lcom/tonyodev/fetch2/Error;",
        "throwable",
        "",
        "onRemoved",
        "onDeleted",
        "onResumed",
        "onPaused",
        "onProgress",
        "etaInMilliSeconds",
        "",
        "downloadedBytesPerSecond",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Lcom/player/easy/ui/queue/QueuedUpdates;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/player/easy/ui/queue/QueuedUpdates;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 98
    invoke-direct {p0}, Lcom/player/easy/util/download/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdded(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdded"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    invoke-direct {v1, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Other;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCompleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCompleted"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    invoke-direct {v1, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Other;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDeleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDeleted"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    invoke-direct {v1, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Other;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "download"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "error"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "onError"

    invoke-virtual {p2, v0, p3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object p2, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p3, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    invoke-direct {p3, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Other;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {p2, p3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPaused(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPaused"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/player/easy/ui/queue/QueuedUpdates$Paused;

    invoke-direct {v1, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Paused;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 0

    const-string p2, "download"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "onProgress"

    invoke-virtual {p2, p4, p3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object p2, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p3, Lcom/player/easy/ui/queue/QueuedUpdates$Progress;

    invoke-direct {p3, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Progress;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {p2, p3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onQueued(Lcom/tonyodev/fetch2/Download;Z)V
    .locals 2

    const-string p2, "download"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onQueued"

    invoke-virtual {p2, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object p2, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    invoke-direct {v0, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Other;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRemoved(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoved"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    invoke-direct {v1, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Other;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResumed(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onResumed"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/player/easy/ui/queue/QueuedUpdates$Resume;

    invoke-direct {v1, p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Resume;-><init>(Lcom/tonyodev/fetch2/Download;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
