.class public final Lcom/facebook/ads/redexgen/X/UU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UU;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67749
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    .line 67750
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .line 67751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67752
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_4

    .line 67753
    if-ltz p1, :cond_0

    if-ltz p2, :cond_3

    .line 67754
    :cond_0
    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_2

    .line 67755
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    .line 67756
    iput p2, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    .line 67757
    return-void

    .line 67758
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67759
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/16 v2, 0x48

    const/16 v1, 0x18

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67760
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object v1, v3, v5

    const/16 v2, 0x31

    const/16 v1, 0x17

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67762
    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/16 v2, 0x23

    const/16 v1, 0xe

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UU;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x22

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

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UU;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x55t
        -0x30t
        -0x28t
        -0x3dt
        -0x32t
        -0x35t
        -0x3at
        -0x7et
        -0x35t
        -0x30t
        -0x3at
        -0x39t
        -0x26t
        -0x5at
        -0x39t
        -0x32t
        -0x2at
        -0x3dt
        -0x7et
        -0x76t
        -0x79t
        -0x3at
        -0x72t
        -0x7et
        -0x35t
        -0x30t
        -0x3at
        -0x39t
        -0x26t
        -0x7et
        -0x61t
        -0x7et
        -0x79t
        -0x3at
        -0x75t
        -0x38t
        -0x35t
        -0x32t
        -0x39t
        -0x7et
        -0x76t
        -0x79t
        -0x3at
        -0x75t
        -0x7et
        -0x62t
        -0x7et
        -0x71t
        -0x6dt
        -0xct
        -0x9t
        -0x6t
        -0xdt
        -0x52t
        -0x35t
        -0x52t
        -0x4dt
        -0xet
        -0x52t
        -0x4ct
        -0x4ct
        -0x52t
        -0x9t
        -0x4t
        -0xet
        -0xdt
        0x6t
        -0x52t
        -0x35t
        -0x52t
        -0x4dt
        -0xet
        -0x2ft
        -0x2ct
        -0x29t
        -0x30t
        -0x75t
        -0x58t
        -0x58t
        -0x75t
        -0x68t
        -0x64t
        -0x75t
        -0x6ft
        -0x6ft
        -0x75t
        -0x2ct
        -0x27t
        -0x31t
        -0x30t
        -0x1dt
        -0x75t
        -0x58t
        -0x75t
        -0x70t
        -0x31t
    .end array-data
.end method


# virtual methods
.method public final A02()I
    .locals 1

    .line 67763
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 67764
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    return v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/UU;)I
    .locals 2

    .line 67765
    iget v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    if-eq v1, v0, :cond_0

    .line 67766
    iget v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    sub-int/2addr v1, v0

    return v1

    .line 67767
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A05(I)Lcom/facebook/ads/redexgen/X/UU;
    .locals 5

    .line 67768
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    .line 67769
    iget v2, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    add-int/2addr v1, p1

    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    return-object v0

    .line 67770
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67771
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67772
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/UU;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 67773
    return v2

    .line 67774
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/UU;

    .line 67775
    .local v0, "other":Lcom/facebook/ads/redexgen/X/UU;
    iget v1, p1, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    if-ne v1, v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 67776
    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    return v1
.end method
