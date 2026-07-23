.class public final synthetic Lcom/facebook/ads/redexgen/X/4j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4n;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4p;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4p;Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 0

    .line 12397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4p;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 12398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4p;->A0B(Lcom/facebook/ads/redexgen/X/4n;)V

    return-void
.end method
