.class public final Lcom/facebook/ads/redexgen/X/Rn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/So;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63046
    new-instance v0, Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/So;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A00:Lcom/facebook/ads/redexgen/X/So;

    .line 63047
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/So;
    .locals 1

    .line 63048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A00:Lcom/facebook/ads/redexgen/X/So;

    return-object v0
.end method

.method public final getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 63049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rn;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A06(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
