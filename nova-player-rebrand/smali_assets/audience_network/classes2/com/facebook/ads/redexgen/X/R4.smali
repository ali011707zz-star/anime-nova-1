.class public final Lcom/facebook/ads/redexgen/X/R4;
.super Lcom/facebook/ads/redexgen/X/WG;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Tw;)V
    .locals 2

    .line 61201
    sget-object v1, Lcom/facebook/ads/redexgen/X/WF;->A03:Lcom/facebook/ads/redexgen/X/WF;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/WG;-><init>(Lcom/facebook/ads/redexgen/X/WF;Lcom/facebook/ads/redexgen/X/Tw;Ljava/lang/String;)V

    .line 61202
    iput p2, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:I

    .line 61203
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R4;->A01:Ljava/lang/String;

    .line 61204
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Lcom/facebook/ads/redexgen/X/Tw;
    .locals 1

    .line 61205
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/WG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v0

    return-object v0
.end method

.method public final A03()I
    .locals 1

    .line 61206
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:I

    return v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 61207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A01:Ljava/lang/String;

    return-object v0
.end method
