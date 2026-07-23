.class public final Lcom/facebook/ads/redexgen/X/aE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aJ;->A03()V
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

    .line 76198
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 76199
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 76200
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 76201
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 76202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0G(Lcom/facebook/ads/redexgen/X/aJ;)V

    .line 76203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0H(Lcom/facebook/ads/redexgen/X/aJ;)V

    .line 76204
    return-void
.end method
