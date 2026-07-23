.class final Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FoldersViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/folders/FoldersViewModel;->loadVideos()V
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
    c = "com.player.easy.ui.folders.FoldersViewModel$loadVideos$1"
    f = "FoldersViewModel.kt"
    i = {}
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/player/easy/ui/folders/FoldersViewModel;


# direct methods
.method public static synthetic $r8$lambda$asK80vYGZe2owFLoVtZPQBCoprQ(Lcom/player/easy/ui/folders/FoldersViewModel;Z)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->invokeSuspend$lambda$0(Lcom/player/easy/ui/folders/FoldersViewModel;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/ui/folders/FoldersViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/player/easy/ui/folders/FoldersViewModel;Z)Lkotlin/Unit;
    .locals 3

    .line 99
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentResolver detect change. selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->loadVideos()V

    .line 101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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
    new-instance p1, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;

    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-direct {p1, v0, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->label:I

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

    .line 92
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-static {p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$get_state$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Lcom/player/easy/util/result/Result$Loading;->INSTANCE:Lcom/player/easy/util/result/Result$Loading;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    iput v2, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->label:I

    invoke-static {p1, p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$queryVideos(Lcom/player/easy/ui/folders/FoldersViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 91
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-static {v0}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$get_state$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/player/easy/util/result/Result$Success;

    invoke-direct {v1, p1}, Lcom/player/easy/util/result/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-static {p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$getContentObserver$p(Lcom/player/easy/ui/folders/FoldersViewModel;)Landroid/database/ContentObserver;

    move-result-object p1

    if-nez p1, :cond_3

    .line 97
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    .line 98
    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "getContentResolver(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->this$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    new-instance v3, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/folders/FoldersViewModel;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/ui/folders/FoldersViewModel;->registerObserver$default(Lcom/player/easy/ui/folders/FoldersViewModel;Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/database/ContentObserver;

    move-result-object p1

    .line 97
    invoke-static {v0, p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->access$setContentObserver$p(Lcom/player/easy/ui/folders/FoldersViewModel;Landroid/database/ContentObserver;)V

    .line 103
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
