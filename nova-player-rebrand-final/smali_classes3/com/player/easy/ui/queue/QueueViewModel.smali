.class public final Lcom/player/easy/ui/queue/QueueViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "QueueViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0014J\u000e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0014J\u0014\u0010\u0018\u001a\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0008J\u0014\u0010\u001a\u001a\u00020\u00162\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0008J\u0014\u0010\u001c\u001a\u00020\u00162\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/player/easy/ui/queue/QueueViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "downloadManager",
        "Lcom/player/easy/data/download/DownloadManager;",
        "_queue",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/player/easy/ui/queue/QueueItem;",
        "queue",
        "Landroidx/lifecycle/LiveData;",
        "getQueue",
        "()Landroidx/lifecycle/LiveData;",
        "_update",
        "Lcom/player/easy/ui/queue/QueuedUpdates;",
        "update",
        "getUpdate",
        "allDownloads",
        "",
        "Lcom/tonyodev/fetch2/Download;",
        "pause",
        "",
        "download",
        "resume",
        "downloads",
        "reorderQueue",
        "oldList",
        "deleteDownloads",
        "selectedQueues",
        "observeDownloadChangeFlow",
        "Lkotlinx/coroutines/flow/Flow;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQueueViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueueViewModel.kt\ncom/player/easy/ui/queue/QueueViewModel\n+ 2 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n30#2:154\n27#3:155\n1586#4:156\n1661#4,3:157\n*S KotlinDebug\n*F\n+ 1 QueueViewModel.kt\ncom/player/easy/ui/queue/QueueViewModel\n*L\n26#1:154\n26#1:155\n89#1:156\n89#1:157,3\n*E\n"
    }
.end annotation


# instance fields
.field private _queue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private _update:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final allDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadManager:Lcom/player/easy/data/download/DownloadManager;

.field private final queue:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final update:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TWOXNn54yktiVrWvTgXAJbFfuP0(Lcom/player/easy/ui/queue/QueueViewModel;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueViewModel;->resume$lambda$0(Lcom/player/easy/ui/queue/QueueViewModel;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 7

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 26
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/player/easy/ui/queue/QueueViewModel$special$$inlined$get$1;

    invoke-direct {v1}, Lcom/player/easy/ui/queue/QueueViewModel$special$$inlined$get$1;-><init>()V

    .line 154
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    .line 26
    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->_queue:Landroidx/lifecycle/MutableLiveData;

    .line 29
    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->queue:Landroidx/lifecycle/LiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->_update:Landroidx/lifecycle/MutableLiveData;

    .line 32
    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->update:Landroidx/lifecycle/LiveData;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->allDownloads:Ljava/util/List;

    .line 37
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/player/easy/ui/queue/QueueViewModel$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/player/easy/ui/queue/QueueViewModel$1;-><init>(Lcom/player/easy/ui/queue/QueueViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getAllDownloads$p(Lcom/player/easy/ui/queue/QueueViewModel;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->allDownloads:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getDownloadManager$p(Lcom/player/easy/ui/queue/QueueViewModel;)Lcom/player/easy/data/download/DownloadManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    return-object p0
.end method

.method public static final synthetic access$get_queue$p(Lcom/player/easy/ui/queue/QueueViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->_queue:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_update$p(Lcom/player/easy/ui/queue/QueueViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->_update:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$observeDownloadChangeFlow(Lcom/player/easy/ui/queue/QueueViewModel;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueViewModel;->observeDownloadChangeFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method private final observeDownloadChangeFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/player/easy/ui/queue/QueuedUpdates;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/player/easy/ui/queue/QueueViewModel$observeDownloadChangeFlow$1;-><init>(Lcom/player/easy/ui/queue/QueueViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 151
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method private static final resume$lambda$0(Lcom/player/easy/ui/queue/QueueViewModel;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/player/easy/util/download/FetchExtensionsKt;->resume(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final deleteDownloads(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedQueues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Lcom/player/easy/ui/queue/QueueItem;

    .line 89
    invoke-virtual {v1}, Lcom/player/easy/ui/queue/QueueItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/Fetch;->delete(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    return-void
.end method

.method public final getQueue()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->queue:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getUpdate()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->update:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final pause(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/player/easy/data/download/DownloadManager;->pause(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public final reorderQueue(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/player/easy/ui/queue/QueueViewModel$reorderQueue$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/player/easy/ui/queue/QueueViewModel$reorderQueue$1;-><init>(Lcom/player/easy/ui/queue/QueueViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final resume(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/player/easy/data/download/DownloadManager;->resume$default(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final resume(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 76
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tonyodev/fetch2/Download;

    invoke-virtual {p0, p1}, Lcom/player/easy/ui/queue/QueueViewModel;->resume(Lcom/tonyodev/fetch2/Download;)V

    return-void

    .line 78
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/Download;

    .line 79
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 80
    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    new-instance v2, Lcom/player/easy/ui/queue/QueueViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/player/easy/ui/queue/QueueViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/queue/QueueViewModel;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/player/easy/data/download/DownloadManager;->resume(Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
