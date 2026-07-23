.class final Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ViewTargetRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/memory/ViewTargetRequestManager;->clearCurrentRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcoil/memory/ViewTargetRequestManager;


# direct methods
.method constructor <init>(Lcoil/memory/ViewTargetRequestManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->this$0:Lcoil/memory/ViewTargetRequestManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;

    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->this$0:Lcoil/memory/ViewTargetRequestManager;

    invoke-direct {p1, v0, p2}, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;-><init>(Lcoil/memory/ViewTargetRequestManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 89
    iget v0, p0, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;->this$0:Lcoil/memory/ViewTargetRequestManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequest(Lcoil/memory/ViewTargetRequestDelegate;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
