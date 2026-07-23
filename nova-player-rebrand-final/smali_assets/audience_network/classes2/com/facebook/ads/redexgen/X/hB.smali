.class public Lcom/facebook/ads/redexgen/X/hB;
.super Lcom/facebook/ads/redexgen/X/Rm;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdLayoutApi;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;

.field public A03:Lcom/facebook/ads/NativeAdLayout;

.field public A04:Lcom/facebook/ads/redexgen/X/ZX;

.field public A05:Z

.field public A06:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83804
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rm;-><init>()V

    .line 83805
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A01:I

    .line 83806
    iput v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A00:I

    .line 83807
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A06:Z

    .line 83808
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A05:Z

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 83809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 83810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A04:Lcom/facebook/ads/redexgen/X/ZX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    .line 83811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A04:Lcom/facebook/ads/redexgen/X/ZX;

    .line 83812
    return-void
.end method

.method public final A03()V
    .locals 2

    .line 83813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 83814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    .line 83815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A02:Landroid/view/View;

    .line 83816
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/ZX;)V
    .locals 3

    .line 83817
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hB;->A04:Lcom/facebook/ads/redexgen/X/ZX;

    .line 83818
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hB;->A04:Lcom/facebook/ads/redexgen/X/ZX;

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ZX;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 83820
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A04:Lcom/facebook/ads/redexgen/X/ZX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 83821
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Zd;)V
    .locals 2

    .line 83822
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hB;->A02:Landroid/view/View;

    .line 83823
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Zd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 83825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 83826
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 83827
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A05:Z

    return v0
.end method

.method public final A07()Z
    .locals 1

    .line 83828
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A06:Z

    return v0
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 83829
    return-object p0
.end method

.method public final initialize(Lcom/facebook/ads/NativeAdLayout;)V
    .locals 0

    .line 83830
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    .line 83831
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 83832
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rm;->onMeasure(II)V

    .line 83833
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A00:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A00:I

    if-le v1, v0, :cond_1

    .line 83834
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hB;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rm;->setMeasuredDimension(II)V

    .line 83835
    :cond_0
    :goto_0
    return-void

    .line 83836
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A01:I

    if-ge v1, v0, :cond_0

    .line 83837
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rm;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setMaxWidth(I)V
    .locals 1

    .line 83838
    iput p1, p0, Lcom/facebook/ads/redexgen/X/hB;->A00:I

    .line 83839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A05:Z

    .line 83840
    return-void
.end method

.method public final setMinWidth(I)V
    .locals 1

    .line 83841
    iput p1, p0, Lcom/facebook/ads/redexgen/X/hB;->A01:I

    .line 83842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hB;->A06:Z

    .line 83843
    return-void
.end method
