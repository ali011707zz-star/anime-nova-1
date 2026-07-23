.class public final Lcom/facebook/ads/redexgen/X/QY;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7P;->A0c(Lcom/facebook/ads/redexgen/X/QZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/QZ;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/7P;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/QZ;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 60223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/7P;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QY;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QY;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 60224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QY;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 60225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 60226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 60227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 60228
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Lcom/facebook/ads/redexgen/X/RK;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ha;->A0W(Lcom/facebook/ads/redexgen/X/RK;Z)V

    .line 60229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7P;->A02:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0b()V

    .line 60231
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 60232
    return-void
.end method
