.class public final synthetic Lcom/facebook/ads/redexgen/X/Z8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/dw;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/dw;)V
    .locals 0

    .line 74836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Z8;->A01:Lcom/facebook/ads/redexgen/X/dw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 74837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z8;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z8;->A01:Lcom/facebook/ads/redexgen/X/dw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0e(Lcom/facebook/ads/redexgen/X/dw;)V

    return-void
.end method
