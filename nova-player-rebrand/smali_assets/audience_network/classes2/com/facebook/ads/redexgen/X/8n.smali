.class public final synthetic Lcom/facebook/ads/redexgen/X/8n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6I;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8o;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 0

    .line 23233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:Lcom/facebook/ads/redexgen/X/8o;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:Lcom/facebook/ads/redexgen/X/6I;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 23234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A0A(Lcom/facebook/ads/redexgen/X/6I;)V

    return-void
.end method
