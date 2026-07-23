.class public final synthetic Lcom/facebook/ads/redexgen/X/99;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8r;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8v;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 0

    .line 23863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/99;->A01:Lcom/facebook/ads/redexgen/X/8v;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Lcom/facebook/ads/redexgen/X/8r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 23864
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/99;->A01:Lcom/facebook/ads/redexgen/X/8v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Lcom/facebook/ads/redexgen/X/8r;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0d(Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V

    return-void
.end method
