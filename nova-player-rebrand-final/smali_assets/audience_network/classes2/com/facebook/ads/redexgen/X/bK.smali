.class public final Lcom/facebook/ads/redexgen/X/bK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bL;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77656
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bK;->A00:Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    .line 77657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A00:Lcom/facebook/ads/redexgen/X/bL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;->setAlpha(F)V

    .line 77658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A00:Lcom/facebook/ads/redexgen/X/bL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A00:Lcom/facebook/ads/redexgen/X/bL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bL;->A00:Lcom/facebook/ads/redexgen/X/bM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/6U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77660
    return-void
.end method

.method public final startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 77661
    return-void
.end method
