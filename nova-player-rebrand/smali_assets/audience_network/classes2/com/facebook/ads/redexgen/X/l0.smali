.class public final Lcom/facebook/ads/redexgen/X/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PassthroughOutputWriter"
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/qI;

.field public final A05:Lcom/facebook/ads/redexgen/X/HA;

.field public final A06:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A07:Lcom/facebook/ads/redexgen/X/LN;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3172
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mF6wsmKEoSH0oaFjYCs54xiQsDf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7fvgeHK83IOxRTsxSXxl4b3GDJCkJYIR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3AWdxUjQjYm4RALX7ZxT6TNspaUhotFB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ejd6qsjsHb99jkL857XJ5GpzVF9O4Dmm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HjmRuX1Dl2gTeBJaQInX56gY9CThxDdt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4dP72HMzoJKZI0lPLVreHOZSlD0czmst"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VabPsN9EmqWHNd02VeXfGkhVpY5qzzPo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1TiSMCKkeVz3FItUT5PAcFJ22kgDAGxf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l0;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/l0;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/LN;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 92070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92071
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l0;->A05:Lcom/facebook/ads/redexgen/X/HA;

    .line 92072
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/l0;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 92073
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/l0;->A07:Lcom/facebook/ads/redexgen/X/LN;

    .line 92074
    iget v1, p3, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A01:I

    mul-int/2addr v1, v0

    div-int/lit8 v4, v1, 0x8

    .line 92075
    .local v0, "bytesPerFrame":I
    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    if-ne v0, v4, :cond_0

    .line 92076
    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    mul-int/2addr v0, v4

    mul-int/lit8 v1, v0, 0x8

    .line 92077
    .local v1, "constantBitrate":I
    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0xa

    .line 92078
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A03:I

    .line 92079
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 92080
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92081
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92082
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A03:I

    .line 92083
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0h(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A05:I

    .line 92084
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    .line 92085
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92086
    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/2p;->A0i(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 92087
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A04:Lcom/facebook/ads/redexgen/X/qI;

    .line 92088
    return-void

    .line 92089
    .end local v1    # "constantBitrate":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    const/16 v1, 0x15

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/l0;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x51

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

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/l0;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x5ft
        -0x18t
        -0x10t
        -0xbt
        -0x45t
        -0x5ft
        -0x22t
        0x11t
        0x9t
        -0x2t
        -0x4t
        0xdt
        -0x2t
        -0x3t
        -0x47t
        -0x5t
        0x5t
        0x8t
        -0x4t
        0x4t
        -0x47t
        0xct
        0x2t
        0x13t
        -0x2t
        -0x2dt
        -0x47t
    .end array-data
.end method


# virtual methods
.method public final AA8(IJ)V
    .locals 8

    .line 92090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A05:Lcom/facebook/ads/redexgen/X/HA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ky;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/l0;->A07:Lcom/facebook/ads/redexgen/X/LN;

    const/4 v3, 0x1

    int-to-long v4, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/ky;-><init>(Lcom/facebook/ads/redexgen/X/LN;IJJ)V

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 92091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l0;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A04:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 92092
    return-void
.end method

.method public final AIk(J)V
    .locals 2

    .line 92093
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/l0;->A02:J

    .line 92094
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    .line 92095
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/l0;->A01:J

    .line 92096
    return-void
.end method

.method public final AIt(Lcom/facebook/ads/redexgen/X/ms;J)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92097
    move-wide/from16 v0, p2

    move-object v2, p0

    .end local p7
    .local v1, "bytesLeft":J
    :goto_0
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/l0;->A09:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v4, v5, v3

    const/4 v3, 0x5

    aget-object v5, v5, v3

    const/16 v3, 0x1c

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v5, Lcom/facebook/ads/redexgen/X/l0;->A09:[Ljava/lang/String;

    const-string v4, "xyHijgDe1t0LZE27YhGAb5keyZPdsLp6"

    const/4 v3, 0x7

    aput-object v4, v5, v3

    cmp-long v3, v0, v8

    if-lez v3, :cond_2

    iget v4, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A03:I

    if-ge v4, v3, :cond_2

    .line 92098
    iget v4, v2, Lcom/facebook/ads/redexgen/X/l0;->A03:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    sub-int/2addr v4, v3

    int-to-long v3, v4

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v4, v5

    .line 92099
    .local v5, "bytesToRead":I
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    move-object/from16 v5, p1

    invoke-interface {v3, v5, v4, v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v4

    .line 92100
    .local v3, "bytesAppended":I
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1

    .line 92101
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 92102
    :cond_1
    iget v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    .line 92103
    int-to-long v3, v4

    sub-long/2addr v0, v3

    goto :goto_0

    .line 92104
    :cond_2
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A07:Lcom/facebook/ads/redexgen/X/LN;

    iget v6, v3, Lcom/facebook/ads/redexgen/X/LN;->A02:I

    .line 92105
    .local v7, "bytesPerFrame":I
    iget v3, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    div-int/2addr v3, v6

    .line 92106
    .local v8, "pendingFrames":I
    if-lez v3, :cond_3

    .line 92107
    iget-wide v7, v2, Lcom/facebook/ads/redexgen/X/l0;->A02:J

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/l0;->A01:J

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/l0;->A07:Lcom/facebook/ads/redexgen/X/LN;

    iget v4, v4, Lcom/facebook/ads/redexgen/X/LN;->A04:I

    int-to-long v13, v4

    .line 92108
    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v4

    add-long/2addr v7, v4

    .line 92109
    .local v9, "timeUs":J
    mul-int v10, v3, v6

    .line 92110
    .local v11, "size":I
    iget v11, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    sub-int/2addr v11, v10

    .line 92111
    .local v12, "offset":I
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/l0;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 92112
    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/l0;->A01:J

    int-to-long v3, v3

    add-long/2addr v5, v3

    iput-wide v5, v2, Lcom/facebook/ads/redexgen/X/l0;->A01:J

    .line 92113
    iput v11, v2, Lcom/facebook/ads/redexgen/X/l0;->A00:I

    .line 92114
    .end local v9    # "timeUs":J
    .end local v11    # "size":I
    .end local v12    # "offset":I
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-gtz v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
