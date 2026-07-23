.class public final Lcoil/memory/DelegateService;
.super Ljava/lang/Object;
.source "DelegateService.kt"


# instance fields
.field private final imageLoader:Lcoil/ImageLoader;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;


# direct methods
.method public constructor <init>(Lcoil/ImageLoader;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/util/Logger;)V
    .locals 0

    const-string p3, "imageLoader"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "referenceCounter"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcoil/memory/DelegateService;->imageLoader:Lcoil/ImageLoader;

    .line 23
    iput-object p2, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-void
.end method


# virtual methods
.method public final createRequestDelegate(Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)Lcoil/memory/RequestDelegate;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    .line 58
    instance-of v2, v1, Lcoil/target/ViewTarget;

    if-eqz v2, :cond_2

    .line 59
    new-instance v2, Lcoil/memory/ViewTargetRequestDelegate;

    iget-object v3, p0, Lcoil/memory/DelegateService;->imageLoader:Lcoil/ImageLoader;

    invoke-direct {v2, v3, p1, p2, p3}, Lcoil/memory/ViewTargetRequestDelegate;-><init>(Lcoil/ImageLoader;Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)V

    .line 60
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 62
    instance-of p1, v1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_0

    .line 63
    move-object p1, v1

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    check-cast v1, Lcoil/target/ViewTarget;

    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequest(Lcoil/memory/ViewTargetRequestDelegate;)V

    .line 70
    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 71
    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p1

    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcoil/memory/ViewTargetRequestManager;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_1
    return-object v2

    .line 75
    :cond_2
    new-instance p1, Lcoil/memory/BaseRequestDelegate;

    invoke-direct {p1, v0, p3}, Lcoil/memory/BaseRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 76
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p1
.end method

.method public final createTargetDelegate(Lcoil/target/Target;ILcoil/EventListener;)Lcoil/memory/TargetDelegate;
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcoil/memory/InvalidatableEmptyTargetDelegate;

    iget-object p2, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-direct {p1, p2}, Lcoil/memory/InvalidatableEmptyTargetDelegate;-><init>(Lcoil/bitmap/BitmapReferenceCounter;)V

    return-object p1

    .line 37
    :cond_0
    new-instance p2, Lcoil/memory/InvalidatableTargetDelegate;

    iget-object v1, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-direct {p2, p1, v1, p3, v0}, Lcoil/memory/InvalidatableTargetDelegate;-><init>(Lcoil/target/Target;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V

    return-object p2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p1, :cond_3

    .line 40
    sget-object p1, Lcoil/memory/EmptyTargetDelegate;->INSTANCE:Lcoil/memory/EmptyTargetDelegate;

    return-object p1

    .line 41
    :cond_3
    instance-of p2, p1, Lcoil/target/PoolableViewTarget;

    if-eqz p2, :cond_4

    new-instance p2, Lcoil/memory/PoolableTargetDelegate;

    check-cast p1, Lcoil/target/PoolableViewTarget;

    iget-object v1, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-direct {p2, p1, v1, p3, v0}, Lcoil/memory/PoolableTargetDelegate;-><init>(Lcoil/target/PoolableViewTarget;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V

    return-object p2

    .line 42
    :cond_4
    new-instance p2, Lcoil/memory/InvalidatableTargetDelegate;

    iget-object v1, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-direct {p2, p1, v1, p3, v0}, Lcoil/memory/InvalidatableTargetDelegate;-><init>(Lcoil/target/Target;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V

    return-object p2
.end method
