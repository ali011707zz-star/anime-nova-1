.class public final Lcom/facebook/ads/redexgen/X/He;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A07:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Z

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/He;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39601
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/He;->A06:[B

    .line 39602
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/He;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

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

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/He;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x68t
        0x6ft
        0x7ft
        0x52t
        0x5et
        0x3at
        0x79t
        0x72t
        0x6ft
        0x74t
        0x71t
        0x3at
        0x69t
        0x7bt
        0x77t
        0x6at
        0x76t
        0x7ft
        0x69t
        0x3at
        0x77t
        0x6ft
        0x69t
        0x6et
        0x3at
        0x78t
        0x7ft
        0x3at
        0x79t
        0x75t
        0x74t
        0x6et
        0x73t
        0x7dt
        0x6ft
        0x75t
        0x6ft
        0x69t
        0x3at
        0x73t
        0x74t
        0x3at
        0x6et
        0x72t
        0x7ft
        0x3at
        0x69t
        0x7bt
        0x77t
        0x6at
        0x76t
        0x7ft
        0x3at
        0x6bt
        0x6ft
        0x7ft
        0x6ft
        0x7ft
        0x34t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 39603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/He;->A05:Z

    .line 39604
    iput v0, p0, Lcom/facebook/ads/redexgen/X/He;->A02:I

    .line 39605
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39606
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/He;->A05:Z

    if-eqz v0, :cond_0

    .line 39607
    return-void

    .line 39608
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/He;->A06:[B

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 39609
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 39610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/He;->A06:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gr;->A06([B)I

    move-result v0

    if-nez v0, :cond_1

    .line 39611
    return-void

    .line 39612
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/He;->A05:Z

    .line 39613
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Hd;JIIILcom/facebook/ads/redexgen/X/Hb;)V
    .locals 5

    .line 39614
    iget v1, p0, Lcom/facebook/ads/redexgen/X/He;->A01:I

    add-int v0, p5, p6

    const/4 v3, 0x0

    if-gt v1, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x3c

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/He;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A0A(ZLjava/lang/Object;)V

    .line 39615
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/He;->A05:Z

    if-nez v0, :cond_1

    .line 39616
    return-void

    .line 39617
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 39618
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/He;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/He;->A02:I

    if-nez v1, :cond_2

    .line 39619
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/He;->A04:J

    .line 39620
    iput p4, p0, Lcom/facebook/ads/redexgen/X/He;->A00:I

    .line 39621
    iput v3, p0, Lcom/facebook/ads/redexgen/X/He;->A03:I

    .line 39622
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/He;->A03:I

    add-int/2addr v0, p5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/He;->A03:I

    .line 39623
    iput p6, p0, Lcom/facebook/ads/redexgen/X/He;->A01:I

    .line 39624
    iget v1, p0, Lcom/facebook/ads/redexgen/X/He;->A02:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_3

    .line 39625
    invoke-virtual {p0, p1, p7}, Lcom/facebook/ads/redexgen/X/He;->A05(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 39626
    :cond_3
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/Hb;)V
    .locals 7

    .line 39627
    iget v0, p0, Lcom/facebook/ads/redexgen/X/He;->A02:I

    if-lez v0, :cond_0

    .line 39628
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/He;->A04:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/He;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/He;->A03:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/He;->A01:I

    move-object v6, p2

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 39629
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/He;->A02:I

    .line 39630
    :cond_0
    return-void
.end method
