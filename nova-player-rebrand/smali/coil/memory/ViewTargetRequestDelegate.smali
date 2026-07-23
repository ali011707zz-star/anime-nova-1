.class public final Lcoil/memory/ViewTargetRequestDelegate;
.super Lcoil/memory/RequestDelegate;
.source "RequestDelegate.kt"


# instance fields
.field private final imageLoader:Lcoil/ImageLoader;

.field private final job:Lkotlinx/coroutines/Job;

.field private final request:Lcoil/request/ImageRequest;

.field private final targetDelegate:Lcoil/memory/TargetDelegate;


# direct methods
.method public constructor <init>(Lcoil/ImageLoader;Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lcoil/memory/RequestDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestDelegate;->imageLoader:Lcoil/ImageLoader;

    .line 47
    iput-object p2, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    .line 48
    iput-object p3, p0, Lcoil/memory/ViewTargetRequestDelegate;->targetDelegate:Lcoil/memory/TargetDelegate;

    .line 49
    iput-object p4, p0, Lcoil/memory/ViewTargetRequestDelegate;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->targetDelegate:Lcoil/memory/TargetDelegate;

    invoke-virtual {v0}, Lcoil/memory/TargetDelegate;->clear()V

    .line 61
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->targetDelegate:Lcoil/memory/TargetDelegate;

    invoke-static {v0, v2}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 62
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final restart()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->imageLoader:Lcoil/ImageLoader;

    iget-object v1, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-interface {v0, v1}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    return-void
.end method
