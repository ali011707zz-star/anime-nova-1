.class final Lcom/player/easy/data/download/DownloadManager$pause$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/data/download/DownloadManager;->pause(Lcom/tonyodev/fetch2/Download;)V
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
    c = "com.player.easy.data.download.DownloadManager$pause$1"
    f = "DownloadManager.kt"
    i = {
        0x1,
        0x2
    }
    l = {
        0xdd,
        0xe0,
        0xe5
    }
    m = "invokeSuspend"
    n = {
        "downloads",
        "downloads"
    }
    s = {
        "L$0",
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $download:Lcom/tonyodev/fetch2/Download;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/data/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/data/download/DownloadManager;",
            "Lcom/tonyodev/fetch2/Download;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/data/download/DownloadManager$pause$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    iput-object p2, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->$download:Lcom/tonyodev/fetch2/Download;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/player/easy/data/download/DownloadManager$pause$1;

    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->$download:Lcom/tonyodev/fetch2/Download;

    invoke-direct {p1, v0, v1, p2}, Lcom/player/easy/data/download/DownloadManager$pause$1;-><init>(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager$pause$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager$pause$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/data/download/DownloadManager$pause$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/data/download/DownloadManager$pause$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 219
    iget v1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    :try_start_2
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    new-array v1, v3, [Lcom/tonyodev/fetch2/Status;

    sget-object v5, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    sget-object v5, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    aput-object v5, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput v4, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/player/easy/data/download/DownloadManager;->access$getDownloadWithStatus(Lcom/player/easy/data/download/DownloadManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 219
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 224
    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {v1}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v1

    iget-object v2, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->$download:Lcom/tonyodev/fetch2/Download;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->label:I

    invoke-static {v1, v2, p0}, Lcom/player/easy/util/download/FetchExtensionsKt;->pause(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    .line 225
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 229
    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {v1}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->label:I

    invoke-static {v1, v3, p0}, Lcom/player/easy/util/download/FetchExtensionsKt;->pause(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_1
    return-object v0

    .line 230
    :cond_6
    :goto_2
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$pause$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {v0}, Lcom/player/easy/data/download/DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/player/easy/data/download/DownloadService$Companion;->stop(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :catch_0
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
