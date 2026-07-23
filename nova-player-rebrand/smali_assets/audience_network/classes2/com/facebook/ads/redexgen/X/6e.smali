.class public final Lcom/facebook/ads/redexgen/X/6e;
.super Lcom/facebook/ads/redexgen/X/Ek;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 17692
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 17693
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 2

    .line 17694
    .local v0, "newWidthSpec":I
    .local v1, "newHeightSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 17695
    move p2, p1

    .line 17696
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ek;->onMeasure(II)V

    .line 17697
    return-void

    .line 17698
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 17699
    move p1, p2

    goto :goto_0
.end method
