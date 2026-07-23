.class public final Lcom/facebook/ads/redexgen/X/QW;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7P;->A0e(Lcom/facebook/ads/redexgen/X/RK;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Landroid/view/View;

.field public final synthetic A03:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/7P;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/RK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/RK;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 60201
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/7P;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/RK;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Landroid/view/View;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/QW;->A03:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 60202
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 60204
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:I

    if-eqz v0, :cond_1

    .line 60205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 60206
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 60207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QW;->A03:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 60208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ha;->A0U(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7P;->A04:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0b()V

    .line 60211
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 60212
    return-void
.end method
