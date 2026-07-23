.class public final Lcom/facebook/ads/redexgen/X/Jd;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/66;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/66;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/66;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43229
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 43230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A05(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A05(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 43232
    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 43233
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A0A(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 43234
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A05(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 43235
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v2

    .line 43236
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A03(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 43237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A02(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 43238
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A07(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 43239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 43240
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A02(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 43241
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 43242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A02(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3L()V

    .line 43243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 43244
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0y()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 43245
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 43246
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A06(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A06(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A07(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 43249
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
