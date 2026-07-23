.class public final synthetic Lcom/facebook/ads/redexgen/X/GI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/qI;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6L;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/GP;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V
    .locals 0

    .line 37070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GI;->A02:Lcom/facebook/ads/redexgen/X/GP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GI;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GI;->A01:Lcom/facebook/ads/redexgen/X/6L;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 37071
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GI;->A02:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GI;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A01:Lcom/facebook/ads/redexgen/X/6L;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A06(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    return-void
.end method
