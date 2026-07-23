.class final Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.player.easy.ui.main.MainActivity$showDownloadInfoDialog$1$1$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0x11e
    }
    m = "invokeSuspend"
    n = {
        "sizeOf"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $dialogBinding:Lcom/player/easy/databinding/DialogInfoBinding;

.field final synthetic $url:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/main/MainActivity;Ljava/lang/String;Lcom/player/easy/databinding/DialogInfoBinding;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/main/MainActivity;",
            "Ljava/lang/String;",
            "Lcom/player/easy/databinding/DialogInfoBinding;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->this$0:Lcom/player/easy/ui/main/MainActivity;

    iput-object p2, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->$dialogBinding:Lcom/player/easy/databinding/DialogInfoBinding;

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
    new-instance p1, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;

    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->this$0:Lcom/player/easy/ui/main/MainActivity;

    iget-object v1, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->$dialogBinding:Lcom/player/easy/databinding/DialogInfoBinding;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;-><init>(Lcom/player/easy/ui/main/MainActivity;Ljava/lang/String;Lcom/player/easy/databinding/DialogInfoBinding;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 283
    iget v1, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 285
    :try_start_1
    sget-object p1, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    iget-object v1, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->this$0:Lcom/player/easy/ui/main/MainActivity;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->$url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcom/player/easy/util/Utils;->getFileSize(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1$1;

    iget-object v4, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->$dialogBinding:Lcom/player/easy/databinding/DialogInfoBinding;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1$1;-><init>(Lcom/player/easy/databinding/DialogInfoBinding;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/player/easy/ui/main/MainActivity$showDownloadInfoDialog$1$1$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 288
    :goto_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 290
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
