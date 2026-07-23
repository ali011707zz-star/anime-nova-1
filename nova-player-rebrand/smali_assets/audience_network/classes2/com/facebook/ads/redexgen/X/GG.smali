.class public final synthetic Lcom/facebook/ads/redexgen/X/GG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6I;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/GP;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 0

    .line 37066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GG;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GG;->A00:Lcom/facebook/ads/redexgen/X/6I;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 37067
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GG;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GG;->A00:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A0C(Lcom/facebook/ads/redexgen/X/6I;)V

    return-void
.end method
