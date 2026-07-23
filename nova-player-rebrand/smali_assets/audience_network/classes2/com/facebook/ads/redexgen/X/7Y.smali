.class public final Lcom/facebook/ads/redexgen/X/7Y;
.super Lcom/facebook/ads/redexgen/X/ik;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OJ;
    }
.end annotation


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/OJ;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/id;

.field public final A01:Lcom/facebook/ads/redexgen/X/iY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 475
    new-instance v0, Lcom/facebook/ads/redexgen/X/iV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/iV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7Y;->A02:Lcom/facebook/ads/redexgen/X/OJ;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iY;Ljava/lang/String;)V
    .locals 2

    .line 21246
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/iY;->A05()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/7Y;->A02:Lcom/facebook/ads/redexgen/X/OJ;

    .line 21247
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/OJ;->A5T(Lcom/facebook/ads/redexgen/X/iY;)Lcom/facebook/ads/redexgen/X/iX;

    move-result-object v0

    .line 21248
    invoke-direct {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/ik;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OR;)V

    .line 21249
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    .line 21250
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 21251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    if-eqz v0, :cond_0

    .line 21252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/id;->destroy()V

    .line 21253
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A03:Lcom/facebook/ads/redexgen/X/OD;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->AJM(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 21254
    return-void
.end method

.method public final A09()V
    .locals 3

    .line 21255
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/id;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/id;-><init>(Lcom/facebook/ads/redexgen/X/iY;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 21256
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    .line 21257
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A0B()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A07()Ljava/lang/String;

    move-result-object v0

    .line 21258
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 21259
    return-void
.end method

.method public final A0D(Z)V
    .locals 1

    .line 21260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/OQ;->AJn(Z)V

    .line 21261
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/InterstitialAd;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21262
    .local p2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21263
    return-void

    .line 21264
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iY;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 21265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    if-eqz v0, :cond_1

    .line 21266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/id;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 21267
    return-void

    .line 21268
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/iY;->A0K(Ljava/util/EnumSet;)V

    .line 21269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/iY;->A0H(Ljava/lang/String;)V

    .line 21270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 21271
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A0A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21272
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Us;->A0M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A05()V

    .line 21274
    :goto_0
    return-void

    .line 21275
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7Y;->A09()V

    goto :goto_0

    .line 21276
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7Y;->A09()V

    goto :goto_0
.end method

.method public final A0F(Lcom/facebook/ads/RewardData;)V
    .locals 3

    .line 21277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iY;->A0F(Lcom/facebook/ads/RewardData;)V

    .line 21278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_0

    .line 21279
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21280
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/OY;->A00(Landroid/os/Bundle;Lcom/facebook/ads/RewardData;)Landroid/os/Bundle;

    move-result-object v1

    .line 21281
    const/16 v0, 0x3f5

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OL;->A0F(ILandroid/os/Bundle;)Z

    .line 21282
    :cond_0
    return-void
.end method

.method public final A0G()Z
    .locals 5

    .line 21283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    if-eqz v0, :cond_0

    .line 21284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/id;->A0H()Z

    move-result v0

    return v0

    .line 21285
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 21286
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y1;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A00()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 21287
    :goto_0
    return v0

    .line 21288
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H()Z
    .locals 2

    .line 21289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    if-eqz v0, :cond_0

    .line 21290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/id;->A0I()Z

    move-result v0

    return v0

    .line 21291
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6p()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 4

    .line 21292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6V()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 21293
    return v3

    .line 21294
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iY;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 21295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_1

    .line 21296
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ik;->A0A(I)V

    .line 21297
    const/4 v0, 0x1

    return v0

    .line 21298
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    if-eqz v0, :cond_2

    .line 21299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/id;->A0J()Z

    move-result v0

    return v0

    .line 21300
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/id;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/id;-><init>(Lcom/facebook/ads/redexgen/X/iY;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 21301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/id;->A0J()Z

    .line 21302
    return v3
.end method
