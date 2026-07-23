.class public final Lcom/facebook/ads/redexgen/X/Fg;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4T;->A0I(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4T;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35972
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 35973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0B(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0B(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A0L(Lcom/facebook/ads/redexgen/X/4T;Lcom/facebook/ads/redexgen/X/Y2;)V

    .line 35975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0F(Lcom/facebook/ads/redexgen/X/4T;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35976
    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    .line 35977
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0D(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    .line 35978
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0B(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    .line 35979
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A05(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 35980
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v2

    .line 35981
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0A(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0F(Lcom/facebook/ads/redexgen/X/4T;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 35982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    .line 35983
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A06(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A08(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 35984
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A09(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 35986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    .line 35987
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A07(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0y()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/4T;

    .line 35988
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A04(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 35989
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35990
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
