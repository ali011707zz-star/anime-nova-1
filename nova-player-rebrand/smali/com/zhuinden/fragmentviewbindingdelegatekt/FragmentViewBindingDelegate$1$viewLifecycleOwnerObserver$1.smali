.class final Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1$viewLifecycleOwnerObserver$1;
.super Ljava/lang/Object;
.source "FragmentViewBindingDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;-><init>(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;


# direct methods
.method constructor <init>(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1$viewLifecycleOwnerObserver$1;->this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1$viewLifecycleOwnerObserver$1;->this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;

    iget-object p1, p1, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;->this$0:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->access$setBinding$p(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;Landroidx/viewbinding/ViewBinding;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1$viewLifecycleOwnerObserver$1;->onChanged(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
