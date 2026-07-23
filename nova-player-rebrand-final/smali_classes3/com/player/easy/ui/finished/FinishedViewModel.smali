.class public final Lcom/player/easy/ui/finished/FinishedViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FinishedViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013J\u001c\u0010\u0018\u001a\u00020\u000f2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/ui/finished/FinishedViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "downloadManager",
        "Lcom/player/easy/data/download/DownloadManager;",
        "_finished",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/player/easy/ui/finished/FinishedItem;",
        "finished",
        "Landroidx/lifecycle/LiveData;",
        "getFinished",
        "()Landroidx/lifecycle/LiveData;",
        "refreshDownloads",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeDownload",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "withFile",
        "",
        "redownloadFile",
        "forceStart",
        "deleteDownloads",
        "selectedFinished",
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
        "SMAP\nFinishedViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FinishedViewModel.kt\ncom/player/easy/ui/finished/FinishedViewModel\n+ 2 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n*L\n1#1,115:1\n30#2:116\n27#3:117\n*S KotlinDebug\n*F\n+ 1 FinishedViewModel.kt\ncom/player/easy/ui/finished/FinishedViewModel\n*L\n23#1:116\n23#1:117\n*E\n"
    }
.end annotation


# instance fields
.field private _finished:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final downloadManager:Lcom/player/easy/data/download/DownloadManager;

.field private final finished:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 21
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/player/easy/ui/finished/FinishedViewModel$special$$inlined$get$1;

    invoke-direct {v1}, Lcom/player/easy/ui/finished/FinishedViewModel$special$$inlined$get$1;-><init>()V

    .line 116
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    .line 23
    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel;->_finished:Landroidx/lifecycle/MutableLiveData;

    .line 26
    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel;->finished:Landroidx/lifecycle/LiveData;

    .line 29
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/player/easy/ui/finished/FinishedViewModel$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/player/easy/ui/finished/FinishedViewModel$1;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getDownloadManager$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Lcom/player/easy/data/download/DownloadManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/player/easy/ui/finished/FinishedViewModel;->downloadManager:Lcom/player/easy/data/download/DownloadManager;

    return-object p0
.end method

.method public static final synthetic access$get_finished$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/player/easy/ui/finished/FinishedViewModel;->_finished:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$observeDownloadChangeFlow(Lcom/player/easy/ui/finished/FinishedViewModel;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedViewModel;->observeDownloadChangeFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshDownloads(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedViewModel;->refreshDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final observeDownloadChangeFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 113
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method private final refreshDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic removeDownload$default(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/tonyodev/fetch2/Download;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel;->removeDownload(Lcom/tonyodev/fetch2/Download;Z)V

    return-void
.end method


# virtual methods
.method public final deleteDownloads(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/finished/FinishedItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "selectedFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;-><init>(Ljava/util/List;ZLcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final forceStart(Lcom/tonyodev/fetch2/Download;)V
    .locals 7

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/player/easy/ui/finished/FinishedViewModel$forceStart$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/player/easy/ui/finished/FinishedViewModel$forceStart$1;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getFinished()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel;->finished:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final redownloadFile(Lcom/tonyodev/fetch2/Download;)V
    .locals 7

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/player/easy/ui/finished/FinishedViewModel$redownloadFile$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/player/easy/ui/finished/FinishedViewModel$redownloadFile$1;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final removeDownload(Lcom/tonyodev/fetch2/Download;Z)V
    .locals 7

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/player/easy/ui/finished/FinishedViewModel$removeDownload$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p0, p1, v0}, Lcom/player/easy/ui/finished/FinishedViewModel$removeDownload$1;-><init>(ZLcom/player/easy/ui/finished/FinishedViewModel;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
