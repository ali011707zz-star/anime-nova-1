.class public final Lcom/facebook/ads/redexgen/X/H8;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Gj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gj;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 38470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 38472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38473
    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    .line 38474
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    .line 38475
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 38476
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 38477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v2

    .line 38478
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gj;->A06:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 38479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AEW()V

    .line 38481
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0B:Lcom/facebook/ads/redexgen/X/ZU;

    .line 38482
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 38483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 38484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 38485
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 38486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 38487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 38488
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0y()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 38489
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 38490
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H8;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0B:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 38492
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
