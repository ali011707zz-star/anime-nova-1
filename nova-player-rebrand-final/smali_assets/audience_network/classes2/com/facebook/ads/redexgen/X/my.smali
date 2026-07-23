.class public final Lcom/facebook/ads/redexgen/X/my;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# static fields
.field public static A06:[B


# instance fields
.field public final A00:I

.field public final A01:[I

.field public final A02:[J

.field public final A03:[J

.field public final A04:[J

.field public final A05:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/my;->A02()V

    return-void
.end method

.method public constructor <init>([I[J[J[J)V
    .locals 4

    .line 99731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99732
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/my;->A01:[I

    .line 99733
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/my;->A03:[J

    .line 99734
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/my;->A02:[J

    .line 99735
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/my;->A04:[J

    .line 99736
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:I

    .line 99737
    iget v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:I

    if-lez v0, :cond_0

    .line 99738
    iget v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, p3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p4, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/my;->A05:J

    .line 99739
    :goto_0
    return-void

    .line 99740
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:J

    goto :goto_0
.end method

.method private final A00(J)I
    .locals 2

    .line 99741
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/my;->A04:[J

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v0

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/my;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/my;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x39t
        0x35t
        0x71t
        0x60t
        0x67t
        0x74t
        0x61t
        0x7ct
        0x7at
        0x7bt
        0x66t
        0x40t
        0x66t
        0x28t
        0x6ft
        0x63t
        0x2ct
        0x25t
        0x25t
        0x30t
        0x26t
        0x37t
        0x30t
        0x7et
        0x35t
        0x39t
        0x6at
        0x70t
        0x63t
        0x7ct
        0x6at
        0x24t
        0x69t
        0x65t
        0x31t
        0x2ct
        0x28t
        0x20t
        0x10t
        0x36t
        0x78t
        0x2ft
        0x4t
        0x19t
        0x2t
        0x7t
        0x25t
        0x2t
        0x8t
        0x9t
        0x14t
        0x44t
        0x0t
        0x9t
        0x2t
        0xbt
        0x18t
        0x4t
        0x51t
    .end array-data
.end method


# virtual methods
.method public final A7t()J
    .locals 2

    .line 99742
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 8

    .line 99743
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/my;->A00(J)I

    move-result v7

    .line 99744
    .local v0, "chunkIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A04:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 99745
    .local v1, "seekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:I

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    .line 99746
    .end local v2
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 99747
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/my;->A04:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/my;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 99748
    .local v2, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final AAj()Z
    .locals 1

    .line 99749
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 99750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/my;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x19

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/my;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A01:[I

    .line 99751
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0xa

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/my;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:[J

    .line 99752
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x21

    const/16 v1, 0x9

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/my;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A04:[J

    .line 99753
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xe

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/my;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:[J

    .line 99754
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/my;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99755
    return-object v0
.end method
