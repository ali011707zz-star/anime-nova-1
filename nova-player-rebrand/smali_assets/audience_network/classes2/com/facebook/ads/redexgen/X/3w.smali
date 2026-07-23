.class public final Lcom/facebook/ads/redexgen/X/3w;
.super Lcom/facebook/ads/redexgen/X/Dz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3w;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 3

    .line 11018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3w;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0A(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3w;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    .line 11019
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0C(Lcom/facebook/ads/redexgen/X/Dm;Lcom/facebook/ads/redexgen/X/fJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3w;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A04(Lcom/facebook/ads/redexgen/X/Dm;)V

    .line 11021
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3w;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A05(Lcom/facebook/ads/redexgen/X/Dm;ZZ)V

    .line 11022
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11023
    check-cast p1, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A00(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method
