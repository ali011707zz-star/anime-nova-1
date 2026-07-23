.class public final Lcom/facebook/ads/redexgen/X/hp;
.super Lcom/facebook/ads/redexgen/X/Qm;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Qm;->A00(Lcom/facebook/ads/redexgen/X/R2;)Lcom/facebook/ads/redexgen/X/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 1

    .line 85185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Qm;-><init>(Lcom/facebook/ads/redexgen/X/R2;Lcom/facebook/ads/redexgen/X/hp;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 85186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 85187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 85188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 85189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0k()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 85190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 85191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    .line 85192
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    .line 85193
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 85194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85195
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0p(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 85196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85197
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 85198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85199
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0n(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 85200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85201
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 85202
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 85203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 85204
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 85205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 85206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A11(I)V

    .line 85207
    return-void
.end method
