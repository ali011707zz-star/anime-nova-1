.class public final Lcoil/transition/CrossfadeTransition;
.super Ljava/lang/Object;
.source "CrossfadeTransition.kt"

# interfaces
.implements Lcoil/transition/Transition;


# instance fields
.field private final durationMillis:I

.field private final preferExactIntrinsicSize:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    .line 29
    iput-boolean p2, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "durationMillis must be > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x64

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2}, Lcoil/transition/CrossfadeTransition;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 85
    instance-of v0, p1, Lcoil/transition/CrossfadeTransition;

    if-eqz v0, :cond_0

    iget v0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    check-cast p1, Lcoil/transition/CrossfadeTransition;

    iget p1, p1, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDurationMillis()I
    .locals 1

    .line 28
    iget v0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    return v0
.end method

.method public final getPreferExactIntrinsicSize()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 88
    iget v0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossfadeTransition(durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lcoil/transition/CrossfadeTransition$transition$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcoil/transition/CrossfadeTransition$transition$1;

    iget v1, v0, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/transition/CrossfadeTransition$transition$1;

    invoke-direct {v0, p0, p3}, Lcoil/transition/CrossfadeTransition$transition$1;-><init>(Lcoil/transition/CrossfadeTransition;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcoil/transition/CrossfadeTransition$transition$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcoil/request/ImageResult;

    iget-object p2, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcoil/transition/TransitionTarget;

    iget-object p2, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcoil/transition/CrossfadeTransition;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto/16 :goto_6

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    instance-of p3, p2, Lcoil/request/SuccessResult;

    if-eqz p3, :cond_3

    move-object v2, p2

    check-cast v2, Lcoil/request/SuccessResult;

    invoke-virtual {v2}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/request/ImageResult$Metadata;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v4

    sget-object v5, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    if-ne v4, v5, :cond_3

    .line 39
    invoke-virtual {v2}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 45
    :cond_3
    invoke-interface {p1}, Lcoil/transition/TransitionTarget;->getView()Landroid/view/View;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 54
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 101
    :try_start_1
    iput-object p0, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcoil/transition/CrossfadeTransition$transition$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    .line 102
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 108
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 57
    new-instance v5, Lcoil/drawable/CrossfadeDrawable;

    .line 58
    invoke-interface {p1}, Lcoil/transition/TransitionTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 59
    invoke-virtual {p2}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 60
    invoke-interface {p1}, Lcoil/transition/TransitionTarget;->getView()Landroid/view/View;

    move-result-object v4

    instance-of v8, v4, Landroid/widget/ImageView;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    move-object p1, p3

    goto :goto_6

    :cond_4
    move-object v4, v9

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcoil/util/-Extensions;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object v9

    :goto_2
    if-nez v9, :cond_6

    sget-object v9, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    :cond_6
    move-object v8, v9

    .line 61
    invoke-virtual {p0}, Lcoil/transition/CrossfadeTransition;->getDurationMillis()I

    move-result v9

    .line 62
    instance-of v4, p2, Lcoil/request/SuccessResult;

    if-eqz v4, :cond_8

    move-object v4, p2

    check-cast v4, Lcoil/request/SuccessResult;

    invoke-virtual {v4}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_3
    move v10, v3

    .line 63
    invoke-virtual {p0}, Lcoil/transition/CrossfadeTransition;->getPreferExactIntrinsicSize()Z

    move-result v11

    .line 57
    invoke-direct/range {v5 .. v11}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V

    .line 65
    iput-object v5, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    new-instance v3, Lcoil/transition/CrossfadeTransition$transition$2$1;

    invoke-direct {v3, v5, v2}, Lcoil/transition/CrossfadeTransition$transition$2$1;-><init>(Lcoil/drawable/CrossfadeDrawable;Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {v5, v3}, Lcoil/drawable/CrossfadeDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 73
    instance-of v3, p2, Lcoil/request/SuccessResult;

    if-eqz v3, :cond_9

    invoke-interface {p1, v5}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 74
    :cond_9
    instance-of p2, p2, Lcoil/request/ErrorResult;

    if-eqz p2, :cond_a

    invoke-interface {p1, v5}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_a
    :goto_4
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 101
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    if-ne p1, v1, :cond_c

    return-object v1

    .line 82
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 79
    :goto_6
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcoil/drawable/CrossfadeDrawable;

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcoil/drawable/CrossfadeDrawable;->stop()V

    .line 80
    :goto_7
    throw p2

    :cond_e
    if-eqz p3, :cond_f

    .line 47
    check-cast p2, Lcoil/request/SuccessResult;

    invoke-virtual {p2}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 48
    :cond_f
    instance-of p3, p2, Lcoil/request/ErrorResult;

    if-eqz p3, :cond_10

    invoke-virtual {p2}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_10
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
