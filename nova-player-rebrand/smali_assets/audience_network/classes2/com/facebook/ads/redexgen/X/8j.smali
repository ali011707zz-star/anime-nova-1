.class public final synthetic Lcom/facebook/ads/redexgen/X/8j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/qI;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6L;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/8o;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 0

    .line 23223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8j;->A02:Lcom/facebook/ads/redexgen/X/8o;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8j;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8j;->A01:Lcom/facebook/ads/redexgen/X/6L;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 23224
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8j;->A02:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8j;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8j;->A01:Lcom/facebook/ads/redexgen/X/6L;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A06(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    return-void
.end method
