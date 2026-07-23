.class public final Lcom/facebook/ads/redexgen/X/L9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:[Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L9;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;)V"
        }
    .end annotation

    .line 49375
    .local p1, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L9;->A00:Ljava/util/List;

    .line 49377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L9;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    .line 49378
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x77t
        -0x64t
        -0x5ct
        -0x71t
        -0x66t
        -0x69t
        -0x6et
        0x4et
        -0x6ft
        -0x66t
        -0x63t
        -0x5ft
        -0x6dt
        -0x6et
        0x4et
        -0x6ft
        -0x71t
        -0x62t
        -0x5et
        -0x69t
        -0x63t
        -0x64t
        0x4et
        -0x65t
        -0x69t
        -0x65t
        -0x6dt
        0x4et
        -0x5et
        -0x59t
        -0x62t
        -0x6dt
        0x4et
        -0x62t
        -0x60t
        -0x63t
        -0x5ct
        -0x69t
        -0x6et
        -0x6dt
        -0x6et
        0x68t
        0x4et
        -0x7bt
        -0x6ct
        -0x6ct
        -0x70t
        -0x73t
        -0x79t
        -0x7bt
        -0x68t
        -0x73t
        -0x6dt
        -0x6et
        0x53t
        -0x79t
        -0x77t
        -0x7bt
        0x51t
        0x5at
        0x54t
        0x5ct
        -0x31t
        -0x22t
        -0x22t
        -0x26t
        -0x29t
        -0x2ft
        -0x31t
        -0x1et
        -0x29t
        -0x23t
        -0x24t
        -0x63t
        -0x2ft
        -0x2dt
        -0x31t
        -0x65t
        -0x5bt
        -0x62t
        -0x5at
    .end array-data
.end method


# virtual methods
.method public final A02(JLcom/facebook/ads/redexgen/X/4v;)V
    .locals 1

    .line 49379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L9;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/H3;->A03(JLcom/facebook/ads/redexgen/X/4v;[Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 49380
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 9

    .line 49381
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L9;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 49382
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 49383
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v2

    .line 49384
    .local v1, "output":Lcom/facebook/ads/redexgen/X/Hd;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L9;->A00:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/qI;

    .line 49385
    .local v2, "channelFormat":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 49386
    .local v3, "channelMimeType":Ljava/lang/String;
    const/16 v6, 0x2b

    const/16 v1, 0x13

    const/4 v0, 0x7

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49387
    const/16 v6, 0x3e

    const/16 v1, 0x13

    const/16 v0, 0x51

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x11

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49388
    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 49389
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0T:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/qI;->A0T:Ljava/lang/String;

    .line 49390
    .local v4, "formatId":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 49391
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 49392
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0H:I

    .line 49393
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0n(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    .line 49394
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A03:I

    .line 49395
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0Z(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    .line 49396
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 49397
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 49398
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 49399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L9;->A01:[Lcom/facebook/ads/redexgen/X/Hd;

    aput-object v2, v0, v3

    .line 49400
    .end local v1    # "output":Lcom/facebook/ads/redexgen/X/Hd;
    .end local v2    # "channelFormat":Lcom/facebook/ads/redexgen/X/qI;
    .end local v3    # "channelMimeType":Ljava/lang/String;
    .end local v4    # "formatId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 49401
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 49402
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 49403
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
