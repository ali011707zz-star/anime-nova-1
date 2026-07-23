.class public final Lcom/facebook/ads/redexgen/X/SB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 4

    .line 63662
    if-nez p3, :cond_0

    .line 63663
    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 63664
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 63665
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAdView$Type;->getEnumCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(I)Lcom/facebook/ads/redexgen/X/Ve;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1h(Lcom/facebook/ads/redexgen/X/Ve;)V

    .line 63666
    new-instance v1, Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/7L;-><init>()V

    .line 63667
    .local v1, "bannerTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/7L;
    new-instance v3, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v3, p0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 63668
    .local v2, "templateView":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vd;

    .line 63669
    invoke-virtual {v1, p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/7L;->A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Vd;Lcom/facebook/ads/NativeAdLayout;)V

    .line 63670
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 63671
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v2, v1

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63672
    invoke-virtual {v3, v0}, Lcom/facebook/ads/NativeAdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63673
    return-object v3
.end method


# virtual methods
.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;)Landroid/view/View;
    .locals 1

    .line 63674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/SB;->render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2

    .line 63675
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/SB;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63676
    :catchall_0
    move-exception v1

    .line 63677
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 63678
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Z4;->A00(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
