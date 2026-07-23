.class public final Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;
.super Ljava/lang/Object;
.source "FragmentViewBindingDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# instance fields
.field private binding:Landroidx/viewbinding/ViewBinding;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final viewBindingFactory:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBindingFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->fragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->viewBindingFactory:Lkotlin/jvm/functions/Function1;

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;

    invoke-direct {p2, p0}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate$1;-><init>(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static final synthetic access$setBinding$p(Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->binding:Landroidx/viewbinding/ViewBinding;

    return-void
.end method


# virtual methods
.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;
    .locals 2

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz p2, :cond_0

    .line 54
    invoke-interface {p2}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p2, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->viewBindingFactory:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    iput-object p1, p0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->binding:Landroidx/viewbinding/ViewBinding;

    return-object p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not attempt to get bindings when the Fragment\'s view is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    return-object p1
.end method
