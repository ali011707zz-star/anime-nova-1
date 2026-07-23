.class public final Lcoil/memory/ViewTargetRequestManager;
.super Ljava/lang/Object;
.source "ViewTargetRequestManager.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final bitmaps:Landroidx/collection/SimpleArrayMap;

.field private currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

.field private volatile currentRequestId:Ljava/util/UUID;

.field private volatile currentRequestJob:Lkotlinx/coroutines/Job;

.field private isRestart:Z

.field private volatile metadata:Lcoil/request/ImageResult$Metadata;

.field private volatile pendingClear:Lkotlinx/coroutines/Job;

.field private skipAttach:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    .line 45
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->bitmaps:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private final newRequestId()Ljava/util/UUID;
    .locals 2

    .line 118
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 119
    iget-boolean v1, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcoil/util/-Extensions;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final clearCurrentRequest()V
    .locals 8

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    .line 86
    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestJob:Lkotlinx/coroutines/Job;

    .line 88
    iget-object v1, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 89
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v5, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;

    invoke-direct {v5, p0, v0}, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;-><init>(Lcoil/memory/ViewTargetRequestManager;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-boolean p1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    .line 103
    invoke-virtual {p1}, Lcoil/memory/ViewTargetRequestDelegate;->restart()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    .line 110
    iget-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcoil/memory/ViewTargetRequestDelegate;->dispose()V

    return-void
.end method

.method public final put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->bitmaps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    .line 53
    :cond_0
    iget-object p2, p0, Lcoil/memory/ViewTargetRequestManager;->bitmaps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final setCurrentRequest(Lcoil/memory/ViewTargetRequestDelegate;)V
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 65
    :goto_0
    iput-object v2, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    .line 68
    :goto_1
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcoil/memory/ViewTargetRequestDelegate;->dispose()V

    .line 69
    :goto_2
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    .line 70
    iput-boolean v1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    return-void
.end method

.method public final setCurrentRequestJob(Lkotlinx/coroutines/Job;)Ljava/util/UUID;
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcoil/memory/ViewTargetRequestManager;->newRequestId()Ljava/util/UUID;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    .line 78
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final setMetadata(Lcoil/request/ImageResult$Metadata;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->metadata:Lcoil/request/ImageResult$Metadata;

    return-void
.end method
