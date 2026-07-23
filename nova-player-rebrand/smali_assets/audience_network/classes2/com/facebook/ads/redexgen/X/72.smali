.class public final Lcom/facebook/ads/redexgen/X/72;
.super Lcom/facebook/ads/redexgen/X/bo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZR;->A7x(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZR;Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18399
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/72;->A00:Lcom/facebook/ads/redexgen/X/ZR;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/bo;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    return-void
.end method


# virtual methods
.method public final A9m()Z
    .locals 1

    .line 18400
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cz;->A09()Z

    move-result v0

    return v0
.end method

.method public final ACP()V
    .locals 1

    .line 18401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bo;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U2;->A06(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 18402
    return-void
.end method

.method public final ACn()V
    .locals 1

    .line 18403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bo;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U2;->A07(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 18404
    return-void
.end method

.method public final ADI(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 0

    .line 18405
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/OP;->A01(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 18406
    return-void
.end method
