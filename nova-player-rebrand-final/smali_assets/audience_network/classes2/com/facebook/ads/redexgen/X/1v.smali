.class public final synthetic Lcom/facebook/ads/redexgen/X/1v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AZ;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/rF;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/r4;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/rF;Lcom/facebook/ads/redexgen/X/r4;)V
    .locals 0

    .line 8738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1v;->A00:Lcom/facebook/ads/redexgen/X/rF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1v;->A01:Lcom/facebook/ads/redexgen/X/r4;

    return-void
.end method


# virtual methods
.method public final AAK(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8739
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1v;->A00:Lcom/facebook/ads/redexgen/X/rF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1v;->A01:Lcom/facebook/ads/redexgen/X/r4;

    check-cast p1, Lcom/facebook/ads/redexgen/X/rN;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/rF;->A0E(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)Lcom/facebook/ads/redexgen/X/qq;

    move-result-object v0

    return-object v0
.end method
