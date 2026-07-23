.class public final Lcom/facebook/ads/redexgen/X/nm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DT;
.implements Lcom/facebook/ads/redexgen/X/DU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/9p;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 101597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nm;->A01:Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101598
    iput p2, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    .line 101599
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/nm;)I
    .locals 0

    .line 101600
    iget p0, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    return p0
.end method


# virtual methods
.method public final A89()J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D21840558 for FBVP"
    .end annotation

    .line 101601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nm;->A01:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9p;->A0W(Lcom/facebook/ads/redexgen/X/9p;)[Lcom/facebook/ads/redexgen/X/na;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/na;->A0S()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAe()Z
    .locals 2

    .line 101602
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nm;->A01:Lcom/facebook/ads/redexgen/X/9p;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9p;->A0f(I)Z

    move-result v0

    return v0
.end method

.method public final ACR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nm;->A01:Lcom/facebook/ads/redexgen/X/9p;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9p;->A0d(I)V

    .line 101604
    return-void
.end method

.method public final AHP(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I
    .locals 2

    .line 101605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nm;->A01:Lcom/facebook/ads/redexgen/X/9p;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9p;->A0Y(ILcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I

    move-result v0

    return v0
.end method

.method public final AK2(J)I
    .locals 2

    .line 101606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nm;->A01:Lcom/facebook/ads/redexgen/X/9p;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nm;->A00:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9p;->A0X(IJ)I

    move-result v0

    return v0
.end method
