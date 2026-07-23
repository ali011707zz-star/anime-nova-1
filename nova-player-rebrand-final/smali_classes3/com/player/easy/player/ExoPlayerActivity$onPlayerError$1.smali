.class final Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExoPlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity;->onPlayerError(Landroidx/media3/common/PlaybackException;)V
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
    c = "com.player.easy.player.ExoPlayerActivity$onPlayerError$1"
    f = "ExoPlayerActivity.kt"
    i = {
        0x0
    }
    l = {
        0x64d,
        0x654
    }
    m = "invokeSuspend"
    n = {
        "request"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $error:Landroidx/media3/common/PlaybackException;

.field final synthetic $host:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/player/easy/player/ExoPlayerActivity;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$host:Ljava/lang/String;

    iput-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iput-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$error:Landroidx/media3/common/PlaybackException;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$host:Ljava/lang/String;

    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$error:Landroidx/media3/common/PlaybackException;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;-><init>(Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1610
    iget v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->label:I

    const-string v2, "isHostReachable: "

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Request;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1612
    :try_start_1
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$host:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 1613
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-virtual {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getNetworkHelper()Lcom/player/easy/network/NetworkHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/player/easy/network/NetworkHelper;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->label:I

    invoke-static {v1, p0}, Lcom/player/easy/data/OkHttpExtensionsKt;->await(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 1614
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1, v5}, Lcom/player/easy/player/ExoPlayerActivity;->access$setHostReachable$p(Lcom/player/easy/player/ExoPlayerActivity;Z)V

    .line 1615
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$host:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is reachable"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v5}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1617
    :catch_0
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1, v4}, Lcom/player/easy/player/ExoPlayerActivity;->access$setHostReachable$p(Lcom/player/easy/player/ExoPlayerActivity;Z)V

    .line 1618
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$host:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not reachable"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1620
    :goto_1
    new-instance p1, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->$error:Landroidx/media3/common/PlaybackException;

    const/4 v5, 0x0

    invoke-direct {p1, v1, v2, v4, v5}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->label:I

    invoke-static {p1, p0}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->withUIContext(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_2
    return-object v0

    .line 1661
    :cond_4
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
