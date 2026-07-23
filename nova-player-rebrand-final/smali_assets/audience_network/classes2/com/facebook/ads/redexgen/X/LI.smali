.class public abstract Lcom/facebook/ads/redexgen/X/LI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 975
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zHvJnNiJi0M"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FniiyLS950t5mTu4QlbfX1TrXuc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I7PZw93cjLP5IpZ6BbWCD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9iobBdNwIxtUK2g"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LhRCEY8vP1M7TerIjGAXS82kM3fiu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vMv2t0fFsfhvwPnbOb52fPF3dg3aW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XvTrrYiBPPp7CW1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "g12euaG6mbsrKt48m9yyXN0g2MG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LI;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00([BII)I
    .locals 2

    .line 49628
    .local v0, "position":I
    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v1, p0, p1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    .line 49629
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49630
    :cond_0
    return p1
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4v;II)J
    .locals 6

    .line 49631
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 49632
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/4 v0, 0x5

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v1, v0, :cond_0

    .line 49633
    return-wide v4

    .line 49634
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 49635
    .local v0, "tsPacketHeader":I
    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 49636
    return-wide v4

    .line 49637
    :cond_1
    const v0, 0x1fff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 49638
    .local v1, "pid":I
    if-eq v0, p2, :cond_2

    .line 49639
    return-wide v4

    .line 49640
    :cond_2
    and-int/lit8 v0, v1, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 49641
    .local v4, "adaptationFieldExists":Z
    :goto_0
    if-nez v0, :cond_4

    .line 49642
    return-wide v4

    .line 49643
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 49644
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 49645
    .local p1, "adaptationFieldLength":I
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v1, :cond_7

    .line 49646
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 49647
    .local p2, "flags":I
    and-int/lit8 v1, v0, 0x10

    const/16 v0, 0x10

    if-ne v1, v0, :cond_5

    .line 49648
    .local v5, "pcrFlagSet":Z
    :goto_1
    if-eqz v3, :cond_7

    .line 49649
    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 49650
    .local v2, "pcrBytes":[B
    array-length v0, v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 49651
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LI;->A02([B)J

    move-result-wide v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LI;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49652
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/LI;->A00:[Ljava/lang/String;

    const-string v1, "oAb2qjZGj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide v3

    .line 49653
    .end local v2    # "pcrBytes":[B
    .end local v5    # "pcrFlagSet":Z
    .end local p2    # "flags":I
    :cond_7
    return-wide v4
.end method

.method public static A02([B)J
    .locals 9

    .line 49654
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    const/16 v0, 0x19

    shl-long/2addr v2, v0

    const/4 v6, 0x1

    aget-byte v0, p0, v6

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x11

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x9

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v7

    shl-long/2addr v0, v6

    or-long/2addr v2, v0

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v7, v0

    const/4 v0, 0x7

    shr-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public static A03([BIII)Z
    .locals 6

    .line 49655
    const/4 v4, 0x0

    .line 49656
    .local v0, "consecutiveSyncByteCount":I
    const/4 v3, -0x4

    .local v1, "i":I
    :goto_0
    const/4 v0, 0x4

    if-gt v3, v0, :cond_4

    .line 49657
    mul-int/lit16 v5, v3, 0xbc

    sget-object v2, Lcom/facebook/ads/redexgen/X/LI;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/LI;->A00:[Ljava/lang/String;

    const-string v1, "Qn38sx03S77VT5y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "gfX0N6dqp84BCDo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/2addr v5, p3

    .line 49658
    .local v2, "currentPosition":I
    if-lt v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    aget-byte v1, p0, v5

    const/16 v0, 0x47

    if-eq v1, v0, :cond_3

    .line 49659
    :cond_1
    const/4 v4, 0x0

    .line 49660
    .end local v2    # "currentPosition":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49661
    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x5

    if-ne v4, v0, :cond_2

    .line 49662
    const/4 v0, 0x1

    return v0

    .line 49663
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method
