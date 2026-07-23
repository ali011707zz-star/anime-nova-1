.class public final Lcom/facebook/ads/redexgen/X/4v;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:[C

.field public static final A07:[C


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 348
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RlBAQ9etSzb6rKOU0OwTULVtudJYJZp0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XAmGWsEC26u1mjqUpAPP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gKAOne2sLRpvkAzkWDtxdYOHT1y3K7xN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "f0TxnfWyKi4JtHzbatu6pF78XF274ljv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5Aw1jR83b8etF7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lH1Eai5bIm9O9MK22LfAWzb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DxY4VOe5grYAJX95lLrlpegM3yyEwSTm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4v;->A04()V

    const/4 v4, 0x2

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4v;->A06:[C

    .line 349
    const/4 v3, 0x1

    new-array v2, v3, [C

    const/4 v1, 0x0

    const/16 v0, 0xa

    aput-char v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4v;->A07:[C

    .line 350
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/nio/charset/Charset;

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    aput-object v0, v2, v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    aput-object v0, v2, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A02:Ljava/nio/charset/Charset;

    aput-object v0, v2, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A03:Ljava/nio/charset/Charset;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A04:Ljava/nio/charset/Charset;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 351
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/jW;->A05([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4v;->A05:Ljava/util/Set;

    .line 352
    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 12620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12621
    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    .line 12622
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12624
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    .line 12625
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    .line 12626
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 12627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    .line 12629
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    .line 12630
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 12631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    .line 12633
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    .line 12634
    return-void
.end method

.method private A00(Ljava/nio/charset/Charset;[C)C
    .locals 5

    .line 12635
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 12636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rc;->A00(B)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/pN;->A01(J)C

    move-result v2

    .line 12637
    .local v0, "character":C
    const/4 v1, 0x1

    .line 12638
    .local v2, "characterSize":I
    .restart local v2    # "characterSize":I
    :goto_0
    invoke-static {p2, v2}, Lcom/facebook/ads/redexgen/X/pN;->A04([CC)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12639
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12640
    int-to-long v0, v2

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/pN;->A01(J)C

    move-result v0

    return v0

    .line 12641
    .end local v0    # "character":C
    .end local v2    # "characterSize":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A03:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12642
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 12643
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v2, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v3

    aget-byte v0, v1, v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/pN;->A00(BB)C

    move-result v2

    .line 12644
    .restart local v0    # "character":C
    const/4 v1, 0x2

    .restart local v2    # "characterSize":I
    goto :goto_0

    .line 12645
    .end local v0    # "character":C
    .end local v2    # "characterSize":I
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A04:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 12646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v3

    aget-byte v2, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v1, v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/pN;->A00(BB)C

    move-result v2

    .line 12647
    .restart local v0    # "character":C
    const/4 v1, 0x2

    goto :goto_0

    .line 12648
    :cond_4
    return v4

    .line 12649
    .end local v0    # "character":C
    .end local v2
    :cond_5
    return v4
.end method

.method private A01(Ljava/nio/charset/Charset;)I
    .locals 4

    .line 12650
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12651
    .end local v0
    :cond_0
    const/4 v3, 0x1

    .line 12652
    .restart local v0
    :goto_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .local v1, "i":I
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_8

    .line 12653
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    aget-byte v0, v0, v2

    .line 12654
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A16(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12655
    return v2

    .line 12656
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A03:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v1, v0

    .line 12657
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A16(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12658
    return v2

    .line 12659
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A04:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    aget-byte v0, v0, v2

    .line 12660
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A16(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12661
    return v2

    .line 12662
    :cond_5
    add-int/2addr v2, v3

    goto :goto_1

    .line 12663
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A04:Ljava/nio/charset/Charset;

    .line 12664
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A03:Ljava/nio/charset/Charset;

    .line 12665
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12666
    :cond_7
    const/4 v3, 0x2

    .local v0, "stride":I
    goto :goto_0

    .line 12667
    .end local v1    # "i":I
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    return v0

    .line 12668
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    const/16 v1, 0x15

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A02(C)Ljava/lang/String;
    .locals 4

    .line 12669
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 12670
    const/4 v0, 0x0

    return-object v0

    .line 12671
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12672
    .local v0, "stringLimit":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    aget-byte v0, v0, v3

    if-eq v0, p1, :cond_1

    .line 12673
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12674
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    sub-int v0, v3, v0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0r([BII)Ljava/lang/String;

    move-result-object v2

    .line 12675
    .local v1, "string":Ljava/lang/String;
    iput v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12676
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    if-ge v1, v0, :cond_2

    .line 12677
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12678
    :cond_2
    return-object v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4v;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x67t
        0x7ft
        0x68t
        0x65t
        0x60t
        0x6dt
        0x29t
        0x5ct
        0x5dt
        0x4ft
        0x24t
        0x31t
        0x29t
        0x7at
        0x6ct
        0x78t
        0x7ct
        0x6ct
        0x67t
        0x6at
        0x6ct
        0x29t
        0x6at
        0x66t
        0x67t
        0x7dt
        0x60t
        0x67t
        0x7ct
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x29t
        0x6bt
        0x70t
        0x7dt
        0x6ct
        0x33t
        0x29t
        0x58t
        0x7ft
        0x67t
        0x70t
        0x7dt
        0x78t
        0x75t
        0x31t
        0x44t
        0x45t
        0x57t
        0x3ct
        0x29t
        0x31t
        0x62t
        0x74t
        0x60t
        0x64t
        0x74t
        0x7ft
        0x72t
        0x74t
        0x31t
        0x77t
        0x78t
        0x63t
        0x62t
        0x65t
        0x31t
        0x73t
        0x68t
        0x65t
        0x74t
        0x2bt
        0x31t
        0x2t
        0x39t
        0x26t
        0x76t
        0x34t
        0x3ft
        0x22t
        0x76t
        0x38t
        0x39t
        0x22t
        0x76t
        0x2ct
        0x33t
        0x24t
        0x39t
        0x6ct
        0x76t
        0x26t
        0x1dt
        0x0t
        0x6t
        0x3t
        0x3t
        0x1ct
        0x1t
        0x7t
        0x16t
        0x17t
        0x53t
        0x10t
        0x1bt
        0x12t
        0x1t
        0x0t
        0x16t
        0x7t
        0x49t
        0x53t
    .end array-data
.end method

.method private A05(Ljava/nio/charset/Charset;)V
    .locals 2

    .line 12679
    sget-object v0, Lcom/facebook/ads/redexgen/X/4v;->A06:[C

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A00(Ljava/nio/charset/Charset;[C)C

    move-result v1

    const/16 v0, 0xd

    if-ne v1, v0, :cond_0

    .line 12680
    sget-object v0, Lcom/facebook/ads/redexgen/X/4v;->A07:[C

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A00(Ljava/nio/charset/Charset;[C)C

    .line 12681
    :cond_0
    return-void
.end method


# virtual methods
.method public final A06()D
    .locals 2

    .line 12682
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0P()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()I
    .locals 2

    .line 12683
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 12684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    array-length v0, v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 12685
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 12686
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 12687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final A0C()I
    .locals 4

    .line 12688
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x18

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0D()I
    .locals 4

    .line 12689
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0E()I
    .locals 4

    .line 12690
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v3, v0, 0xff

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0F()I
    .locals 5

    .line 12691
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v4

    .line 12692
    .local v0, "result":I
    if-ltz v4, :cond_0

    .line 12693
    return v4

    .line 12694
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0G()I
    .locals 4

    .line 12695
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v3, v0, 0xff

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0H()I
    .locals 4

    .line 12696
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 12697
    .local v0, "b1":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 12698
    .local v1, "b2":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 12699
    .local v2, "b3":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 12700
    .local v3, "b4":I
    shl-int/lit8 v1, v1, 0x15

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x7

    or-int/2addr v1, v0

    or-int/2addr v1, v2

    return v1
.end method

.method public final A0I()I
    .locals 3

    .line 12701
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final A0J()I
    .locals 4

    .line 12702
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 12703
    .local v0, "result":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12704
    return v3
.end method

.method public final A0K()I
    .locals 4

    .line 12705
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x10

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0L()I
    .locals 5

    .line 12706
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v4

    .line 12707
    .local v0, "result":I
    if-ltz v4, :cond_0

    .line 12708
    return v4

    .line 12709
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0M()I
    .locals 4

    .line 12710
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0N()J
    .locals 8

    .line 12711
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    const/16 v0, 0x38

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0O()J
    .locals 8

    .line 12712
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0P()J
    .locals 8

    .line 12713
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0Q()J
    .locals 8

    .line 12714
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0R()J
    .locals 6

    .line 12715
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0P()J

    move-result-wide v2

    .line 12716
    .local v0, "result":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 12717
    return-wide v2

    .line 12718
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0S()J
    .locals 11

    .line 12719
    const/4 v5, 0x0

    .line 12720
    .local v0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v1, v0

    int-to-long v3, v0

    .line 12721
    .local v1, "value":J
    const/4 v7, 0x7

    .local v3, "j":I
    :goto_0
    const/4 v6, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const-string v1, "oMNWSgm03bScuVXxVZmUeRStw4NVi0TN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ltz v7, :cond_0

    .line 12722
    const/4 v10, 0x1

    shl-int v0, v10, v7

    int-to-long v1, v0

    and-long/2addr v1, v3

    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-nez v0, :cond_3

    .line 12723
    if-ge v7, v6, :cond_2

    .line 12724
    shl-int v0, v10, v7

    sub-int/2addr v0, v10

    int-to-long v0, v0

    and-long/2addr v3, v0

    .line 12725
    rsub-int/lit8 v5, v7, 0x7

    .line 12726
    .end local v3    # "j":I
    :cond_0
    :goto_1
    if-eqz v5, :cond_6

    .line 12727
    const/4 v7, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 12728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v7

    aget-byte v2, v1, v0

    .line 12729
    .local v5, "x":I
    and-int/lit16 v1, v2, 0xc0

    const/16 v0, 0x80

    if-ne v1, v0, :cond_4

    .line 12730
    shl-long/2addr v3, v6

    and-int/lit8 v0, v2, 0x3f

    int-to-long v0, v0

    or-long/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    .line 12731
    .end local v5    # "x":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const-string v1, "QkYn4WhdN3Bc00ITVAtZ7M0H0JKEG2qx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v5
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 12732
    :cond_2
    const/4 v0, 0x7

    if-ne v7, v0, :cond_0

    .line 12733
    const/4 v5, 0x1

    goto :goto_1

    .line 12734
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 12735
    .restart local v5    # "x":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2a

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12736
    .end local v3    # "i":I
    .end local v5    # "x":I
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12737
    return-wide v3

    .line 12738
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    const/16 v1, 0x23

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1

    .line 12739
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 12740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A02(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0V(I)Ljava/lang/String;
    .locals 3

    .line 12741
    if-nez p1, :cond_0

    .line 12742
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12743
    :cond_0
    move v2, p1

    .line 12744
    .local v0, "stringLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 12745
    .local v1, "lastIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 12746
    add-int/lit8 v2, v2, -0x1

    .line 12747
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0r([BII)Ljava/lang/String;

    move-result-object v1

    .line 12748
    .local v2, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12749
    return-object v1
.end method

.method public final A0W(I)Ljava/lang/String;
    .locals 1

    .line 12750
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 12751
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 12752
    .local v0, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12753
    return-object v1
.end method

.method public final A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .line 12754
    sget-object v0, Lcom/facebook/ads/redexgen/X/4v;->A05:Ljava/util/Set;

    .line 12755
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    const/16 v1, 0x15

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12756
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 12757
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 12758
    const/4 v0, 0x0

    return-object v0

    .line 12759
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12760
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Z()Ljava/nio/charset/Charset;

    .line 12761
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A01(Ljava/nio/charset/Charset;)I

    move-result v1

    .line 12762
    .local v0, "lineLimit":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 12763
    .local v1, "line":Ljava/lang/String;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    if-ne v1, v0, :cond_2

    .line 12764
    return-object v2

    .line 12765
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A05(Ljava/nio/charset/Charset;)V

    .line 12766
    return-object v2
.end method

.method public final A0Z()Ljava/nio/charset/Charset;
    .locals 8

    .line 12767
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v3, 0x2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v1, v1, v0

    const/16 v0, -0x11

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, v1, v0

    const/16 v0, -0x45

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v3

    aget-byte v1, v1, v0

    const/16 v0, -0x41

    if-ne v1, v0, :cond_0

    .line 12768
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12769
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    return-object v0

    .line 12770
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 12771
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v1, v0

    const/4 v5, -0x1

    const/4 v4, -0x2

    if-ne v0, v4, :cond_2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v6, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const-string v1, "9QZAaK9H1E15SkUu26Oe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v7, v0

    if-ne v0, v5, :cond_2

    .line 12772
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12773
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A03:Ljava/nio/charset/Charset;

    return-object v0

    .line 12774
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v1, v0

    if-ne v0, v5, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    if-ne v0, v4, :cond_3

    .line 12775
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12776
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A04:Ljava/nio/charset/Charset;

    return-object v0

    .line 12777
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0a()S
    .locals 4

    .line 12778
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v3, v0, 0xff

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    int-to-short v0, v3

    return v0
.end method

.method public final A0b()S
    .locals 4

    .line 12779
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    int-to-short v0, v3

    return v0
.end method

.method public final A0c(I)V
    .locals 1

    .line 12780
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 12781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    .line 12782
    :cond_0
    return-void
.end method

.method public final A0d(I)V
    .locals 3

    .line 12783
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 12784
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const-string v1, "3F79npZxDc4PfqkC8vfulVLdM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 12785
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0e(I)V
    .locals 1

    .line 12786
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 12787
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    .line 12788
    return-void

    .line 12789
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f(I)V
    .locals 4

    .line 12790
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A04:[Ljava/lang/String;

    const-string v1, "UMwuHioqOI4Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 12791
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12792
    return-void
.end method

.method public final A0g(I)V
    .locals 1

    .line 12793
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 12794
    return-void
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/4u;I)V
    .locals 2

    .line 12795
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 12796
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 12797
    return-void
.end method

.method public final A0i([B)V
    .locals 1

    .line 12798
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 12799
    return-void
.end method

.method public final A0j([BI)V
    .locals 1

    .line 12800
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    .line 12801
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:I

    .line 12802
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12803
    return-void
.end method

.method public final A0k([BII)V
    .locals 2

    .line 12804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12805
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:I

    .line 12806
    return-void
.end method

.method public final A0l()[B
    .locals 1

    .line 12807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    return-object v0
.end method
