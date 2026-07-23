.class public final Lcom/facebook/ads/redexgen/X/o6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/B0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:[Ljava/nio/ByteBuffer;

.field public A01:[Ljava/nio/ByteBuffer;

.field public final A02:Landroid/media/MediaCodec;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3318
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TBh0kDiSO0F5FU8B8W6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Wu96YBEbp5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GXHkztSg0E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SVf9uR0CS1ZMhrygTfVGTHtgONFy9fbr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ToJtFxraFZDV0Nhg1oJyUAeavZbRFz0H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e4ZNDN8Q6QOy3wABZV9fSILWPV6YlB7H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vAs40s3kLNqKh27SimoH5s3SjKwld5mw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MzWq8aWYtfnIiGPN6xqzLuzHDFClSOvg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/o6;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "This constructor is private in Exo r2.18.6 and builder pattern should be used.This can be fixed after MediaCodecPool.Java dependency is removed.Because the Factory calls start before allocating the adapter it can call getInputBuffers here. Butdo not do it while the constructor is public because start hasn\'t been called yet.See S358180"
    .end annotation

    .line 102022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102023
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    .line 102024
    return-void
.end method


# virtual methods
.method public final synthetic A00(Lcom/facebook/ads/redexgen/X/Az;Landroid/media/MediaCodec;JJ)V
    .locals 6

    .line 102025
    move-object v1, p0

    move-wide v4, p5

    move-wide v2, p3

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Az;->ADz(Lcom/facebook/ads/redexgen/X/B0;JJ)V

    return-void
.end method

.method public final A58(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Override is customization due to dependency on MediaCodec[Audio/Video]Renderer"
    .end annotation

    .line 102026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 102027
    return-void
.end method

.method public final A5s()I
    .locals 3

    .line 102028
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public final A5u(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 4

    .line 102029
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 102030
    .local v0, "index":I
    const/4 v2, -0x3

    if-ne v3, v2, :cond_1

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_1

    .line 102031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A01:[Ljava/nio/ByteBuffer;

    .line 102032
    :cond_1
    if-eq v3, v2, :cond_0

    .line 102033
    return v3
.end method

.method public final A8J(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 102034
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 102035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 102036
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/o6;->A00:[Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/o6;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/o6;->A03:[Ljava/lang/String;

    const-string v1, "7Nv94jZvV7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "iAeXpyFDwx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8e(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 102037
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 102038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 102039
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A01:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A8f()Landroid/media/MediaFormat;
    .locals 1

    .line 102040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final A8j()Landroid/util/Pair;
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D39791066"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102041
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final A9K()I
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D39791066"
    .end annotation

    .line 102042
    const/4 v0, 0x0

    return v0
.end method

.method public final AHI(IIIJI)V
    .locals 7

    .line 102043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    move-wide v4, p4

    move v3, p3

    move v2, p2

    move v6, p6

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 102044
    return-void
.end method

.method public final AHK(IILcom/facebook/ads/redexgen/X/5z;JI)V
    .locals 7

    .line 102045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    .line 102046
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/5z;->A00()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 102047
    move-wide v4, p4

    move v2, p2

    move v6, p6

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 102048
    return-void
.end method

.method public final AHb()V
    .locals 1

    .line 102049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A00:[Ljava/nio/ByteBuffer;

    .line 102050
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A01:[Ljava/nio/ByteBuffer;

    .line 102051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 102052
    return-void
.end method

.method public final AHh(IJ)V
    .locals 1

    .line 102053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 102054
    return-void
.end method

.method public final AHi(IZ)V
    .locals 1

    .line 102055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 102056
    return-void
.end method

.method public final AJa(Lcom/facebook/ads/redexgen/X/Az;Landroid/os/Handler;)V
    .locals 2

    .line 102057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Lcom/facebook/ads/redexgen/X/o6;Lcom/facebook/ads/redexgen/X/Az;)V

    invoke-virtual {v1, v0, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 102058
    return-void
.end method

.method public final AJb(Landroid/view/Surface;)V
    .locals 1

    .line 102059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 102060
    return-void
.end method

.method public final AJs(I)V
    .locals 1

    .line 102061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 102062
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 102063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 102064
    return-void
.end method

.method public final reset()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 102065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V

    .line 102066
    return-void
.end method

.method public final start()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Could be revisited after upgrading MediaCodecRenderer"
    .end annotation

    .line 102067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 102068
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 102069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o6;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 102070
    return-void
.end method
