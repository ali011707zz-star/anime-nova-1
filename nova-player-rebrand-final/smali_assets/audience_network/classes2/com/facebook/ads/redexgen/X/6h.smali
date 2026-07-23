.class public final synthetic Lcom/facebook/ads/redexgen/X/6h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AB;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7d;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AB;Lcom/facebook/ads/redexgen/X/7d;)V
    .locals 0

    .line 17826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:Lcom/facebook/ads/redexgen/X/AB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/7d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 17827
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:Lcom/facebook/ads/redexgen/X/AB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/7d;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A1E(Lcom/facebook/ads/redexgen/X/7d;)V

    return-void
.end method
