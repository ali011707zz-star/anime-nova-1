.class public final Lcom/facebook/ads/redexgen/X/lE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LH;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/53;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/4u;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Kv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3181
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PKE6bUnMb8YRJi5c3EKctidvnGObkWUW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Sj6HMP0SOTonM2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QNuElofm8mn1vxmEMVf480D516cE6c1A"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mo3DY2i4ZftrkN8KZEKpxWPbRUkrlx1j"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gCiGT026Vp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zTp2xHG3y1GADYyWqYlevGmnNqTbrtlk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "l459osJydpsPWra20sllrfS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lE;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kv;)V
    .locals 2

    .line 92899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92900
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    .line 92901
    const/16 v0, 0xa

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    .line 92902
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A03:I

    .line 92903
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lE;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "timestampAdjuster"
        }
    .end annotation

    .line 92904
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 92905
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A04:J

    .line 92906
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A08:Z

    if-eqz v0, :cond_1

    .line 92907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    .line 92909
    .local v3, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 92911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 92913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92914
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A09:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A07:Z

    if-eqz v0, :cond_0

    .line 92915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    .line 92917
    .local v0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 92919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 92921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A05:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    .line 92923
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/lE;->A09:Z

    .line 92924
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A05:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A04:J

    .line 92925
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xad

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lE;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x36t
        0x38t
        0x3bt
        0x2et
        -0x17t
        0x2bt
        0x42t
        0x3dt
        0x2et
        0x3ct
        0x31t
        0x5at
        0x60t
        0x59t
        0x4ft
        0xbt
        0x59t
        0x50t
        0x52t
        0x4ct
        0x5ft
        0x54t
        0x61t
        0x50t
        0xbt
        0x5bt
        0x4ct
        0x4et
        0x56t
        0x50t
        0x5ft
        0xbt
        0x5bt
        0x4ct
        0x64t
        0x57t
        0x5at
        0x4ct
        0x4ft
        0xbt
        0x5et
        0x54t
        0x65t
        0x50t
        0x25t
        0xbt
        0x24t
        0x39t
        0x47t
        0x26t
        0x39t
        0x35t
        0x38t
        0x39t
        0x46t
        -0x7t
        0x12t
        0x9t
        0x1ct
        0x14t
        0x9t
        0x7t
        0x18t
        0x9t
        0x8t
        -0x3ct
        0x17t
        0x18t
        0x5t
        0x16t
        0x18t
        -0x3ct
        0x7t
        0x13t
        0x8t
        0x9t
        -0x3ct
        0x14t
        0x16t
        0x9t
        0xat
        0xdt
        0x1ct
        -0x22t
        -0x3ct
        0xbt
        0x24t
        0x1bt
        0x2et
        0x26t
        0x1bt
        0x19t
        0x2at
        0x1bt
        0x1at
        -0x2at
        0x29t
        0x2at
        0x17t
        0x28t
        0x2at
        -0x2at
        0x1ft
        0x24t
        0x1at
        0x1ft
        0x19t
        0x17t
        0x2at
        0x25t
        0x28t
        -0x2at
        0x28t
        0x1bt
        0x17t
        0x1at
        0x1ft
        0x24t
        0x1dt
        -0x2at
        0x1bt
        0x2et
        0x2at
        0x1bt
        0x24t
        0x1at
        0x1bt
        0x1at
        -0x2at
        0x1et
        0x1bt
        0x17t
        0x1at
        0x1bt
        0x28t
        0x4t
        0x1dt
        0x14t
        0x27t
        0x1ft
        0x14t
        0x12t
        0x23t
        0x14t
        0x13t
        -0x31t
        0x22t
        0x23t
        0x10t
        0x21t
        0x23t
        -0x31t
        0x18t
        0x1dt
        0x13t
        0x18t
        0x12t
        0x10t
        0x23t
        0x1et
        0x21t
        -0x17t
        -0x31t
        0x14t
        0x27t
        0x1ft
        0x14t
        0x12t
        0x23t
        0x14t
        0x13t
        -0x31t
    .end array-data
.end method

.method private A03(I)V
    .locals 1

    .line 92926
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lE;->A03:I

    .line 92927
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    .line 92928
    return-void
.end method

.method private A04()Z
    .locals 9

    .line 92929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 92930
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 92931
    .local v0, "startCodePrefix":I
    const/16 v2, 0x2f

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    const/4 v4, 0x1

    if-eq v8, v4, :cond_0

    .line 92932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x38

    const/16 v1, 0x1e

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 92933
    iput v5, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    .line 92934
    return v7

    .line 92935
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92936
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 92937
    .local v1, "packetLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A06:Z

    .line 92939
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A08:Z

    .line 92941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A07:Z

    .line 92942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:I

    .line 92944
    if-nez v3, :cond_2

    .line 92945
    iput v5, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    .line 92946
    :cond_1
    :goto_0
    return v4

    .line 92947
    :cond_2
    add-int/lit8 v0, v3, 0x6

    add-int/lit8 v1, v0, -0x9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    .line 92948
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    if-gez v0, :cond_1

    .line 92949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/16 v1, 0x24

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 92950
    iput v5, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/4v;[BI)Z
    .locals 3

    .line 92951
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 92952
    .local v0, "bytesToRead":I
    const/4 v1, 0x1

    if-gtz v2, :cond_0

    .line 92953
    return v1

    .line 92954
    :cond_0
    if-nez p2, :cond_2

    .line 92955
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92956
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    .line 92957
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    if-ne v0, p3, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 92958
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final A5B(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 92959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A05:Lcom/facebook/ads/redexgen/X/53;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92960
    and-int/lit8 v0, p2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 92961
    iget v6, p0, Lcom/facebook/ads/redexgen/X/lE;->A03:I

    const/16 v2, 0x2f

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v5

    packed-switch v6, :pswitch_data_0

    .line 92962
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92963
    :pswitch_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    if-eq v0, v4, :cond_0

    .line 92964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x88

    const/16 v1, 0x25

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 92965
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kv;->AGp()V

    .line 92966
    goto :goto_0

    .line 92967
    :pswitch_1
    const/16 v2, 0x56

    const/16 v1, 0x32

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 92968
    :goto_0
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/lE;->A03(I)V

    .line 92969
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_8

    .line 92970
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A03:I

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_1

    .line 92971
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92972
    :pswitch_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v6

    .line 92973
    .local v0, "readLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    if-ne v0, v4, :cond_3

    .line 92974
    .local v3, "padding":I
    :goto_2
    if-lez v5, :cond_2

    .line 92975
    sub-int/2addr v6, v5

    .line 92976
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v5

    add-int/2addr v5, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    const-string v1, "lFx9fkjTnk1xSHr5wh3B5PMDNRGZ6lqn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92977
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Kv;->A5A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 92978
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    if-eq v0, v4, :cond_1

    .line 92979
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    .line 92980
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    if-nez v0, :cond_1

    .line 92981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kv;->AGp()V

    .line 92982
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/lE;->A03(I)V

    goto :goto_1

    .line 92983
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:I

    sub-int v5, v6, v0

    goto :goto_2

    .line 92984
    .end local v0    # "readLength":I
    .end local v3    # "padding":I
    :pswitch_4
    const/16 v1, 0xa

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 92985
    .restart local v0    # "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    const-string v1, "l8YJPAfB3X"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v6, v7}, Lcom/facebook/ads/redexgen/X/lE;->A05(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:I

    .line 92986
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/lE;->A05(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92987
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lE;->A01()V

    .line 92988
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A06:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x4

    :cond_4
    or-int/2addr p2, v5

    .line 92989
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A04:J

    invoke-interface {v2, v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Kv;->AGq(JI)V

    .line 92990
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lE;->A03(I)V

    goto/16 :goto_1

    .line 92991
    .end local v0    # "readLength":I
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    const/16 v0, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;->A05(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92992
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lE;->A04()Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/lE;->A0D:[Ljava/lang/String;

    const-string v1, "QQT4Wvnf7PZI1aBOQkpVRuEJ9a4y7TW0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v6, :cond_5

    const/4 v5, 0x2

    :cond_5
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/lE;->A03(I)V

    goto/16 :goto_1

    .line 92993
    :pswitch_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92994
    goto/16 :goto_1

    .line 92995
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92996
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 1

    .line 92997
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lE;->A05:Lcom/facebook/ads/redexgen/X/53;

    .line 92998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Kv;->A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 92999
    return-void
.end method

.method public final AJ5()V
    .locals 1

    .line 93000
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A03:I

    .line 93001
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    .line 93002
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A09:Z

    .line 93003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A0B:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kv;->AJ5()V

    .line 93004
    return-void
.end method
