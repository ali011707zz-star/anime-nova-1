.class final Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/data/notification/NotificationReceiver;->retryDownload(ILandroid/content/Context;)V
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
    c = "com.player.easy.data.notification.NotificationReceiver$retryDownload$1"
    f = "NotificationReceiver.kt"
    i = {}
    l = {
        0x33
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $downloadId:I

.field label:I

.field final synthetic this$0:Lcom/player/easy/data/notification/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/player/easy/data/notification/NotificationReceiver;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/data/notification/NotificationReceiver;",
            "I",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->this$0:Lcom/player/easy/data/notification/NotificationReceiver;

    iput p2, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$downloadId:I

    iput-object p3, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$context:Landroid/content/Context;

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
    new-instance p1, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;

    iget-object v0, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->this$0:Lcom/player/easy/data/notification/NotificationReceiver;

    iget v1, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$downloadId:I

    iget-object v2, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;-><init>(Lcom/player/easy/data/notification/NotificationReceiver;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->label:I

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

    .line 51
    iget-object p1, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->this$0:Lcom/player/easy/data/notification/NotificationReceiver;

    invoke-static {p1}, Lcom/player/easy/data/notification/NotificationReceiver;->access$getDownloadManager(Lcom/player/easy/data/notification/NotificationReceiver;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    iput v2, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->label:I

    invoke-virtual {p1, p0}, Lcom/player/easy/data/download/DownloadManager;->getActiveDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 50
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    .line 53
    iget-object p1, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->this$0:Lcom/player/easy/data/notification/NotificationReceiver;

    invoke-static {p1}, Lcom/player/easy/data/notification/NotificationReceiver;->access$getDownloadManager(Lcom/player/easy/data/notification/NotificationReceiver;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    iget v0, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$downloadId:I

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/Fetch;->retry(I)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->this$0:Lcom/player/easy/data/notification/NotificationReceiver;

    invoke-static {p1}, Lcom/player/easy/data/notification/NotificationReceiver;->access$getDownloadManager(Lcom/player/easy/data/notification/NotificationReceiver;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    iget v0, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$downloadId:I

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/Fetch;->retry(I)Lcom/tonyodev/fetch2/Fetch;

    .line 56
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object v0, p0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/player/easy/data/download/DownloadService$Companion;->start(Landroid/content/Context;)V

    .line 58
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
