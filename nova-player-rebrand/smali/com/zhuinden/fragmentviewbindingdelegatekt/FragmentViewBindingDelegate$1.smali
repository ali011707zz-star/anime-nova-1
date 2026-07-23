.class public final Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;
.super Ljava/lang/Object;
.source "FragmentViewBindingDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

.field private final viewLifecycleOwnerObserver:Landroidx/lifecycle/Observer;


# direct methods
.method constructor <init>(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1$viewLifecycleOwnerObserver$1;

    invoke-direct {p1, p0}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1$viewLifecycleOwnerObserver$1;-><init>(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;)V

    iput-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->viewLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    invoke-virtual {p1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->viewLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    invoke-virtual {p1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->viewLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
