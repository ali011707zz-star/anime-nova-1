.class public final synthetic Lcom/facebook/ads/redexgen/X/D0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cq;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Cs;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/D8;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/D9;

.field public final synthetic A04:Ljava/io/IOException;

.field public final synthetic A05:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V
    .locals 0

    .line 33430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D0;->A02:Lcom/facebook/ads/redexgen/X/D8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D0;->A03:Lcom/facebook/ads/redexgen/X/D9;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/Cq;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/D0;->A01:Lcom/facebook/ads/redexgen/X/Cs;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/D0;->A04:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/D0;->A05:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 33431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A02:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D0;->A03:Lcom/facebook/ads/redexgen/X/D9;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/Cq;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/D0;->A01:Lcom/facebook/ads/redexgen/X/Cs;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/D0;->A04:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/D0;->A05:Z

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/D8;->A0F(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V

    return-void
.end method
