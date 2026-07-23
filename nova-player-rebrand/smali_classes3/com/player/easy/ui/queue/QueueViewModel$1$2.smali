.class final Lcom/player/easy/ui/queue/QueueViewModel$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QueueViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/queue/QueueViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/player/easy/ui/queue/QueuedUpdates;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/player/easy/ui/queue/QueuedUpdates;"
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
    c = "com.player.easy.ui.queue.QueueViewModel$1$2"
    f = "QueueViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x33
    }
    m = "invokeSuspend"
    n = {
        "it"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQueueViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueueViewModel.kt\ncom/player/easy/ui/queue/QueueViewModel$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n832#2:154\n862#2,2:155\n1068#2:157\n1586#2:158\n1661#2,3:159\n*S KotlinDebug\n*F\n+ 1 QueueViewModel.kt\ncom/player/easy/ui/queue/QueueViewModel$1$2\n*L\n54#1:154\n54#1:155,2\n55#1:157\n56#1:158\n56#1:159,3\n*E\n"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/queue/QueueViewModel;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/queue/QueueViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/queue/QueueViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/queue/QueueViewModel$1$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance v0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;

    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-direct {v0, v1, p2}, Lcom/player/easy/ui/queue/QueueViewModel$1$2;-><init>(Lcom/player/easy/ui/queue/QueueViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/player/easy/ui/queue/QueuedUpdates;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/queue/QueuedUpdates;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/queue/QueueViewModel$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/player/easy/ui/queue/QueuedUpdates;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->invoke(Lcom/player/easy/ui/queue/QueuedUpdates;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/player/easy/ui/queue/QueuedUpdates;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    instance-of p1, v0, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    if-eqz p1, :cond_7

    .line 50
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getActiveDownloadFlow"

    invoke-virtual {p1, v4, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-static {p1}, Lcom/player/easy/ui/queue/QueueViewModel;->access$getDownloadManager$p(Lcom/player/easy/ui/queue/QueueViewModel;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->label:I

    invoke-virtual {p1, p0}, Lcom/player/easy/data/download/DownloadManager;->getDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 48
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 54
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v4, v5, :cond_3

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 155
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_5
    new-instance v1, Lcom/player/easy/ui/queue/QueueViewModel$1$2$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/player/easy/ui/queue/QueueViewModel$1$2$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-static {v1}, Lcom/player/easy/ui/queue/QueueViewModel;->access$get_queue$p(Lcom/player/easy/ui/queue/QueueViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 160
    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 56
    new-instance v4, Lcom/player/easy/ui/queue/QueueItem;

    invoke-direct {v4, v3}, Lcom/player/easy/ui/queue/QueueItem;-><init>(Lcom/tonyodev/fetch2/Download;)V

    .line 160
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_6
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-static {v0}, Lcom/player/easy/ui/queue/QueueViewModel;->access$getAllDownloads$p(Lcom/player/easy/ui/queue/QueueViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-static {v0}, Lcom/player/easy/ui/queue/QueueViewModel;->access$getAllDownloads$p(Lcom/player/easy/ui/queue/QueueViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_3

    .line 60
    :cond_7
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueViewModel$1$2;->this$0:Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-static {p1}, Lcom/player/easy/ui/queue/QueueViewModel;->access$get_update$p(Lcom/player/easy/ui/queue/QueueViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 62
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
