.class public abstract Lcom/facebook/ads/redexgen/X/Ko;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 959
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rzG5nsHyiLOWX8UOWspYPJE0qk8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zzN7h9kZ1110Ms84Vk8TxNIxLbkfn1bs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ea1csqz6uGTsOrOcIglVsCF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HzbrV2YdC0QyP2mr3Tf3UtzOp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wDtYJLWcmo8biPQhT7PXhiXa0nvGQfME"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EfdNeKI6mNZbvmHLu3zFEqD29"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z9B2Nu2EMki8SlMmHuJ5tm0bMARcwAxE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Vyy1RSqHmZDwxzuj6K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ko;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ko;->A03()V

    const/16 v2, 0x3a

    const/16 v1, 0xf

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ko;->A02:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static A00(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 48643
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1

    .line 48645
    :cond_0
    const/16 v2, 0x17

    const/16 v1, 0x1b

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 48646
    const-wide/16 v10, 0x0

    .line 48647
    .local v0, "value":J
    const/16 v2, 0x38

    const/4 v1, 0x2

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 48648
    .local v2, "parts":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v3, v4, v8

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 48649
    .local v4, "subparts":[Ljava/lang/String;
    array-length v3, v7

    :goto_0
    if-ge v8, v3, :cond_1

    aget-object v9, v7, v8

    .line 48650
    .local v6, "subpart":Ljava/lang/String;
    const-wide/16 v5, 0x3c

    mul-long/2addr v5, v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ko;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ko;->A01:[Ljava/lang/String;

    const-string v1, "6AHxBA9eqgTuoeEClHZkEfjq11VkmmF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long v10, v5, v0

    .line 48651
    .end local v6    # "subpart":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 48652
    :cond_1
    const-wide/16 v2, 0x3e8

    mul-long/2addr v10, v2

    .line 48653
    array-length v1, v4

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 48654
    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v10, v0

    .line 48655
    :cond_2
    mul-long/2addr v2, v10

    return-wide v2
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ko;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ko;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        0x6ct
        0x30t
        0xdt
        0x5t
        0x10t
        0x16t
        0x1t
        0x10t
        0x11t
        0x55t
        0x22t
        0x30t
        0x37t
        0x23t
        0x21t
        0x21t
        0x5bt
        0x55t
        0x32t
        0x1at
        0x1t
        0x55t
        0x4ct
        0x79t
        0x6et
        0x7ft
        0x79t
        0x72t
        0x68t
        0x7dt
        0x7bt
        0x79t
        0x6ft
        0x3ct
        0x71t
        0x69t
        0x6ft
        0x68t
        0x3ct
        0x79t
        0x72t
        0x78t
        0x3ct
        0x6bt
        0x75t
        0x68t
        0x74t
        0x3ct
        0x39t
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0x79t
        0xbt
        0x4at
        0x5at
        0x5bt
        0x40t
        0x51t
        0x3ct
        0x4ft
        0x34t
        0x1dt
        0x49t
        0x3at
        0x3et
        0x3dt
        0x2bt
        0x30t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 48656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    .line 48657
    .local v0, "startPosition":I
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ko;->A05(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48658
    return-void

    .line 48659
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 48660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48661
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48662
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 3

    .line 48663
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object p0

    .line 48664
    .local v0, "line":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/16 v2, 0x32

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ko;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
