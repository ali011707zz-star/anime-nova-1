.class public final synthetic Lcom/facebook/ads/redexgen/X/B5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/B6;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/jL;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/B6;Lcom/facebook/ads/redexgen/X/jL;)V
    .locals 0

    .line 29832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:Lcom/facebook/ads/redexgen/X/B6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Lcom/facebook/ads/redexgen/X/jL;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 29833
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:Lcom/facebook/ads/redexgen/X/B6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Lcom/facebook/ads/redexgen/X/jL;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A0B(Lcom/facebook/ads/redexgen/X/jL;)V

    return-void
.end method
