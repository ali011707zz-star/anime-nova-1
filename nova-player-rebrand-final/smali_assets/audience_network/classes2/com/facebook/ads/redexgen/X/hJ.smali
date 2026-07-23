.class public final Lcom/facebook/ads/redexgen/X/hJ;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hI;->ADm(Lcom/facebook/ads/redexgen/X/62;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hI;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/62;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hI;Lcom/facebook/ads/redexgen/X/62;)V
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

    .line 84429
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hJ;->A00:Lcom/facebook/ads/redexgen/X/hI;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hJ;->A01:Lcom/facebook/ads/redexgen/X/62;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 84430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hJ;->A01:Lcom/facebook/ads/redexgen/X/62;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hJ;->A00:Lcom/facebook/ads/redexgen/X/hI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hI;->A02:Lcom/facebook/ads/redexgen/X/UK;

    .line 84431
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1G()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    .line 84432
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/62;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 84433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hJ;->A00:Lcom/facebook/ads/redexgen/X/hI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hI;->A02:Lcom/facebook/ads/redexgen/X/UK;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 84434
    return-void
.end method
