.class public final Lcoil/memory/BaseRequestDelegate;
.super Lcoil/memory/RequestDelegate;
.source "RequestDelegate.kt"


# instance fields
.field private final job:Lkotlinx/coroutines/Job;

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcoil/memory/RequestDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    iput-object p1, p0, Lcoil/memory/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 32
    iput-object p2, p0, Lcoil/memory/BaseRequestDelegate;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcoil/memory/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcoil/memory/BaseRequestDelegate;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
