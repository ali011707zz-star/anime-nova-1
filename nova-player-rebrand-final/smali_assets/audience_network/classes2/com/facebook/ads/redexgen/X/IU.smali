.class public final Lcom/facebook/ads/redexgen/X/IU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5S;->A1G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5S;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40224
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 40225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A09(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A02(Lcom/facebook/ads/redexgen/X/5S;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->ADc(I)V

    .line 40226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A09(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ADA()V

    .line 40227
    return-void
.end method

.method public final AFV(F)V
    .locals 2

    .line 40228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    .line 40229
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A02(Lcom/facebook/ads/redexgen/X/5S;)I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    .line 40230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A0U(Lcom/facebook/ads/redexgen/X/5S;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 40231
    .local v0, "seenTime":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A0U(Lcom/facebook/ads/redexgen/X/5S;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A02(Lcom/facebook/ads/redexgen/X/5S;)I

    move-result v0

    :goto_1
    int-to-float v0, v0

    .line 40232
    .local v1, "totalForce":F
    div-float/2addr v1, v0

    .line 40233
    .local p0, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A09(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/dm;->AKd(F)V

    .line 40234
    return-void

    .line 40235
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A03(Lcom/facebook/ads/redexgen/X/5S;)I

    move-result v0

    goto :goto_1

    .line 40236
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IU;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A0A(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    goto :goto_0
.end method
