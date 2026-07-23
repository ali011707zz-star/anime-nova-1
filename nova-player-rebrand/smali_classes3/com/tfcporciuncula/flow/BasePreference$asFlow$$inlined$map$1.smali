.class public final Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfcporciuncula/flow/BasePreference;->asFlow()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field final synthetic this$0:Lcom/tfcporciuncula/flow/BasePreference;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/tfcporciuncula/flow/BasePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;->this$0:Lcom/tfcporciuncula/flow/BasePreference;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 114
    new-instance v1, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1$2;

    invoke-direct {v1, p1, p0}, Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/tfcporciuncula/flow/BasePreference$asFlow$$inlined$map$1;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 109
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
