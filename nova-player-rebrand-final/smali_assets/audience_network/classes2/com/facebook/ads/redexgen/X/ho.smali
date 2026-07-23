.class public final Lcom/facebook/ads/redexgen/X/ho;
.super Lcom/facebook/ads/redexgen/X/Qm;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Qm;->A01(Lcom/facebook/ads/redexgen/X/R2;)Lcom/facebook/ads/redexgen/X/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 1

    .line 85162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Qm;-><init>(Lcom/facebook/ads/redexgen/X/R2;Lcom/facebook/ads/redexgen/X/hp;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 85163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 85164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 85165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 85166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0a()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 85167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 85168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    .line 85169
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    .line 85170
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 85171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85172
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 85173
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85174
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

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 85175
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85176
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

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 85177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85178
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0q(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 85179
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 85180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 85181
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 85182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 85183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qm;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A12(I)V

    .line 85184
    return-void
.end method
