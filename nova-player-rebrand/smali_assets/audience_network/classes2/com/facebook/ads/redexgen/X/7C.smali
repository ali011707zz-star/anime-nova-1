.class public final Lcom/facebook/ads/redexgen/X/7C;
.super Lcom/facebook/ads/redexgen/X/hB;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ee;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18664
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hB;-><init>()V

    return-void
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Vd;)V
    .locals 11

    .line 18665
    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/bk;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 18666
    .local p1, "adIconView":Lcom/facebook/ads/redexgen/X/bk;
    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 18667
    .local p2, "mediaView":Lcom/facebook/ads/MediaView;
    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 18668
    .local p3, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/Vd;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 18669
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    .line 18670
    .local p5, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1C()Lcom/facebook/ads/redexgen/X/Ve;

    move-result-object v7

    .line 18671
    .local p6, "viewType":Lcom/facebook/ads/redexgen/X/Ve;
    new-instance v3, Lcom/facebook/ads/redexgen/X/F2;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/F2;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Vd;Lcom/facebook/ads/redexgen/X/Ve;Lcom/facebook/ads/redexgen/X/bk;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/7C;->A00:Lcom/facebook/ads/redexgen/X/ee;

    .line 18672
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Vd;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 18673
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7C;->A00:Lcom/facebook/ads/redexgen/X/ee;

    .line 18674
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ee;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 18675
    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 18676
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18677
    .local v2, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18678
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7C;->A00:Lcom/facebook/ads/redexgen/X/ee;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ee;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18679
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 18680
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rm;->onDetachedFromWindow()V

    .line 18681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A00:Lcom/facebook/ads/redexgen/X/ee;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ee;->unregisterView()V

    .line 18682
    return-void
.end method
