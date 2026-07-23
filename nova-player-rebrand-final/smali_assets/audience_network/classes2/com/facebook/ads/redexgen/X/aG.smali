.class public final Lcom/facebook/ads/redexgen/X/aG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aJ;->A02()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76208
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 76209
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 76210
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0N(Lcom/facebook/ads/redexgen/X/aJ;Z)Z

    .line 76211
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 76212
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 76213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A01(Lcom/facebook/ads/redexgen/X/aJ;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    if-ne v1, v0, :cond_0

    .line 76214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A00(Lcom/facebook/ads/redexgen/X/aJ;)Landroid/widget/ImageView;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A00(Lcom/facebook/ads/redexgen/X/aJ;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76216
    :goto_0
    return-void

    .line 76217
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A00(Lcom/facebook/ads/redexgen/X/aJ;)Landroid/widget/ImageView;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method
