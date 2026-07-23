.class public final synthetic Lcom/facebook/ads/redexgen/X/GH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/GP;

.field public final synthetic A02:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/Object;J)V
    .locals 0

    .line 37068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GH;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GH;->A02:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/GH;->A00:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 37069
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GH;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GH;->A02:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/GH;->A00:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/GP;->A0E(Ljava/lang/Object;J)V

    return-void
.end method
