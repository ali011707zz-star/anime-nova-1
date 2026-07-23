.class public final Lcom/facebook/ads/redexgen/X/Vg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
.implements Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

.field public A03:Ljava/lang/String;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/NativeAdBase;

.field public final A06:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 69582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69583
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A01:I

    .line 69584
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A00:I

    .line 69585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A06:Lcom/facebook/ads/redexgen/X/UK;

    .line 69586
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vg;->A05:Lcom/facebook/ads/NativeAdBase;

    .line 69587
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 69588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_0

    .line 69589
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 69590
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 69591
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VW;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/VW;

    move-result-object v4

    .line 69592
    .local v0, "internalMediaCacheFlag":Lcom/facebook/ads/redexgen/X/VW;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Vg;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;-><init>(ZII)V

    .line 69593
    .local v1, "nativeAdMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/T3;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A06:Lcom/facebook/ads/redexgen/X/UK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/UK;->A1f(Lcom/facebook/ads/redexgen/X/VW;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/T3;)V

    .line 69594
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 69595
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vg;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .locals 0

    .line 69596
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 2

    .line 69597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A06:Lcom/facebook/ads/redexgen/X/UK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/UK;->A1b(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdListener;)V

    .line 69598
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69599
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Vg;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 69600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A03:Ljava/lang/String;

    .line 69601
    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 69602
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 69603
    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1

    .line 69604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vg;->A04:Z

    .line 69605
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vg;->A01:I

    .line 69606
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vg;->A00:I

    .line 69607
    return-object p0
.end method
