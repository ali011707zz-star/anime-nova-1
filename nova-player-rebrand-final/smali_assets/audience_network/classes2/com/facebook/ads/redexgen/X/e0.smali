.class public final Lcom/facebook/ads/redexgen/X/e0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Landroid/view/View;II)[I
    .locals 4

    .line 80559
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/R3;

    .line 80560
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/R3;
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/R3;->width:I

    .line 80561
    invoke-static {p2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 80562
    .local v1, "childWidthSpec":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/R3;->height:I

    .line 80563
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 80564
    .local v2, "childHeightSpec":I
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 80565
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 80566
    .local v3, "dimension":[I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/R3;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/R3;->rightMargin:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    aput v1, v2, v0

    .line 80567
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/R3;->bottomMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/R3;->topMargin:I

    add-int/2addr v1, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 80568
    return-object v2
.end method
