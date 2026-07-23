.class public final Lcom/facebook/ads/redexgen/X/mK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 98447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;Lcom/facebook/ads/redexgen/X/Im;)V
    .locals 0

    .line 98448
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mK;-><init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public final A4i(IILcom/facebook/ads/redexgen/X/ms;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0U(IILcom/facebook/ads/redexgen/X/ms;)V

    .line 98450
    return-void
.end method

.method public final A6N(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 98451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S(I)V

    .line 98452
    return-void
.end method

.method public final A6a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 98453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T(ID)V

    .line 98454
    return-void
.end method

.method public final A7u(I)I
    .locals 1

    .line 98455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R(I)I

    move-result v0

    return v0
.end method

.method public final AAH(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 98456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V(IJ)V

    .line 98457
    return-void
.end method

.method public final AAW(I)Z
    .locals 1

    .line 98458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Y(I)Z

    move-result v0

    return v0
.end method

.method public final AK9(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 98459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    move-wide v4, p4

    move-wide v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0W(IJJ)V

    .line 98460
    return-void
.end method

.method public final AKK(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 98461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0X(ILjava/lang/String;)V

    .line 98462
    return-void
.end method
