.class public final Lcoil/memory/PoolableTargetDelegate;
.super Lcoil/memory/TargetDelegate;
.source "TargetDelegate.kt"


# instance fields
.field private final eventListener:Lcoil/EventListener;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final target:Lcoil/target/PoolableViewTarget;


# direct methods
.method public constructor <init>(Lcoil/target/PoolableViewTarget;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V
    .locals 0

    const-string p4, "target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "referenceCounter"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "eventListener"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 103
    invoke-direct {p0, p4}, Lcoil/memory/TargetDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    iput-object p1, p0, Lcoil/memory/PoolableTargetDelegate;->target:Lcoil/target/PoolableViewTarget;

    .line 100
    iput-object p2, p0, Lcoil/memory/PoolableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 101
    iput-object p3, p0, Lcoil/memory/PoolableTargetDelegate;->eventListener:Lcoil/EventListener;

    return-void
.end method

.method public static final synthetic access$decrement(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcoil/memory/PoolableTargetDelegate;->decrement(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getReferenceCounter$p(Lcoil/memory/PoolableTargetDelegate;)Lcoil/bitmap/BitmapReferenceCounter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcoil/memory/PoolableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object p0
.end method

.method public static final synthetic access$increment(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcoil/memory/PoolableTargetDelegate;->increment(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final decrement(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object v0

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcoil/memory/ViewTargetRequestManager;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcoil/memory/PoolableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {v0, p1}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method private final increment(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcoil/memory/PoolableTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {v0, p1}, Lcoil/bitmap/BitmapReferenceCounter;->increment(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 124
    invoke-static {p0}, Lcoil/memory/PoolableTargetDelegate;->access$getReferenceCounter$p(Lcoil/memory/PoolableTargetDelegate;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v0

    instance-of v0, v0, Lcoil/bitmap/EmptyBitmapReferenceCounter;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lcoil/target/PoolableViewTarget;->onClear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0}, Lcoil/memory/PoolableTargetDelegate;->access$increment(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Lcoil/target/PoolableViewTarget;->onClear()V

    .line 129
    invoke-static {p0, v0}, Lcoil/memory/PoolableTargetDelegate;->access$decrement(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcoil/memory/PoolableTargetDelegate$error$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/memory/PoolableTargetDelegate$error$1;

    iget v1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/memory/PoolableTargetDelegate$error$1;

    invoke-direct {v0, p0, p2}, Lcoil/memory/PoolableTargetDelegate$error$1;-><init>(Lcoil/memory/PoolableTargetDelegate;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget v2, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcoil/EventListener;

    iget-object v1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcoil/memory/PoolableTargetDelegate;

    iget-object v0, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ErrorResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_2
    iget-object p1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcoil/EventListener;

    iget-object v0, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ErrorResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    invoke-static {p0}, Lcoil/memory/PoolableTargetDelegate;->access$getReferenceCounter$p(Lcoil/memory/PoolableTargetDelegate;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object p2

    instance-of p2, p2, Lcoil/bitmap/EmptyBitmapReferenceCounter;

    if-eqz p2, :cond_7

    .line 125
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object p2

    .line 114
    iget-object v2, p0, Lcoil/memory/PoolableTargetDelegate;->eventListener:Lcoil/EventListener;

    .line 182
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v3

    .line 183
    sget-object v5, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v3, v5, :cond_4

    .line 184
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 188
    :cond_4
    instance-of v5, p2, Lcoil/transition/TransitionTarget;

    if-nez v5, :cond_5

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

    goto/16 :goto_6

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 200
    check-cast p2, Lcoil/transition/TransitionTarget;

    iput-object p1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->label:I

    invoke-interface {v3, p2, p1, v0}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, p1

    move-object p1, v2

    .line 201
    :goto_1
    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    goto :goto_6

    .line 127
    :cond_7
    invoke-static {p0, v5}, Lcoil/memory/PoolableTargetDelegate;->access$increment(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object p2

    .line 114
    iget-object v2, p0, Lcoil/memory/PoolableTargetDelegate;->eventListener:Lcoil/EventListener;

    .line 182
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v4

    .line 183
    sget-object v6, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v4, v6, :cond_8

    .line 184
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 188
    :cond_8
    instance-of v6, p2, Lcoil/transition/TransitionTarget;

    if-nez v6, :cond_9

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

    :goto_2
    move-object v1, p0

    goto :goto_5

    .line 199
    :cond_9
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v6

    invoke-interface {v2, v6}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 200
    check-cast p2, Lcoil/transition/TransitionTarget;

    iput-object p1, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcoil/memory/PoolableTargetDelegate$error$1;->label:I

    invoke-interface {v4, p2, p1, v0}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    move-object v1, p0

    move-object v0, p1

    move-object p1, v2

    .line 201
    :goto_4
    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    .line 129
    :goto_5
    invoke-static {v1, v5}, Lcoil/memory/PoolableTargetDelegate;->access$decrement(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    .line 115
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getTarget()Lcoil/target/PoolableViewTarget;
    .locals 1

    .line 99
    iget-object v0, p0, Lcoil/memory/PoolableTargetDelegate;->target:Lcoil/target/PoolableViewTarget;

    return-object v0
.end method

.method public bridge synthetic getTarget()Lcoil/target/Target;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 124
    invoke-static {p0}, Lcoil/memory/PoolableTargetDelegate;->access$getReferenceCounter$p(Lcoil/memory/PoolableTargetDelegate;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v0

    instance-of v0, v0, Lcoil/bitmap/EmptyBitmapReferenceCounter;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object p2

    .line 106
    invoke-interface {p2, p1}, Lcoil/target/Target;->onStart(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 127
    :cond_0
    invoke-static {p0, p2}, Lcoil/memory/PoolableTargetDelegate;->access$increment(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1}, Lcoil/target/Target;->onStart(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-static {p0, p2}, Lcoil/memory/PoolableTargetDelegate;->access$decrement(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcoil/memory/PoolableTargetDelegate$success$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/memory/PoolableTargetDelegate$success$1;

    iget v1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/memory/PoolableTargetDelegate$success$1;

    invoke-direct {v0, p0, p2}, Lcoil/memory/PoolableTargetDelegate$success$1;-><init>(Lcoil/memory/PoolableTargetDelegate;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget v2, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcoil/EventListener;

    iget-object v1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcoil/memory/PoolableTargetDelegate;

    iget-object v0, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/request/SuccessResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    iget-object p1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcoil/EventListener;

    iget-object v0, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/request/SuccessResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_4
    move-object p2, v5

    :goto_1
    if-nez p2, :cond_5

    move-object p2, v5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 124
    :goto_2
    invoke-static {p0}, Lcoil/memory/PoolableTargetDelegate;->access$getReferenceCounter$p(Lcoil/memory/PoolableTargetDelegate;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v2

    instance-of v2, v2, Lcoil/bitmap/EmptyBitmapReferenceCounter;

    if-eqz v2, :cond_9

    .line 125
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object p2

    .line 110
    iget-object v2, p0, Lcoil/memory/PoolableTargetDelegate;->eventListener:Lcoil/EventListener;

    .line 154
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v3

    .line 155
    sget-object v5, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v3, v5, :cond_6

    .line 156
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

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

    goto/16 :goto_8

    .line 171
    :cond_7
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 172
    check-cast p2, Lcoil/transition/TransitionTarget;

    iput-object p1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->label:I

    invoke-interface {v3, p2, p1, v0}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, p1

    move-object p1, v2

    .line 173
    :goto_3
    invoke-virtual {v0}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    goto :goto_8

    .line 127
    :cond_9
    invoke-static {p0, p2}, Lcoil/memory/PoolableTargetDelegate;->access$increment(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {p0}, Lcoil/memory/PoolableTargetDelegate;->getTarget()Lcoil/target/PoolableViewTarget;

    move-result-object v2

    .line 110
    iget-object v4, p0, Lcoil/memory/PoolableTargetDelegate;->eventListener:Lcoil/EventListener;

    .line 154
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v5

    .line 155
    sget-object v6, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v5, v6, :cond_a

    .line 156
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v2, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 160
    :cond_a
    instance-of v6, v2, Lcoil/transition/TransitionTarget;

    if-nez v6, :cond_b

    .line 162
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    .line 167
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v2, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    move-object v2, p0

    goto :goto_7

    .line 171
    :cond_b
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 172
    check-cast v2, Lcoil/transition/TransitionTarget;

    iput-object p1, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcoil/memory/PoolableTargetDelegate$success$1;->label:I

    invoke-interface {v5, v2, p1, v0}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    :goto_5
    return-object v1

    :cond_c
    move-object v2, p0

    move-object v0, p1

    move-object v1, p2

    move-object p1, v4

    .line 173
    :goto_6
    invoke-virtual {v0}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    move-object p2, v1

    .line 129
    :goto_7
    invoke-static {v2, p2}, Lcoil/memory/PoolableTargetDelegate;->access$decrement(Lcoil/memory/PoolableTargetDelegate;Landroid/graphics/Bitmap;)V

    .line 111
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
