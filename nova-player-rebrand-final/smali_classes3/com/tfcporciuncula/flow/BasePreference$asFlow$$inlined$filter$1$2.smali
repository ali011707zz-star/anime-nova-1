.class public final Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2;->this$0:Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;

    iget v1, v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;-><init>(Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 134
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 32
    iget-object v4, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2;->this$0:Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;

    iget-object v4, v4, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1;->this$0:Lcom/tfcporciuncula/flow/BasePreference;

    invoke-virtual {v4}, Lcom/tfcporciuncula/flow/BasePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iput v3, v0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$filter$1$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 136
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
