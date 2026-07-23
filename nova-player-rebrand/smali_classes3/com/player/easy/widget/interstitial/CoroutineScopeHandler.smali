.class public final Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;
.super Ljava/lang/Object;
.source "CoroutineScopeHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u000f\u001a\u00020\u00102\u001c\u0010\u0011\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012\u00a2\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;",
        "",
        "<init>",
        "()V",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getJob",
        "()Lkotlinx/coroutines/CompletableJob;",
        "job$delegate",
        "Lkotlin/Lazy;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope$delegate",
        "launch",
        "Lkotlinx/coroutines/Job;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;",
        "dispose",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coroutineScope$delegate:Lkotlin/Lazy;

.field private final job$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$kXjVBXXWXe2wM3yv-z4P6ntEqvw()Lkotlinx/coroutines/CompletableJob;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->job_delegate$lambda$0()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$rxz7g9yV6AiYo7CmwA187fHut60(Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->coroutineScope_delegate$lambda$0(Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->job$delegate:Lkotlin/Lazy;

    .line 9
    new-instance v0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->coroutineScope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final coroutineScope_delegate$lambda$0(Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->getJob()Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method private final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->coroutineScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final getJob()Lkotlinx/coroutines/CompletableJob;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->job$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method

.method private static final job_delegate$lambda$0()Lkotlinx/coroutines/CompletableJob;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 23
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final launch(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$launch$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler$launch$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
