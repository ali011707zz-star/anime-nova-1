.class public final Lcom/facebook/ads/redexgen/X/ij;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/U3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A79()Ljava/lang/String;
    .locals 1

    .line 87323
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7N()Ljava/lang/String;
    .locals 1

    .line 87324
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7m(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TM;
    .locals 1

    .line 87325
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A8W()Ljava/lang/String;
    .locals 1

    .line 87326
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A9G()Ljava/lang/String;
    .locals 2

    .line 87327
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_0

    .line 87328
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v0

    .line 87329
    :goto_0
    return-object v0

    .line 87330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAa()Z
    .locals 1

    .line 87331
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v0

    return v0
.end method

.method public final AAg()Z
    .locals 1

    .line 87332
    const/4 v0, 0x0

    return v0
.end method

.method public final AAk()Ljava/lang/Boolean;
    .locals 1

    .line 87333
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isTestMode(Landroid/content/Context;)Z
    .locals 1

    .line 87334
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
