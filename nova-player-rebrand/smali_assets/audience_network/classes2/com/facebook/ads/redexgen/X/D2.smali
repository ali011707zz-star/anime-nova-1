.class public final synthetic Lcom/facebook/ads/redexgen/X/D2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cs;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/D8;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/D9;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 0

    .line 33434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Lcom/facebook/ads/redexgen/X/D8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/D9;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:Lcom/facebook/ads/redexgen/X/Cs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 33435
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/D9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:Lcom/facebook/ads/redexgen/X/Cs;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D8;->A0H(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cs;)V

    return-void
.end method
