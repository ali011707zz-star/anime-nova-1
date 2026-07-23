.class public abstract Lcoil/size/ViewSizeResolver$DefaultImpls;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/ViewSizeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static final synthetic access$getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;
    .locals 0

    .line 10
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lcoil/size/ViewSizeResolver$DefaultImpls;->removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static getDimension(Lcoil/size/ViewSizeResolver;IIIZ)I
    .locals 1

    sub-int v0, p1, p3

    if-lez v0, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p3

    if-lez p2, :cond_1

    return p2

    :cond_1
    const/4 p2, -0x2

    if-ne p1, p2, :cond_3

    .line 111
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p4, :cond_2

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    :cond_2
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getHeight(Lcoil/size/ViewSizeResolver;)I
    .locals 5

    .line 84
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    :goto_0
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 86
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getSubtractPadding()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 83
    :goto_1
    invoke-static {p0, v0, v1, v2, v3}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getDimension(Lcoil/size/ViewSizeResolver;IIIZ)I

    move-result p0

    return p0
.end method

.method private static getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;
    .locals 2

    .line 68
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getWidth(Lcoil/size/ViewSizeResolver;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getHeight(Lcoil/size/ViewSizeResolver;)I

    move-result p0

    if-gtz p0, :cond_1

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Lcoil/size/PixelSize;

    invoke-direct {v1, v0, p0}, Lcoil/size/PixelSize;-><init>(II)V

    return-object v1
.end method

.method private static getWidth(Lcoil/size/ViewSizeResolver;)I
    .locals 4

    .line 75
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    :goto_0
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 77
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getSubtractPadding()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    .line 74
    invoke-static {p0, v0, v1, v2, v3}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getDimension(Lcoil/size/ViewSizeResolver;IIIZ)I

    move-result p0

    return p0
.end method

.method private static removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 122
    :cond_0
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static size(Lcoil/size/ViewSizeResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 36
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 135
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 40
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 42
    new-instance v2, Lcoil/size/ViewSizeResolver$size$3$preDrawListener$1;

    invoke-direct {v2, p0, v1, v0}, Lcoil/size/ViewSizeResolver$size$3$preDrawListener$1;-><init>(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 61
    new-instance v3, Lcoil/size/ViewSizeResolver$size$3$1;

    invoke-direct {v3, p0, v1, v2}, Lcoil/size/ViewSizeResolver$size$3$1;-><init>(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Lcoil/size/ViewSizeResolver$size$3$preDrawListener$1;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 137
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 128
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method
