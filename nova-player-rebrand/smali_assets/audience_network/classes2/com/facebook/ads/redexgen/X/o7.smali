.class public final Lcom/facebook/ads/redexgen/X/o7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field public A00:[Landroid/media/MediaCodecInfo;

.field public final A01:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 102071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102072
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 102073
    :cond_0
    const/4 v0, 0x1

    .line 102074
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/o7;->A01:I

    .line 102075
    return-void

    .line 102076
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "mediaCodecInfos"
        }
    .end annotation

    .line 102077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o7;->A00:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 102078
    iget v1, p0, Lcom/facebook/ads/redexgen/X/o7;->A01:I

    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o7;->A00:[Landroid/media/MediaCodecInfo;

    .line 102079
    :cond_0
    return-void
.end method


# virtual methods
.method public final A7P()I
    .locals 1

    .line 102080
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/o7;->A00()V

    .line 102081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o7;->A00:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final A7Q(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 102082
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/o7;->A00()V

    .line 102083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o7;->A00:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final AAR(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 102084
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AAS(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 102085
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AJ4()Z
    .locals 1

    .line 102086
    const/4 v0, 0x1

    return v0
.end method
