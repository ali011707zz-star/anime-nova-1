.class public final Lcom/facebook/ads/redexgen/X/bL;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bM;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bM;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77662
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 77663
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    .line 77664
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 77665
    const/4 v2, 0x3

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 77666
    new-instance v0, Lcom/facebook/ads/redexgen/X/bK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bK;-><init>(Lcom/facebook/ads/redexgen/X/bL;)V

    invoke-virtual {v3, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 77667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 77668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;->setVisibility(I)V

    .line 77669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77671
    return-void
.end method
