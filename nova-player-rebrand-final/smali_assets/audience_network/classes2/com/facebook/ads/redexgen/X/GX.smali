.class public final Lcom/facebook/ads/redexgen/X/GX;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dq;->A04(Lcom/facebook/ads/redexgen/X/dp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dp;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/dq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dq;Lcom/facebook/ads/redexgen/X/dp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 37157
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GX;->A01:Lcom/facebook/ads/redexgen/X/dq;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GX;->A00:Lcom/facebook/ads/redexgen/X/dp;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 37158
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 37159
    .local v0, "hideAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 37160
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37161
    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Lcom/facebook/ads/redexgen/X/GX;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GX;->A01:Lcom/facebook/ads/redexgen/X/dq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/dq;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37163
    return-void
.end method
