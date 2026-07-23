.class final Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FinishedViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/finished/FinishedViewModel;->observeDownloadChangeFlow()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/tonyodev/fetch2/Download;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/tonyodev/fetch2/Download;"
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
    c = "com.player.easy.ui.finished.FinishedViewModel$observeDownloadChangeFlow$1"
    f = "FinishedViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x6f
    }
    m = "invokeSuspend"
    n = {
        "$this$callbackFlow",
        "listener"
    }
    s = {
        "L$0",
        "L$1"
    }
    v = 0x1
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/finished/FinishedViewModel;


# direct methods
.method public static synthetic $r8$lambda$s-sd-HaHr93dl7voCSfVk8NvqPA(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->invokeSuspend$lambda$0(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/finished/FinishedViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;)Lkotlin/Unit;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/player/easy/ui/finished/FinishedViewModel;->access$getDownloadManager$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/Fetch;->removeListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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
    new-instance v0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;

    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-direct {v0, v1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 89
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p1, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;

    invoke-direct {p1, v0}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 110
    iget-object v2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-static {v2}, Lcom/player/easy/ui/finished/FinishedViewModel;->access$getDownloadManager$p(Lcom/player/easy/ui/finished/FinishedViewModel;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tonyodev/fetch2/Fetch;->addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    .line 111
    iget-object v2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->this$0:Lcom/player/easy/ui/finished/FinishedViewModel;

    new-instance v4, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/finished/FinishedViewModel;Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1$listener$1;)V

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/player/easy/ui/finished/FinishedViewModel$observeDownloadChangeFlow$1;->label:I

    invoke-static {v0, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 112
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
