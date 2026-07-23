.class Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;
.super Ljava/lang/Object;
.source "AnimatorAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/AnimatorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelperAnimatorListener"
.end annotation


# instance fields
.field key:I

.field final synthetic this$0:Leu/davidea/flexibleadapter/AnimatorAdapter;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/AnimatorAdapter;I)V
    .locals 0

    .line 497
    iput-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;->this$0:Leu/davidea/flexibleadapter/AnimatorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput p2, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;->key:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 507
    iget-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;->this$0:Leu/davidea/flexibleadapter/AnimatorAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->access$200(Leu/davidea/flexibleadapter/AnimatorAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$HelperAnimatorListener;->key:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method
