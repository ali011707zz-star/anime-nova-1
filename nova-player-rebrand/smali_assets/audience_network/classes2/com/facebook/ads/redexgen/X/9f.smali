.class public final Lcom/facebook/ads/redexgen/X/9f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ms;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/pF;

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 559
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YlHQuKLayYbpqzx9FSV6CQrLdQj96AeM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S4RZcb4lBSGk97kEvSl91HaEV0P4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uVSfNf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Coq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aQ2CxhcvUBulJYKynnVyQo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "flTysjHMhLtcJrzUbSTnFz15x2mZl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8oFgaOvQgeQ1BxQlutu1jILF1QVjJ1FW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wjWZdP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pF;JJ)V
    .locals 7

    .line 25057
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/9f;-><init>(Lcom/facebook/ads/redexgen/X/pF;JJZ)V

    .line 25058
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pF;JJZ)V
    .locals 1

    .line 25059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25060
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9f;->A05:Lcom/facebook/ads/redexgen/X/pF;

    .line 25061
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:J

    .line 25062
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9f;->A04:J

    .line 25063
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    .line 25064
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:[B

    .line 25065
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 25066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 25067
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9f;->A05(I)V

    .line 25068
    return v0
.end method

.method private A01([BII)I
    .locals 3

    .line 25069
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 25070
    return v2

    .line 25071
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25072
    .local v0, "peekBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25073
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/9f;->A05(I)V

    .line 25074
    return v1
.end method

.method private A02([BIIIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25075
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A05:Lcom/facebook/ads/redexgen/X/pF;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v1

    .line 25077
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 25078
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 25079
    return v0

    .line 25080
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 25081
    :cond_1
    add-int/2addr p4, v1

    return p4

    .line 25082
    .end local v0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A03(I)V
    .locals 4

    .line 25083
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 25084
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:J

    .line 25085
    :cond_0
    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 25086
    iget v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    add-int/2addr v3, p1

    .line 25087
    .local v0, "requiredLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    array-length v0, v0

    if-le v3, v0, :cond_0

    .line 25088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    array-length v0, v0

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    .line 25089
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v1

    .line 25090
    .local v1, "newPeekCapacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    .line 25091
    .end local v1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private A05(I)V
    .locals 7

    .line 25092
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    .line 25093
    const/4 v5, 0x0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    .line 25094
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    .line 25095
    .local v1, "newPeekBuffer":[B
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    array-length v1, v0

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 25096
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    const/high16 v0, 0x10000

    add-int/2addr v1, v0

    new-array v6, v1, [B

    .line 25097
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const-string v1, "U6HOVF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "FLrwJS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4, p1, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25098
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    .line 25099
    return-void
.end method


# virtual methods
.method public final A06(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25100
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9f;->A00(I)I

    move-result v4

    .line 25101
    .local v0, "bytesSkipped":I
    :goto_0
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const-string v1, "VT2oIT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "AHKvNZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v4, p1, :cond_0

    if-eq v4, v3, :cond_0

    .line 25102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 25103
    .local p1, "minLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:[B

    neg-int v2, v4

    .line 25104
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9f;->A02([BIIIZ)I

    move-result v4

    .line 25105
    .end local p1    # "minLength":I
    goto :goto_0

    .line 25106
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/9f;->A03(I)V

    .line 25107
    if-eq v4, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A47(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/9f;->A48(IZ)Z

    .line 25109
    return-void
.end method

.method public final A48(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25110
    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/9f;->A04(I)V

    .line 25111
    iget v4, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    sub-int/2addr v4, v0

    .line 25112
    .local v0, "bytesPeeked":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 25113
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    .line 25114
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9f;->A02([BIIIZ)I

    move-result v4

    .line 25115
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 25116
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25117
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    goto :goto_0

    .line 25118
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 25119
    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const-string v1, "05c"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const-string v1, "U9yRyStfgEDvt0OpJggQJXPRXL9S"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "yvkfr8ZSlHssIeYh6rwGG04GsxspU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final A8O()J
    .locals 2

    .line 25120
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A04:J

    return-wide v0
.end method

.method public final A8i()J
    .locals 4

    .line 25121
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A8n()J
    .locals 2

    .line 25122
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:J

    return-wide v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 25123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A05:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A9P()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AGs([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25124
    move v3, p3

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/9f;->A04(I)V

    .line 25125
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    sub-int/2addr v1, v0

    .line 25126
    .local v0, "peekBufferRemainingBytes":I
    if-nez v1, :cond_1

    .line 25127
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    .line 25128
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9f;->A02([BIIIZ)I

    move-result v2

    .line 25129
    .local v1, "bytesPeeked":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 25130
    return v0

    .line 25131
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:I

    goto :goto_0

    .line 25132
    .end local v1    # "bytesPeeked":I
    :cond_1
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 25133
    .restart local v1    # "bytesPeeked":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    .line 25135
    return v2
.end method

.method public final AGt([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/9f;->AGu([BIIZ)Z

    .line 25137
    return-void
.end method

.method public final AGu([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25138
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/9f;->A48(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25139
    const/4 v0, 0x0

    return v0

    .line 25140
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25141
    const/4 v0, 0x1

    return v0
.end method

.method public final AHR([BIIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25142
    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/9f;->A01([BII)I

    move-result v4

    .line 25143
    .local v0, "bytesRead":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, v3, :cond_0

    if-eq v4, v0, :cond_0

    .line 25144
    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9f;->A02([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 25145
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/9f;->A03(I)V

    .line 25146
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final AIl()V
    .locals 1

    .line 25147
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:I

    .line 25148
    return-void
.end method

.method public final AK0(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25149
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9f;->A00(I)I

    move-result v3

    .line 25150
    .local v0, "bytesSkipped":I
    if-nez v3, :cond_0

    .line 25151
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:[B

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9f;->A02([BIIIZ)I

    move-result v3

    .line 25152
    :cond_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/9f;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25153
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A07:[Ljava/lang/String;

    const-string v1, "4muWdj2u5Q3eId9F7O7O9kyn7QS9F70y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "MQBZi4ACHP4vbg8D4iuKjBQaYQ9ASuUs"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public final AK3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/9f;->A06(IZ)Z

    .line 25155
    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25156
    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/9f;->A01([BII)I

    move-result v0

    .line 25157
    .local v0, "bytesRead":I
    if-nez v0, :cond_0

    .line 25158
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9f;->A02([BIIIZ)I

    move-result v0

    .line 25159
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9f;->A03(I)V

    .line 25160
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/9f;->AHR([BIIZ)Z

    .line 25162
    return-void
.end method
