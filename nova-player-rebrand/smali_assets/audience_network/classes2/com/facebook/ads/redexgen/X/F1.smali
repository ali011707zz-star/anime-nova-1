.class public final Lcom/facebook/ads/redexgen/X/F1;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eu;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 35329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A01(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eg;->A07()V

    .line 35330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A02(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A04(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/E4;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A03(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/EA;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 35331
    return-void
.end method
