.class public abstract Landroidx/lifecycle/ViewModelKt;
.super Ljava/lang/Object;
.source "ViewModel.kt"


# static fields
.field private static final VIEW_MODEL_SCOPE_LOCK:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 233
    new-instance v0, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;-><init>()V

    sput-object v0, Landroidx/lifecycle/ViewModelKt;->VIEW_MODEL_SCOPE_LOCK:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    return-void
.end method

.method public static final getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v0, Landroidx/lifecycle/ViewModelKt;->VIEW_MODEL_SCOPE_LOCK:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 23
    monitor-enter v0

    .line 227
    :try_start_0
    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/ViewModel;->getCloseable(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    if-nez v1, :cond_0

    .line 228
    invoke-static {}, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScopeKt;->createViewModelScope()Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    .line 229
    const-string v2, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v2, v1}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method
