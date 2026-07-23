.class final Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FinishedViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/finished/FinishedViewModel;->deleteDownloads(Ljava/util/List;Z)V
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
    c = "com.player.easy.ui.finished.FinishedViewModel$deleteDownloads$1"
    f = "FinishedViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFinishedViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FinishedViewModel.kt\ncom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n1586#2:116\n1661#2,3:117\n1915#2,2:120\n1915#2,2:122\n*S KotlinDebug\n*F\n+ 1 FinishedViewModel.kt\ncom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1\n*L\n76#1:116\n76#1:117,3\n79#1:120,2\n81#1:122,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $selectedFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/finished/FinishedItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $withFile:Z

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/finished/FinishedViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;ZLcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/finished/FinishedItem;",
            ">;Z",
            "Lcom/player/easy/ui/finished/FinishedViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->$selectedFinished:Ljava/util/List;

    iput-boolean p2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->$withFile:Z

    iput-object p3, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;

    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->$selectedFinished:Ljava/util/List;

    iget-boolean v1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->$withFile:Z

    iget-object v2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;-><init>(Ljava/util/List;ZLcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 75
    iget v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->$selectedFinished:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    check-cast v1, Lcom/player/easy/ui/finished/FinishedItem;

    .line 76
    invoke-virtual {v1}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    iget-boolean p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->$withFile:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 79
    invoke-static {p1}, Lcom/player/easy/ui/finished/FinishedViewModel;->access$getDownloadManager$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2/Fetch;->delete(I)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$deleteDownloads$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 81
    invoke-static {p1}, Lcom/player/easy/ui/finished/FinishedViewModel;->access$getDownloadManager$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2/Fetch;->remove(I)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_2

    .line 83
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
