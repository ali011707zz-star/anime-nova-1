.class public final Lcom/facebook/ads/redexgen/X/Iq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:[J


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 812
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HAKRynb8Q9v8wV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SuVhDSJQ2bNZpX8wX0KLsmsmTr4DPxxi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R4UQPZj2Q3kbph"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "e9pWJk1Ybkx6CP9fcYJC0x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eiipULpIaD7vlRs8Jy7kUpOIExEcCgDN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YpNetcItpMoyU0YUx2skn5ODY6DUrezi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ou3Ne9sakumlTqc9WPghqVzc9J2dmBuy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DIJExoJGQDv48UOT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Iq;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Iq;->A03()V

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A05:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 40864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40865
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A02:[B

    .line 40866
    return-void
.end method

.method public static A00(I)I
    .locals 7

    .line 40867
    const/4 v6, -0x1

    .line 40868
    .local v0, "varIntLength":I
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A05:[J

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 40869
    sget-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A05:[J

    aget-wide v3, v0, v5

    int-to-long v0, p0

    and-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 40870
    add-int/lit8 v6, v5, 0x1

    .line 40871
    .end local v1    # "i":I
    :cond_0
    return v6

    .line 40872
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static A01([BIZ)J
    .locals 9

    .line 40873
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    .line 40874
    .local v0, "varint":J
    if-eqz p2, :cond_1

    .line 40875
    sget-object v1, Lcom/facebook/ads/redexgen/X/Iq;->A05:[J

    add-int/lit8 v0, p1, -0x1

    aget-wide v0, v1, v0

    not-long v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iq;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v6, Lcom/facebook/ads/redexgen/X/Iq;->A04:[Ljava/lang/String;

    const-string v1, "UrbVUTUxAL9DS6258RCx02QNXCAhkfZP"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    and-long/2addr v2, v4

    .line 40876
    :cond_1
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 40877
    const/16 v0, 0x8

    shl-long/2addr v2, v0

    aget-byte v0, p0, v4

    int-to-long v0, v0

    and-long/2addr v0, v7

    or-long/2addr v2, v0

    .line 40878
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40879
    .end local v4    # "i":I
    :cond_2
    return-wide v2
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iq;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

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

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x6et
        0x21t
        0x77t
        0x60t
        0x6dt
        0x68t
        0x65t
        0x21t
        0x77t
        0x60t
        0x73t
        0x68t
        0x6ft
        0x75t
        0x21t
        0x6dt
        0x64t
        0x6ft
        0x66t
        0x75t
        0x69t
        0x21t
        0x6ct
        0x60t
        0x72t
        0x6at
        0x21t
        0x67t
        0x6et
        0x74t
        0x6ft
        0x65t
    .end array-data
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 40880
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    return v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/ms;ZZI)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40881
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A01:I

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 40882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A02:[B

    invoke-interface {p1, v0, v3, v2, p2}, Lcom/facebook/ads/redexgen/X/ms;->AHR([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40883
    const-wide/16 v0, -0x1

    return-wide v0

    .line 40884
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A02:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 40885
    .local v0, "firstByte":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iq;->A00(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    .line 40886
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    .line 40887
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Iq;->A01:I

    .line 40888
    .end local v0    # "firstByte":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    if-le v0, p4, :cond_2

    .line 40889
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Iq;->A01:I

    .line 40890
    const-wide/16 v0, -0x2

    return-wide v0

    .line 40891
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    if-eq v0, v2, :cond_3

    .line 40892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iq;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    sub-int/2addr v0, v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 40893
    :cond_3
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Iq;->A01:I

    .line 40894
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iq;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    invoke-static {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Iq;->A01([BIZ)J

    move-result-wide v0

    return-wide v0

    .line 40895
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iq;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()V
    .locals 1

    .line 40896
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A01:I

    .line 40897
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A00:I

    .line 40898
    return-void
.end method
