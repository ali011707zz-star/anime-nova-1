.class public final Lcom/facebook/ads/redexgen/X/Fx;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4U;->A0C()Lcom/facebook/ads/redexgen/X/Fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4U;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36446
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 36447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0A(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0A(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4U;->A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/Y2;)V

    .line 36449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0F(Lcom/facebook/ads/redexgen/X/4U;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36450
    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    .line 36451
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0D(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    .line 36452
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0A(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    .line 36453
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A04(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 36454
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v2

    .line 36455
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A09(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0F(Lcom/facebook/ads/redexgen/X/4U;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 36456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    .line 36457
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A05(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A07(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 36458
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 36459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A08(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 36460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    .line 36461
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A06(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0y()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/4U;

    .line 36462
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A03(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 36463
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36464
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
