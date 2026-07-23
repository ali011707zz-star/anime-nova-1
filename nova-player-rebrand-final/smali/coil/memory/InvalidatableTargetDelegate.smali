.class public final Lcoil/memory/InvalidatableTargetDelegate;
.super Lcoil/memory/TargetDelegate;
.source "TargetDelegate.kt"


# instance fields
.field private final eventListener:Lcoil/EventListener;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final target:Lcoil/target/Target;


# direct methods
.method public constructor <init>(Lcoil/target/Target;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V
    .locals 0

    const-string p4, "target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "referenceCounter"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "eventListener"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 78
    invoke-direct {p0, p4}, Lcoil/memory/TargetDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    iput-object p1, p0, Lcoil/memory/InvalidatableTargetDelegate;->target:Lcoil/target/Target;

    .line 75
    iput-object p2, p0, Lcoil/memory/InvalidatableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 76
    iput-object p3, p0, Lcoil/memory/InvalidatableTargetDelegate;->eventListener:Lcoil/EventListener;

    return-void
.end method


# virtual methods
.method public error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcoil/memory/InvalidatableTargetDelegate$error$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;

    iget v1, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;

    invoke-direct {v0, p0, p2}, Lcoil/memory/InvalidatableTargetDelegate$error$1;-><init>(Lcoil/memory/InvalidatableTargetDelegate;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 90
    iget v2, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcoil/EventListener;

    iget-object v0, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ErrorResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcoil/memory/InvalidatableTargetDelegate;->getTarget()Lcoil/target/Target;

    move-result-object p2

    iget-object v2, p0, Lcoil/memory/InvalidatableTargetDelegate;->eventListener:Lcoil/EventListener;

    .line 182
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v4

    .line 183
    sget-object v5, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v4, v5, :cond_3

    .line 184
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 188
    :cond_3
    instance-of v5, p2, Lcoil/transition/TransitionTarget;

    if-nez v5, :cond_4

    .line 190
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    .line 195
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 199
    :cond_4
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 200
    check-cast p2, Lcoil/transition/TransitionTarget;

    iput-object p1, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcoil/memory/InvalidatableTargetDelegate$error$1;->label:I

    invoke-interface {v4, p2, p1, v0}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p1

    move-object p1, v2

    .line 201
    :goto_1
    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    .line 202
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getTarget()Lcoil/target/Target;
    .locals 1

    .line 74
    iget-object v0, p0, Lcoil/memory/InvalidatableTargetDelegate;->target:Lcoil/target/Target;

    return-object v0
.end method

.method public start(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcoil/memory/InvalidatableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 199
    invoke-interface {v0, p2, v1}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcoil/memory/InvalidatableTargetDelegate;->getTarget()Lcoil/target/Target;

    move-result-object p2

    invoke-interface {p2, p1}, Lcoil/target/Target;->onStart(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcoil/memory/InvalidatableTargetDelegate$success$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;

    iget v1, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;

    invoke-direct {v0, p0, p2}, Lcoil/memory/InvalidatableTargetDelegate$success$1;-><init>(Lcoil/memory/InvalidatableTargetDelegate;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget v2, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcoil/EventListener;

    iget-object v0, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/request/SuccessResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    iget-object p2, p0, Lcoil/memory/InvalidatableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 146
    invoke-virtual {p1}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_5

    const/4 v2, 0x0

    .line 199
    invoke-interface {p2, v5, v2}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcoil/memory/InvalidatableTargetDelegate;->getTarget()Lcoil/target/Target;

    move-result-object p2

    iget-object v2, p0, Lcoil/memory/InvalidatableTargetDelegate;->eventListener:Lcoil/EventListener;

    .line 154
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v4

    .line 155
    sget-object v5, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v4, v5, :cond_6

    .line 156
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 160
    :cond_6
    instance-of v5, p2, Lcoil/transition/TransitionTarget;

    if-nez v5, :cond_7

    .line 162
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    .line 167
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 171
    :cond_7
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 172
    check-cast p2, Lcoil/transition/TransitionTarget;

    iput-object p1, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcoil/memory/InvalidatableTargetDelegate$success$1;->label:I

    invoke-interface {v4, p2, p1, v0}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, p1

    move-object p1, v2

    .line 173
    :goto_3
    invoke-virtual {v0}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    .line 174
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
