.class public final Lcom/facebook/ads/redexgen/X/20;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8757
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:I

    .line 8758
    iput v1, p0, Lcom/facebook/ads/redexgen/X/20;->A02:I

    .line 8759
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/20;->A04:I

    .line 8760
    iput v0, p0, Lcom/facebook/ads/redexgen/X/20;->A00:I

    .line 8761
    iput v1, p0, Lcom/facebook/ads/redexgen/X/20;->A03:I

    .line 8762
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/20;
    .locals 0

    .line 8763
    iput p1, p0, Lcom/facebook/ads/redexgen/X/20;->A00:I

    .line 8764
    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/20;
    .locals 0

    .line 8765
    iput p1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:I

    .line 8766
    return-object p0
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/20;
    .locals 0

    .line 8767
    iput p1, p0, Lcom/facebook/ads/redexgen/X/20;->A02:I

    .line 8768
    return-object p0
.end method

.method public final A03(I)Lcom/facebook/ads/redexgen/X/20;
    .locals 0

    .line 8769
    iput p1, p0, Lcom/facebook/ads/redexgen/X/20;->A03:I

    .line 8770
    return-object p0
.end method

.method public final A04(I)Lcom/facebook/ads/redexgen/X/20;
    .locals 0

    .line 8771
    iput p1, p0, Lcom/facebook/ads/redexgen/X/20;->A04:I

    .line 8772
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/qQ;
    .locals 7

    .line 8773
    new-instance v0, Lcom/facebook/ads/redexgen/X/qQ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/20;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/20;->A04:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/20;->A00:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/20;->A03:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/qQ;-><init>(IIIIILcom/facebook/ads/redexgen/X/1w;)V

    return-object v0
.end method
