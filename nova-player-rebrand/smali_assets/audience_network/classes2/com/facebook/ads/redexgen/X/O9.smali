.class public final synthetic Lcom/facebook/ads/redexgen/X/O9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/k8;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/O8;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7k;

.field public final synthetic A03:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/7k;Lcom/facebook/ads/redexgen/X/k8;Ljava/util/List;Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 0

    .line 55397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O9;->A02:Lcom/facebook/ads/redexgen/X/7k;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O9;->A00:Lcom/facebook/ads/redexgen/X/k8;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O9;->A03:Ljava/util/List;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/O9;->A01:Lcom/facebook/ads/redexgen/X/O8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 55398
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/O9;->A02:Lcom/facebook/ads/redexgen/X/7k;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/O9;->A00:Lcom/facebook/ads/redexgen/X/k8;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O9;->A03:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O9;->A01:Lcom/facebook/ads/redexgen/X/O8;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7k;->A0a(Lcom/facebook/ads/redexgen/X/k8;Ljava/util/List;Lcom/facebook/ads/redexgen/X/O8;)V

    return-void
.end method
