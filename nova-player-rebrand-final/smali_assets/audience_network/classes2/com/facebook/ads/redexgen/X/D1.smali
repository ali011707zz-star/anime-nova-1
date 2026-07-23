.class public final synthetic Lcom/facebook/ads/redexgen/X/D1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cq;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Cs;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/D8;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/D9;

.field public final synthetic A04:Ljava/lang/Object;

.field public final synthetic A05:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 33432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:Lcom/facebook/ads/redexgen/X/D8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D1;->A03:Lcom/facebook/ads/redexgen/X/D9;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/D1;->A00:Lcom/facebook/ads/redexgen/X/Cq;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/D1;->A01:Lcom/facebook/ads/redexgen/X/Cs;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/D1;->A04:Ljava/lang/Object;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/D1;->A05:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 33433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D1;->A03:Lcom/facebook/ads/redexgen/X/D9;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D1;->A00:Lcom/facebook/ads/redexgen/X/Cq;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/D1;->A01:Lcom/facebook/ads/redexgen/X/Cs;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/D1;->A04:Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/D1;->A05:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/D8;->A0G(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
