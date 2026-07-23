.class public final synthetic Lcom/facebook/ads/redexgen/X/em;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/eq;

.field public final synthetic A02:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/eq;ZI)V
    .locals 0

    .line 81818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/em;->A01:Lcom/facebook/ads/redexgen/X/eq;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/em;->A02:Z

    iput p3, p0, Lcom/facebook/ads/redexgen/X/em;->A00:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 81819
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/em;->A01:Lcom/facebook/ads/redexgen/X/eq;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/em;->A02:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/em;->A00:I

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/eq;->A04(ZILandroid/animation/ValueAnimator;)V

    return-void
.end method
