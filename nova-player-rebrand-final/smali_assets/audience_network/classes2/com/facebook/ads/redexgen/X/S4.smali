.class public final Lcom/facebook/ads/redexgen/X/S4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 4

    .line 63487
    if-nez p3, :cond_0

    .line 63488
    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 63489
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Vd;

    .line 63490
    .local v0, "internalAttributes":Lcom/facebook/ads/redexgen/X/Vd;
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 63491
    .local v1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdView$Type;->getEnumCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(I)Lcom/facebook/ads/redexgen/X/Ve;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1h(Lcom/facebook/ads/redexgen/X/Ve;)V

    .line 63492
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/UK;->A1g(Lcom/facebook/ads/redexgen/X/Vd;)V

    .line 63493
    new-instance v0, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>()V

    .line 63494
    .local v2, "mediumRectTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/7C;
    new-instance v3, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v3, p0, v0}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 63495
    .local v3, "mediumRectTemplateLayout":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {v0, v3, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/7C;->A08(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Vd;)V

    .line 63496
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 63497
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v2, v1

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63498
    invoke-virtual {v3, v0}, Lcom/facebook/ads/NativeAdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63499
    return-object v3
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 3

    .line 63500
    if-nez p2, :cond_0

    .line 63501
    new-instance p2, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p2}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 63502
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 63503
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Vd;

    .line 63504
    .local v1, "internalAttributes":Lcom/facebook/ads/redexgen/X/Vd;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A0B:Lcom/facebook/ads/redexgen/X/Ve;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1h(Lcom/facebook/ads/redexgen/X/Ve;)V

    .line 63505
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/UK;->A1g(Lcom/facebook/ads/redexgen/X/Vd;)V

    .line 63506
    new-instance v1, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/7C;-><init>()V

    .line 63507
    .local v2, "mediumRectTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/7C;
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 63508
    .local p0, "mediumRectTemplateLayout":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {v1, v0, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/7C;->A08(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Vd;)V

    .line 63509
    return-object v0
.end method


# virtual methods
.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)Landroid/view/View;
    .locals 1

    .line 63510
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/S4;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;)Landroid/view/View;
    .locals 1

    .line 63511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/S4;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2

    .line 63512
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/S4;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63513
    :catchall_0
    move-exception v1

    .line 63514
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 63515
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Z4;->A00(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2

    .line 63516
    .local v0, "contextWrapper":Lcom/facebook/ads/redexgen/X/gi;
    :try_start_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 63517
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/gi;

    .line 63518
    :goto_0
    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/S4;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 63519
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    goto :goto_0

    .line 63520
    :goto_1
    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63521
    .end local v0    # "contextWrapper":Lcom/facebook/ads/redexgen/X/gi;
    :catchall_0
    move-exception v1

    .line 63522
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 63523
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Z4;->A00(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
