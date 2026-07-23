.class public final Lcom/facebook/ads/redexgen/X/S6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdsManagerApi;


# static fields
.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/NativeAd$NativeOptions;

.field public A02:Lcom/facebook/ads/NativeAdsManager$Listener;

.field public A03:Lcom/facebook/ads/redexgen/X/iu;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public final A07:I

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Ljava/lang/String;

.field public final A0A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1639
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gDYqLx0JK9708AoJnxJgyKqjnvDR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XqufOA6aif4bGdY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Su6jQEbJiG4f8aKvZwQ5GnKoGxisXaGJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "amq5QC2giq7rrMPed26NLD1vQWHXorDG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "da4TAb4G8iALXV3W79mvavYrQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "laLk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uFxB7CH2AwGOjVY1RRN9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Lrv7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/S6;->A0B:[Ljava/lang/String;

    const-class v0, Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S6;->A0C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 63530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63531
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 63532
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S6;->A09:Ljava/lang/String;

    .line 63533
    const/4 v1, 0x0

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A07:I

    .line 63534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    .line 63535
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A00:I

    .line 63536
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A05:Z

    .line 63537
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A06:Z

    .line 63538
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/NativeAdsManager$Listener;
    .locals 1

    .line 63539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A02:Lcom/facebook/ads/NativeAdsManager$Listener;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/iu;
    .locals 1

    .line 63540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 63541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63542
    return-void
.end method

.method public final A03(I)V
    .locals 0

    .line 63543
    iput p1, p0, Lcom/facebook/ads/redexgen/X/S6;->A00:I

    .line 63544
    return-void
.end method

.method public final A04(Lcom/facebook/ads/NativeAd;)V
    .locals 1

    .line 63545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63546
    return-void
.end method

.method public final A05(Z)V
    .locals 0

    .line 63547
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/S6;->A05:Z

    .line 63548
    return-void
.end method

.method public final disableAutoRefresh()V
    .locals 1

    .line 63549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A06:Z

    .line 63550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    if-eqz v0, :cond_0

    .line 63551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iu;->A06()V

    .line 63552
    :cond_0
    return-void
.end method

.method public final getUniqueNativeAdCount()I
    .locals 1

    .line 63553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 63554
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A05:Z

    return v0
.end method

.method public final loadAds()V
    .locals 1

    .line 63555
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S6;->loadAds(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    .line 63556
    return-void
.end method

.method public final loadAds(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 6

    .line 63557
    sget-object v3, Lcom/facebook/ads/redexgen/X/Vq;->A06:Lcom/facebook/ads/redexgen/X/Vq;

    .line 63558
    .local p0, "adTemplate":Lcom/facebook/ads/redexgen/X/Vq;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/S6;->A07:I

    .line 63559
    .local p1, "numAdRequested":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    .line 63560
    new-instance v0, Lcom/facebook/ads/redexgen/X/iu;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S6;->A09:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/iu;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/AdSize;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    .line 63561
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A06:Z

    if-eqz v0, :cond_0

    .line 63562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iu;->A06()V

    .line 63563
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A09(Ljava/lang/String;)V

    .line 63564
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S6;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A01:Lcom/facebook/ads/NativeAd$NativeOptions;

    new-instance v0, Lcom/facebook/ads/redexgen/X/h5;

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/facebook/ads/redexgen/X/h5;-><init>(Lcom/facebook/ads/redexgen/X/S6;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;Lcom/facebook/ads/NativeAd$NativeOptions;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/iu;->A08(Lcom/facebook/ads/redexgen/X/OB;)V

    .line 63565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A03:Lcom/facebook/ads/redexgen/X/iu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iu;->A07()V

    .line 63566
    return-void
.end method

.method public final nextNativeAd()Lcom/facebook/ads/NativeAd;
    .locals 1

    .line 63567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S6;->nextNativeAd(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    return-object v0
.end method

.method public final nextNativeAd(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAd;
    .locals 4

    .line 63568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63569
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/S6;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/S6;->A0B:[Ljava/lang/String;

    const-string v1, "mJMTRUXqz4crzwTyllZM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "KHUxr2V0BkfXxoUOzUh0cEJhB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 63570
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/S6;->A00:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A00:I

    .line 63571
    .local v0, "pos":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/NativeAd;

    .line 63572
    .local v1, "ad":Lcom/facebook/ads/NativeAd;
    if-eqz p1, :cond_2

    .line 63573
    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/ads/redexgen/X/UK;->A1b(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdListener;)V

    .line 63574
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S6;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 63575
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S6;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S6;->A01:Lcom/facebook/ads/NativeAd$NativeOptions;

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd$NativeOptions;)V

    return-object v0

    .line 63576
    :cond_3
    return-object v3
.end method

.method public final setExtraHints(Ljava/lang/String;)V
    .locals 0

    .line 63577
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S6;->A04:Ljava/lang/String;

    .line 63578
    return-void
.end method

.method public final setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V
    .locals 0

    .line 63579
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S6;->A02:Lcom/facebook/ads/NativeAdsManager$Listener;

    .line 63580
    return-void
.end method

.method public final setNativeOption(Lcom/facebook/ads/NativeAd$NativeOptions;)V
    .locals 0

    .line 63581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S6;->A01:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 63582
    return-void
.end method
