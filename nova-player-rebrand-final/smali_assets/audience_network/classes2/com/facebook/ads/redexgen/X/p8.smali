.class public final Lcom/facebook/ads/redexgen/X/p8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Y;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103949
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/p8;-><init>(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 103950
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 0

    .line 103951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103952
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/p8;->A00:Lcom/facebook/ads/redexgen/X/5t;

    .line 103953
    return-void
.end method


# virtual methods
.method public final A5I()Lcom/facebook/ads/redexgen/X/pF;
    .locals 2

    .line 103954
    new-instance v1, Lcom/facebook/ads/redexgen/X/1j;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/1j;-><init>()V

    .line 103955
    .local v0, "fileDataSource":Lcom/facebook/ads/redexgen/X/1j;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p8;->A00:Lcom/facebook/ads/redexgen/X/5t;

    if-eqz v0, :cond_0

    .line 103956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p8;->A00:Lcom/facebook/ads/redexgen/X/5t;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 103957
    :cond_0
    return-object v1
.end method
