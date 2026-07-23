.class final Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentLifecycleCallbacksHolder"
.end annotation


# instance fields
.field private final callback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field private final recursive:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->callback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 28
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->recursive:Z

    return-void
.end method


# virtual methods
.method public final getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .locals 1

    .line 27
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->callback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    return-object v0
.end method

.method public final getRecursive()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->recursive:Z

    return v0
.end method
