.class public final Lcom/facebook/ads/redexgen/X/Eu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ej;


# instance fields
.field public A00:Ljava/lang/Boolean;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;

.field public final A02:Lcom/facebook/ads/redexgen/X/VA;

.field public final A03:Lcom/facebook/ads/redexgen/X/eg;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A05:Lcom/facebook/ads/redexgen/X/EA;

.field public final A06:Lcom/facebook/ads/redexgen/X/E4;

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/EF;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Lcom/facebook/ads/redexgen/X/Ek;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/ads/redexgen/X/EF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35268
    .local p7, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35269
    new-instance v0, Lcom/facebook/ads/redexgen/X/4P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4P;-><init>(Lcom/facebook/ads/redexgen/X/Eu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:Lcom/facebook/ads/redexgen/X/E4;

    .line 35270
    new-instance v0, Lcom/facebook/ads/redexgen/X/4O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4O;-><init>(Lcom/facebook/ads/redexgen/X/Eu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Lcom/facebook/ads/redexgen/X/EA;

    .line 35271
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Ljava/lang/Boolean;

    .line 35272
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 35273
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:Lcom/facebook/ads/redexgen/X/VA;

    .line 35274
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Eu;->A07:Ljava/lang/String;

    .line 35275
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:Lcom/facebook/ads/redexgen/X/Ek;

    .line 35276
    new-instance v0, Lcom/facebook/ads/redexgen/X/eg;

    invoke-direct {v0, p3, p4, p5, p7}, Lcom/facebook/ads/redexgen/X/eg;-><init>(Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLjava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:Lcom/facebook/ads/redexgen/X/eg;

    .line 35277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIx()V

    .line 35279
    invoke-virtual {p6, p0}, Lcom/facebook/ads/redexgen/X/EF;->A0m(Lcom/facebook/ads/redexgen/X/ej;)V

    .line 35280
    :goto_0
    return-void

    .line 35281
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIy()V

    .line 35282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 35283
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/eg;
    .locals 0

    .line 35284
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:Lcom/facebook/ads/redexgen/X/eg;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 35285
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/EA;
    .locals 0

    .line 35286
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A05:Lcom/facebook/ads/redexgen/X/EA;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/E4;
    .locals 0

    .line 35287
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A06:Lcom/facebook/ads/redexgen/X/E4;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Eu;)Ljava/lang/Boolean;
    .locals 0

    .line 35288
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Eu;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 35289
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 35290
    new-instance v1, Lcom/facebook/ads/redexgen/X/F1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/F1;-><init>(Lcom/facebook/ads/redexgen/X/Eu;)V

    .line 35291
    .local v0, "unregisterRunnable":Lcom/facebook/ads/redexgen/X/Wc;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35292
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 35293
    :goto_0
    return-void

    .line 35294
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A04:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getStateHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final declared-synchronized A08()V
    .locals 3

    monitor-enter p0

    .line 35295
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A03:Lcom/facebook/ads/redexgen/X/eg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eg;->A06()Ljava/util/Map;

    move-result-object v2

    .line 35297
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A02:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A07:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABy(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35298
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Eu;
    :cond_0
    monitor-exit p0

    return-void

    .line 35299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AEk()V
    .locals 1

    .line 35300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJ1()V

    .line 35301
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eu;->A08()V

    .line 35302
    return-void
.end method
