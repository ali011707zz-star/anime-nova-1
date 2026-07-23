.class public abstract Landroidx/core/view/ViewKt;
.super Ljava/lang/Object;
.source "View.kt"


# direct methods
.method public static final getAllViews(Landroid/view/View;)Lkotlin/sequences/Sequence;
    .locals 2

    .line 409
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method
