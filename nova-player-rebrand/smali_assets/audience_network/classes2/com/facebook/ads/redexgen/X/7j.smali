.class public final Lcom/facebook/ads/redexgen/X/7j;
.super Lcom/facebook/ads/redexgen/X/j0;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 0

    .line 21468
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/j0;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V

    .line 21469
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/iy;
    .locals 1

    .line 21470
    new-instance v0, Lcom/facebook/ads/redexgen/X/iy;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/iy;-><init>(Lcom/facebook/ads/redexgen/X/7j;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7j;)V
    .locals 0

    .line 21471
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j0;->A0L()V

    return-void
.end method


# virtual methods
.method public final A0I()Lcom/facebook/ads/redexgen/X/NQ;
    .locals 1

    .line 21472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jz;

    .line 21473
    .local v0, "successfullyLoadedAdapter":Lcom/facebook/ads/redexgen/X/jz;
    if-eqz v0, :cond_0

    .line 21474
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jz;->A09()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    return-object v0

    .line 21475
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0P()V
    .locals 1

    .line 21476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    check-cast v0, Lcom/facebook/ads/redexgen/X/jz;

    .line 21477
    .local v0, "interstitialAdapter":Lcom/facebook/ads/redexgen/X/jz;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jz;->A0B()Z

    .line 21478
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 12

    .line 21479
    move-object v4, p1

    check-cast v4, Lcom/facebook/ads/redexgen/X/jz;

    .line 21480
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/jz;
    new-instance v3, Lcom/facebook/ads/redexgen/X/iz;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/iz;-><init>(Lcom/facebook/ads/redexgen/X/7j;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/jz;)V

    .line 21481
    .local v9, "interstitialTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v2

    .line 21482
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/O7;->A0B:Ljava/util/EnumSet;

    .line 21484
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    if-nez v8, :cond_0

    .line 21485
    sget-object v8, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    .line 21486
    .end local v0    # "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    .local v10, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 21487
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7j;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/iy;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/O7;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/O7;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/O7;->A02:Lcom/facebook/ads/RewardData;

    .line 21488
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/jz;->A0A(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NC;Lcom/facebook/ads/redexgen/X/O8;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    .line 21489
    return-void
.end method
