.class public final Lcom/facebook/ads/redexgen/X/EE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/er;


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View;)V
    .locals 0

    .line 34481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34482
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EE;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 34483
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EE;->A00:Landroid/view/View;

    .line 34484
    return-void
.end method


# virtual methods
.method public final A9V()D
    .locals 3

    .line 34485
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EE;->A00:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/fq;

    move-result-object v0

    .line 34486
    .local v0, "result":Lcom/facebook/ads/redexgen/X/fq;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fq;->A00()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
