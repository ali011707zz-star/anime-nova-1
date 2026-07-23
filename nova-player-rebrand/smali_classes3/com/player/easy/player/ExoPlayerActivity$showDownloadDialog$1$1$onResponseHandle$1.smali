.class final Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExoPlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1;->onResponseHandle(Ljava/net/HttpURLConnection;ILjava/lang/String;)V
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
    c = "com.player.easy.player.ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1"
    f = "ExoPlayerActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $conn:Ljava/net/HttpURLConnection;

.field label:I

.field final synthetic this$0:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/net/HttpURLConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/player/ExoPlayerActivity;",
            "Ljava/net/HttpURLConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iput-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->$conn:Ljava/net/HttpURLConnection;

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
    new-instance p1, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->$conn:Ljava/net/HttpURLConnection;

    invoke-direct {p1, v0, v1, p2}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/net/HttpURLConnection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1138
    iget v0, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1$1$onResponseHandle$1;->$conn:Ljava/net/HttpURLConnection;

    invoke-static {p1, v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$parseOkHeaders(Lcom/player/easy/player/ExoPlayerActivity;Ljava/net/HttpURLConnection;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
