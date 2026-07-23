.class final Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FinishedViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/finished/FinishedViewModel;->refreshDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.player.easy.ui.finished.FinishedViewModel$refreshDownloads$2"
    f = "FinishedViewModel.kt"
    i = {}
    l = {
        0x27
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFinishedViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FinishedViewModel.kt\ncom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n777#2:116\n873#2,2:117\n1080#2:119\n1586#2:120\n1661#2,3:121\n*S KotlinDebug\n*F\n+ 1 FinishedViewModel.kt\ncom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2\n*L\n42#1:116\n42#1:117,2\n43#1:119\n44#1:120\n44#1:121,3\n*E\n"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/finished/FinishedViewModel;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/finished/FinishedViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;

    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-direct {p1, v0, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Refreshing Finished Downloads"

    invoke-virtual {p1, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-static {p1}, Lcom/player/easy/ui/finished/FinishedViewModel;->access$getDownloadManager$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    iput v2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->label:I

    invoke-virtual {p1, p0}, Lcom/player/easy/data/download/DownloadManager;->getDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 37
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/Download;

    .line 42
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v3, v4, :cond_4

    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_3

    .line 117
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_5
    new-instance p1, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 44
    new-instance v2, Lcom/player/easy/ui/finished/FinishedItem;

    invoke-direct {v2, v1}, Lcom/player/easy/ui/finished/FinishedItem;-><init>(Lcom/tonyodev/fetch2/Download;)V

    .line 122
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 46
    :cond_6
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$refreshDownloads$2;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-static {p1}, Lcom/player/easy/ui/finished/FinishedViewModel;->access$get_finished$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 47
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
