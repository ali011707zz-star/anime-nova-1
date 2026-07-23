.class public final Lcom/facebook/ads/redexgen/X/7O;
.super Lcom/facebook/ads/redexgen/X/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7N;->A0E(Lcom/facebook/ads/redexgen/X/R2;)Lcom/facebook/ads/redexgen/X/hq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7N;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7N;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 20769
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7O;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/hq;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 4

    .line 20770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7O;->A00:Lcom/facebook/ads/redexgen/X/7N;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7O;->A00:Lcom/facebook/ads/redexgen/X/7N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hU;->A00:Lcom/facebook/ads/redexgen/X/7M;

    .line 20771
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/7N;->A0H(Lcom/facebook/ads/redexgen/X/R2;Landroid/view/View;)[I

    move-result-object v1

    .line 20772
    .local v0, "snapDistances":[I
    const/4 v0, 0x0

    aget v3, v1, v0

    .line 20773
    .local v1, "dx":I
    const/4 v0, 0x1

    aget v2, v1, v0

    .line 20774
    .local v2, "dy":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hq;->A0M(I)I

    move-result v1

    .line 20775
    .local v3, "time":I
    if-lez v1, :cond_0

    .line 20776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hq;->A04:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A04(IIILandroid/view/animation/Interpolator;)V

    .line 20777
    :cond_0
    return-void
.end method

.method public final A0J(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 20778
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final A0L(I)I
    .locals 2

    .line 20779
    const/16 v1, 0x64

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/hq;->A0L(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
