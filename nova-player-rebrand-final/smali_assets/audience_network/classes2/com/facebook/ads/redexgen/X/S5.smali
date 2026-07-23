.class public final Lcom/facebook/ads/redexgen/X/S5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Ve;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 63524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63525
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ve;->A00(I)Lcom/facebook/ads/redexgen/X/Ve;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/Ve;

    .line 63526
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 63527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/Ve;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A04()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 63528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/Ve;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A05()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 63529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/Ve;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ve;->A06()I

    move-result v0

    return v0
.end method
