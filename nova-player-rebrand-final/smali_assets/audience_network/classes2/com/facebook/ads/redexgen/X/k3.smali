.class public final Lcom/facebook/ads/redexgen/X/k3;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/k2;->ADm(Lcom/facebook/ads/redexgen/X/62;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/k2;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/62;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/k2;Lcom/facebook/ads/redexgen/X/62;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89409
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k3;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Lcom/facebook/ads/redexgen/X/k2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:Lcom/facebook/ads/redexgen/X/62;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 89410
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k3;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Lcom/facebook/ads/redexgen/X/k2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A0D(Lcom/facebook/ads/redexgen/X/81;)V

    .line 89411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Lcom/facebook/ads/redexgen/X/k2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A06(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:Lcom/facebook/ads/redexgen/X/62;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Lcom/facebook/ads/redexgen/X/k2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A06(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/62;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 89413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Lcom/facebook/ads/redexgen/X/k2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A06(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 89414
    :cond_0
    return-void
.end method
