.class public abstract Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegateKt;
.super Ljava/lang/Object;
.source "FragmentViewBindingDelegate.kt"


# direct methods
.method public static final viewBinding(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;
    .locals 1

    const-string v0, "$this$viewBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBindingFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    invoke-direct {v0, p0, p1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
