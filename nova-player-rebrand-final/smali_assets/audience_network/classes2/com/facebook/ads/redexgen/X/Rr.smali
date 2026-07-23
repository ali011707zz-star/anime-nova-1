.class public final Lcom/facebook/ads/redexgen/X/Rr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 1

    .line 63143
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    .line 63144
    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/U2;->A0H(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 63145
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 63146
    invoke-static {}, Lcom/facebook/ads/redexgen/X/U2;->A0I()Z

    move-result v0

    return v0
.end method

.method public final onAdLoadInvoked(Landroid/content/Context;)V
    .locals 1

    .line 63147
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U2;->A08(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 63148
    return-void
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .locals 1

    .line 63149
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U2;->A09(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 63150
    return-void
.end method
