.class public final Lcom/facebook/ads/redexgen/X/o8;
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
    name = "MediaCodecListCompatV16"
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/o8;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 102087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/BV;)V
    .locals 0

    .line 102088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/o8;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/o8;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xb

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o8;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0x1bt
        0x1dt
        0xbt
        0xct
        0x1bt
        0x53t
        0xet
        0x12t
        0x1ft
        0x7t
        0x1ct
        0x1ft
        0x1dt
        0x15t
        0xat
        0x15t
        0x18t
        0x19t
        0x13t
        0x53t
        0x1dt
        0xat
        0x1ft
    .end array-data
.end method


# virtual methods
.method public final A7P()I
    .locals 1

    .line 102089
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public final A7Q(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 102090
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public final AAR(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 102091
    const/4 v0, 0x0

    return v0
.end method

.method public final AAS(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 102092
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102093
    const/16 v2, 0xf

    const/16 v1, 0x9

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102094
    :goto_0
    return v0

    .line 102095
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AJ4()Z
    .locals 1

    .line 102096
    const/4 v0, 0x0

    return v0
.end method
