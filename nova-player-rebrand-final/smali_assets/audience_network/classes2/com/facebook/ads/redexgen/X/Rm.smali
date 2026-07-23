.class public Lcom/facebook/ads/redexgen/X/Rm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentViewApi;


# instance fields
.field public A00:Lcom/facebook/ads/internal/api/AdComponentView;

.field public A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V
    .locals 3

    .line 63006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 63007
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    check-cast v2, Lcom/facebook/ads/internal/api/AdComponentViewApi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 63008
    return-void
.end method

.method public final A01(Z)V
    .locals 0

    .line 63009
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Z

    .line 63010
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 63011
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Z

    if-nez v0, :cond_0

    .line 63012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;)V

    .line 63013
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 63014
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Z

    if-nez v0, :cond_0

    .line 63015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;I)V

    .line 63016
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 63017
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Z

    if-nez v0, :cond_0

    .line 63018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;II)V

    .line 63019
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 63020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 63021
    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 63022
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Z

    if-nez v0, :cond_0

    .line 63023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63024
    :cond_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 63025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 63026
    return-void
.end method

.method public onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 63027
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rm;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 63028
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    .line 63029
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 63030
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 63031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onAttachedToWindow()V

    .line 63032
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 63033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onDetachedFromWindow()V

    .line 63034
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 63035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onMeasure(II)V

    .line 63036
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 63037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onVisibilityChanged(Landroid/view/View;I)V

    .line 63038
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 63039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onWindowFocusChanged(Z)V

    .line 63040
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 63041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63042
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    .line 63043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setMeasuredDimension(II)V

    .line 63044
    return-void
.end method
