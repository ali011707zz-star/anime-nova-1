.class public final synthetic Lcom/facebook/ads/redexgen/X/GK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/pW;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/GP;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/pW;)V
    .locals 0

    .line 37074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GK;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GK;->A00:Lcom/facebook/ads/redexgen/X/pW;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 37075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GK;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A00:Lcom/facebook/ads/redexgen/X/pW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A08(Lcom/facebook/ads/redexgen/X/pW;)V

    return-void
.end method
