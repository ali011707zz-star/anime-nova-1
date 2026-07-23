.class public final Lcom/facebook/ads/redexgen/X/5y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternHolderV24"
.end annotation


# instance fields
.field public final A00:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field public final A01:Landroid/media/MediaCodec$CryptoInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2

    .line 15403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15404
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5y;->A01:Landroid/media/MediaCodec$CryptoInfo;

    .line 15405
    const/4 v1, 0x0

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5y;->A00:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 15406
    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/facebook/ads/redexgen/X/5x;)V
    .locals 0

    .line 15407
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5y;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method private A00(II)V
    .locals 2

    .line 15408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5y;->A00:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 15409
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5y;->A01:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5y;->A00:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 15410
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/5y;II)V
    .locals 0

    .line 15411
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5y;->A00(II)V

    return-void
.end method
