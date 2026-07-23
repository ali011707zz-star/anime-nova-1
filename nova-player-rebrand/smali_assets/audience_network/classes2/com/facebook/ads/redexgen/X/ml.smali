.class public final Lcom/facebook/ads/redexgen/X/ml;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/amr/AmrExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/HD;

.field public static final A0I:I

.field public static final A0J:[B

.field public static final A0K:[B

.field public static final A0L:[I

.field public static final A0M:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/HA;

.field public A08:Lcom/facebook/ads/redexgen/X/HY;

.field public A09:Lcom/facebook/ads/redexgen/X/Hd;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:I

.field public final A0E:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3262
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nCYubXqvd8ypcUhOSOVlYAWiNtNg5aTx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kK9obhnzrC8LOV4nIDjH0fRMkLxjM4hw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y066yKC5U0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cE1K3Th7x6hTx4uAy2DDcaRqLgqPomcW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7FhRQrMCUcKubfGBASNqeIg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2Nytx4SBEfNcp68myMLwYRuSH7vsFm1u"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZlttTssTlgjvAvH32uYzHDtT6TE9W794"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "80ncat3y6qUdob6xQVasiz6qbkfE4w7J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ml;->A08()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/mm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mm;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0H:Lcom/facebook/ads/redexgen/X/HD;

    .line 3263
    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0L:[I

    .line 3264
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0M:[I

    .line 3265
    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0J:[B

    .line 3266
    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0K:[B

    .line 3267
    sget-object v1, Lcom/facebook/ads/redexgen/X/ml;->A0M:[I

    const/16 v0, 0x8

    aget v0, v1, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ml;->A0I:I

    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 99403
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ml;-><init>(I)V

    .line 99404
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 99405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99406
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 99407
    or-int/lit8 p1, p1, 0x1

    .line 99408
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ml;->A0D:I

    .line 99409
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0E:[B

    .line 99410
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    .line 99411
    return-void
.end method

.method private A00(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 99412
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A0B(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99414
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x69

    const/4 v1, 0x2

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99415
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 99416
    :cond_0
    const/16 v2, 0x67

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99417
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    const-string v1, "XAVUjCRC3hebivW774juK0oqwk2i4xqh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ZJ3GnAAJbhmZqGnHED8y3IWqixRJo44l"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0M:[I

    aget v0, v0, p1

    :goto_1
    return v0

    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0L:[I

    aget v0, v0, p1

    goto :goto_1
.end method

.method public static A01(IJ)I
    .locals 3

    .line 99418
    int-to-long v2, p0

    const-wide/16 v0, 0x8

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    div-long/2addr v2, p1

    long-to-int v0, v2

    return v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99419
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 99420
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A0E:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0E:[B

    aget-byte v4, v0, v1

    .line 99422
    .local v0, "frameHeader":B
    and-int/lit16 v0, v4, 0x83

    if-gtz v0, :cond_0

    .line 99423
    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v0, v0, 0xf

    .line 99424
    .local v1, "frameType":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ml;->A00(I)I

    move-result v0

    return v0

    .line 99425
    .end local v1    # "frameType":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x41

    const/16 v1, 0x26

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 99426
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 99427
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A02(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99428
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    return v2

    .line 99429
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    .line 99430
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    if-ne v0, v2, :cond_0

    .line 99431
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A05:J

    .line 99432
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    .line 99433
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    if-ne v1, v0, :cond_1

    .line 99434
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A03:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A03:I

    .line 99435
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    .line 99436
    invoke-interface {v1, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/Hd;->AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v1

    .line 99437
    .local v0, "bytesAppended":I
    if-ne v1, v2, :cond_2

    .line 99438
    return v2

    .line 99439
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99440
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    const-string v1, "CzfhB3PuIPzemLKFV0N6DKx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    const/4 v0, 0x0

    if-lez v1, :cond_4

    .line 99441
    return v0

    .line 99442
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ml;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/ml;->A06:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A04:J

    add-long/2addr v4, v1

    iget v7, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 99443
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ml;->A04:J

    const-wide/16 v1, 0x4e20

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/ml;->A04:J

    .line 99444
    return v0
.end method

.method private A04(JZ)Lcom/facebook/ads/redexgen/X/mx;
    .locals 8

    .line 99445
    iget v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    const-wide/16 v0, 0x4e20

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ml;->A01(IJ)I

    move-result v5

    .line 99446
    .local v0, "bitrate":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/mx;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ml;->A05:J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    move v7, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/mx;-><init>(JJIIZ)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ml;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 99447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99448
    return-void
.end method

.method private A07()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 99449
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0A:Z

    if-nez v0, :cond_0

    .line 99450
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/ml;->A0A:Z

    .line 99451
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    if-eqz v0, :cond_2

    const/16 v2, 0x75

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 99452
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    if-eqz v0, :cond_1

    const/16 v3, 0x3e80

    .line 99453
    .local v2, "sampleRate":I
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 99454
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/ml;->A0I:I

    .line 99455
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0h(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99456
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99457
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 99458
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 99459
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 99460
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "sampleRate":I
    :cond_0
    return-void

    .line 99461
    :cond_1
    const/16 v3, 0x1f40

    goto :goto_1

    .line 99462
    :cond_2
    const/16 v2, 0x6b

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x73t
        -0x2dt
        -0x21t
        -0x32t
        -0x26t
        -0x2et
        -0x73t
        -0x1ft
        -0x1at
        -0x23t
        -0x2et
        -0x73t
        -0x78t
        -0x7at
        -0x5at
        -0x4et
        -0x49t
        0x6ft
        -0x35t
        -0x37t
        -0x17t
        -0xbt
        -0x6t
        -0x2bt
        -0x1t
        -0x16t
        -0x4et
        -0xft
        0x1dt
        0x23t
        0x1at
        0x12t
        -0x32t
        0x1ct
        0x1dt
        0x22t
        -0x32t
        0x14t
        0x17t
        0x1ct
        0x12t
        -0x32t
        -0x11t
        -0x5t
        0x0t
        -0x32t
        0x16t
        0x13t
        0xft
        0x12t
        0x13t
        0x20t
        -0x24t
        0x1ct
        0x3ft
        0x3ft
        0x38t
        0x3at
        0x34t
        0x3ft
        -0xdt
        0x14t
        0x20t
        0x25t
        -0xdt
        0x17t
        0x3ct
        0x44t
        0x2ft
        0x3at
        0x37t
        0x32t
        -0x12t
        0x3et
        0x2ft
        0x32t
        0x32t
        0x37t
        0x3ct
        0x35t
        -0x12t
        0x30t
        0x37t
        0x42t
        0x41t
        -0x12t
        0x34t
        0x3dt
        0x40t
        -0x12t
        0x34t
        0x40t
        0x2ft
        0x3bt
        0x33t
        -0x12t
        0x36t
        0x33t
        0x2ft
        0x32t
        0x33t
        0x40t
        -0x12t
        -0x28t
        -0x34t
        -0x23t
        -0x38t
        -0x1at
        -0x6t
        -0x17t
        -0x12t
        -0xct
        -0x4ct
        -0x48t
        -0x14t
        -0xbt
        -0xbt
        -0x2et
        -0x1at
        -0x2bt
        -0x26t
        -0x20t
        -0x60t
        -0x2et
        -0x22t
        -0x1dt
        -0x62t
        -0x18t
        -0x2dt
    .end array-data
.end method

.method private A09(JI)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 99463
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0B:Z

    if-eqz v0, :cond_0

    .line 99464
    return-void

    .line 99465
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0D:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    if-eq v1, v0, :cond_3

    .line 99466
    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A08:Lcom/facebook/ads/redexgen/X/HY;

    .line 99467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A07:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A08:Lcom/facebook/ads/redexgen/X/HY;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 99468
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A0B:Z

    .line 99469
    :cond_2
    :goto_0
    return-void

    .line 99470
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A03:I

    const/16 v0, 0x14

    if-ge v1, v0, :cond_4

    if-ne p3, v3, :cond_2

    .line 99471
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0D:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 99472
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/ml;->A04(JZ)Lcom/facebook/ads/redexgen/X/mx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A08:Lcom/facebook/ads/redexgen/X/HY;

    .line 99473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A07:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A08:Lcom/facebook/ads/redexgen/X/HY;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 99474
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A0B:Z

    goto :goto_0

    .line 99475
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A0A(I)Z
    .locals 1

    .line 99476
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B(I)Z
    .locals 1

    .line 99477
    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 99478
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A0C(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99479
    :goto_0
    return v0

    .line 99480
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0C(I)Z
    .locals 1

    .line 99481
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99482
    sget-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0J:[B

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A0E(Lcom/facebook/ads/redexgen/X/ms;[B)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 99483
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    .line 99484
    sget-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0J:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 99485
    return v1

    .line 99486
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0K:[B

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A0E(Lcom/facebook/ads/redexgen/X/ms;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99487
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ml;->A0C:Z

    .line 99488
    sget-object v0, Lcom/facebook/ads/redexgen/X/ml;->A0K:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 99489
    return v1

    .line 99490
    :cond_1
    return v2
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/ms;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99491
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 99492
    array-length v0, p1

    new-array v2, v0, [B

    .line 99493
    .local v0, "header":[B
    const/4 v1, 0x0

    array-length v0, p1

    invoke-interface {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99494
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0F()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 99495
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ml;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/ml;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 2

    .line 99496
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ml;->A07:Lcom/facebook/ads/redexgen/X/HA;

    .line 99497
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    .line 99498
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 99499
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99500
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ml;->A06()V

    .line 99501
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 99502
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A0D(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99503
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ml;->A07()V

    .line 99504
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A03(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v2

    .line 99505
    .local v0, "sampleReadResult":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/ml;->A09(JI)V

    .line 99506
    return v2

    .line 99507
    :cond_1
    const/16 v2, 0x1b

    const/16 v1, 0x1a

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ml;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public final AHb()V
    .locals 0

    .line 99508
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 6

    .line 99509
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A04:J

    .line 99510
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A01:I

    .line 99511
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A00:I

    .line 99512
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A08:Lcom/facebook/ads/redexgen/X/HY;

    instance-of v5, v0, Lcom/facebook/ads/redexgen/X/mx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99513
    :cond_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ml;->A06:J

    goto :goto_0

    .line 99514
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/ml;->A0G:[Ljava/lang/String;

    const-string v1, "NQLxubHlf0cB1xHoee3lgwNqGMjiyHKA"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "Tv4bI2EMm7rGcVq8cNVXYB9qzgEcyYlQ"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    if-eqz v5, :cond_0

    .line 99515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A08:Lcom/facebook/ads/redexgen/X/HY;

    check-cast v0, Lcom/facebook/ads/redexgen/X/mx;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/mx;->A02(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ml;->A06:J

    .line 99516
    :goto_0
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99517
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ml;->A0D(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    return v0
.end method
