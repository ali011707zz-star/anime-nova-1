.class public final Lcom/facebook/ads/redexgen/X/lQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:Lcom/facebook/ads/redexgen/X/Hd;

.field public A0B:Lcom/facebook/ads/redexgen/X/Hd;

.field public A0C:Lcom/facebook/ads/redexgen/X/Hd;

.field public A0D:Ljava/lang/String;

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/4u;

.field public final A0I:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0J:Ljava/lang/String;

.field public final A0K:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3191
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mrTKvxULVENuxsX20WcrAJ4v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LussONYVy0olIUlKNuZbFssmQ2DfHEVf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zvJRCSTXMBsZ1hE0Mr7ze3FhUb04dJIh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L0YacQwQPMjWe9KaI5mJ2LmFBjZFt0ZK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1hx48ZBneHnM7bdYLzCUfsF2U1nSOVt0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UVBTZnk6apz1fVZpxMzmfRHtaRIycLGw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y7M7p8C63xXJXfMDaPj4j21Etz7HrkAn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dpgmp2dWdChOdFvADkjRIu4gRUIL2TAI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lQ;->A09()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lQ;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 94150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lQ;-><init>(ZLjava/lang/String;)V

    .line 94151
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    .line 94152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94153
    const/4 v0, 0x7

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    .line 94154
    sget-object v1, Lcom/facebook/ads/redexgen/X/lQ;->A0N:[B

    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0I:Lcom/facebook/ads/redexgen/X/4v;

    .line 94155
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A06()V

    .line 94156
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A03:I

    .line 94157
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    .line 94158
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A08:J

    .line 94159
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    .line 94160
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0K:Z

    .line 94161
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0J:Ljava/lang/String;

    .line 94162
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lQ;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x9

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
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "currentOutput",
            "id3Output"
        }
    .end annotation

    .line 94163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94164
    return-void
.end method

.method private A02()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 94165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94166
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0G:Z

    const/4 v5, 0x5

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 94167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 94168
    .local v0, "audioObjectType":I
    if-eq v6, v4, :cond_0

    .line 94169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x1c

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 94170
    const/4 v6, 0x2

    .line 94171
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 94172
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 94173
    .local v4, "channelConfig":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    .line 94174
    invoke-static {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/Gn;->A07(III)[B

    move-result-object v8

    .line 94175
    .local v5, "audioSpecificConfig":[B
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Gn;->A03([B)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v6

    .line 94176
    .local v6, "aacConfig":Lcom/facebook/ads/redexgen/X/Gm;
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0D:Ljava/lang/String;

    .line 94177
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 94178
    const/16 v2, 0x4b

    const/16 v1, 0xf

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Gm;->A02:Ljava/lang/String;

    .line 94179
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Gm;->A00:I

    .line 94180
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Gm;->A01:I

    .line 94181
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 94182
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0J:Ljava/lang/String;

    .line 94183
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94184
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v6

    .line 94185
    .local v7, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget v0, v6, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v2, v0

    const-wide/32 v0, 0x3d090000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A08:J

    .line 94186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 94187
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0G:Z

    .line 94188
    .end local v0    # "audioObjectType":I
    .end local v4    # "channelConfig":I
    .end local v5    # "audioSpecificConfig":[B
    .end local v6    # "aacConfig":Lcom/facebook/ads/redexgen/X/Gm;
    .end local v7    # "format":Lcom/facebook/ads/redexgen/X/qI;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 94189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 94190
    .local v0, "sampleSize":I
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0F:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const-string v1, "giOljvViomSrN4IHC4QybJTR7ABLuXqE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jFLriiyuw9puslkouPTFj8AuXirD2Rvz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 94191
    add-int/lit8 v6, v6, -0x2

    .line 94192
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lQ;->A08:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/lQ;->A0D(Lcom/facebook/ads/redexgen/X/Hd;JII)V

    .line 94193
    return-void

    .line 94194
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "id3Output"
        }
    .end annotation

    .line 94195
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0B:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0I:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v0, 0xa

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0I:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0B:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0I:Lcom/facebook/ads/redexgen/X/4v;

    .line 94198
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    .line 94199
    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/lQ;->A0D(Lcom/facebook/ads/redexgen/X/Hd;JII)V

    .line 94200
    return-void
.end method

.method private A04()V
    .locals 1

    .line 94201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0E:Z

    .line 94202
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A06()V

    .line 94203
    return-void
.end method

.method private A05()V
    .locals 1

    .line 94204
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A06:I

    .line 94205
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94206
    return-void
.end method

.method private A06()V
    .locals 1

    .line 94207
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A06:I

    .line 94208
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94209
    const/16 v0, 0x100

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    .line 94210
    return-void
.end method

.method private A07()V
    .locals 1

    .line 94211
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A06:I

    .line 94212
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94213
    return-void
.end method

.method private A08()V
    .locals 2

    .line 94214
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A06:I

    .line 94215
    sget-object v0, Lcom/facebook/ads/redexgen/X/lQ;->A0N:[B

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94216
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A05:I

    .line 94217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0I:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94218
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lQ;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x57t
        -0x67t
        -0x54t
        -0x55t
        0x57t
        -0x68t
        -0x56t
        -0x56t
        -0x54t
        -0x5ct
        -0x60t
        -0x5bt
        -0x62t
        0x57t
        0x78t
        0x78t
        0x7at
        0x57t
        -0x7dt
        0x7at
        0x65t
        -0x62t
        -0x3ft
        -0x2ft
        -0x30t
        -0x51t
        -0x3et
        -0x42t
        -0x3ft
        -0x3et
        -0x31t
        0x4dt
        0x6et
        0x7dt
        0x6et
        0x6ct
        0x7dt
        0x6et
        0x6dt
        0x29t
        0x6at
        0x7et
        0x6dt
        0x72t
        0x78t
        0x29t
        0x78t
        0x6bt
        0x73t
        0x6et
        0x6ct
        0x7dt
        0x29t
        0x7dt
        -0x7et
        0x79t
        0x6et
        0x43t
        0x29t
        -0x2ft
        -0x20t
        -0x20t
        -0x24t
        -0x27t
        -0x2dt
        -0x2ft
        -0x1ct
        -0x27t
        -0x21t
        -0x22t
        -0x61t
        -0x27t
        -0x2ct
        -0x5dt
        -0x4at
        -0x36t
        -0x47t
        -0x42t
        -0x3ct
        -0x7ct
        -0x3et
        -0x3bt
        -0x77t
        -0x4at
        -0x7et
        -0x3ft
        -0x4at
        -0x37t
        -0x3et
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 5

    .line 94219
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 94220
    return-void

    .line 94221
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    aget-byte v1, v1, v0

    const/4 v0, 0x0

    aput-byte v1, v2, v0

    .line 94222
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 94224
    .local v0, "currentFrameSampleRateIndex":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget v4, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const-string v1, "gsvCXwBusIGEB1WA3fanWinNUC0stLKn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jdr5Xoms36XQNA1pdvYLzBfLUyE1GaLW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_2

    .line 94225
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A04()V

    .line 94226
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94227
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0E:Z

    if-nez v0, :cond_3

    .line 94228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0E:Z

    .line 94229
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A03:I

    .line 94230
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    .line 94231
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A07()V

    .line 94232
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 7

    .line 94233
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 94234
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 94235
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v3

    .line 94236
    .local v2, "endOffset":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 94237
    add-int/lit8 v2, v4, 0x1

    .end local v1    # "position":I
    .local v3, "position":I
    aget-byte v0, v6, v4

    and-int/lit16 v5, v0, 0xff

    .line 94238
    .local v1, "data":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_3

    int-to-byte v1, v5

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/lQ;->A0E(BB)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94239
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0E:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, -0x2

    .line 94240
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0G(Lcom/facebook/ads/redexgen/X/4v;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94241
    :cond_0
    and-int/lit8 v0, v5, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A01:I

    .line 94242
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0F:Z

    .line 94243
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0E:Z

    if-nez v0, :cond_1

    .line 94244
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A05()V

    .line 94245
    :goto_2
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94246
    return-void

    .line 94247
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A07()V

    goto :goto_2

    .line 94248
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 94249
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    or-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    .line 94250
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    const/16 v0, 0x100

    if-eq v1, v0, :cond_4

    .line 94251
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    .line 94252
    add-int/lit8 v4, v2, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const-string v1, "GFWHNKn9X7s15i1eiUIDtSq2eHiOoz5U"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "NE8NIWAGBkU3RGGIPZnBOUiADBs4e2Uh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_0

    .line 94253
    :sswitch_0
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    .line 94254
    goto :goto_3

    .line 94255
    :sswitch_1
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    .line 94256
    goto :goto_3

    .line 94257
    :sswitch_2
    const/16 v0, 0x300

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A04:I

    .line 94258
    .end local v1    # "data":I
    :cond_4
    :goto_3
    move v4, v2

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94259
    :sswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A08()V

    .line 94260
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94261
    return-void

    .line 94262
    :cond_6
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94263
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_2
        0x1ff -> :sswitch_1
        0x344 -> :sswitch_0
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentOutput"
        }
    .end annotation

    .line 94264
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94265
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0A:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94266
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94267
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A05:I

    if-ne v1, v0, :cond_1

    .line 94268
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 94269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0A:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    iget v4, p0, Lcom/facebook/ads/redexgen/X/lQ;->A05:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 94270
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A07:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    .line 94271
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A06()V

    .line 94272
    :cond_1
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Hd;JII)V
    .locals 1

    .line 94273
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A06:I

    .line 94274
    iput p4, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94275
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0A:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94276
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/lQ;->A07:J

    .line 94277
    iput p5, p0, Lcom/facebook/ads/redexgen/X/lQ;->A05:I

    .line 94278
    return-void
.end method

.method private A0E(BB)Z
    .locals 2

    .line 94279
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, p2, 0xff

    or-int/2addr v1, v0

    .line 94280
    .local v0, "syncWord":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/lQ;->A0F(I)Z

    move-result v0

    return v0
.end method

.method public static A0F(I)Z
    .locals 2

    .line 94281
    const v1, 0xfff6

    and-int/2addr v1, p0

    const v0, 0xfff0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/4v;I)Z
    .locals 10

    .line 94282
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    const/4 v3, 0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/lQ;->A0I(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 94284
    return v9

    .line 94285
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v5

    .line 94287
    .local v0, "currentFrameVersion":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A03:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A03:I

    if-eq v5, v0, :cond_1

    .line 94288
    return v9

    .line 94289
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    if-eq v0, v4, :cond_5

    .line 94290
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const-string v1, "jLrw1acULskGm0062b4gZF3kQyMgNqoA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/lQ;->A0I(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94291
    return v3

    .line 94292
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 94294
    .local v4, "currentFrameSampleRateIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A02:I

    if-eq v1, v0, :cond_4

    .line 94295
    return v9

    .line 94296
    :cond_4
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94297
    .end local v4    # "currentFrameSampleRateIndex":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    invoke-direct {p0, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/lQ;->A0I(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-nez v0, :cond_6

    .line 94298
    return v3

    .line 94299
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 94301
    .local v3, "frameSize":I
    const/4 v0, 0x7

    if-ge v1, v0, :cond_7

    .line 94302
    return v9

    .line 94303
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v8

    .line 94304
    .local v4, "data":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v6

    .line 94305
    .local v6, "dataLimit":I
    add-int/2addr p2, v1

    .line 94306
    .local v7, "nextSyncPosition":I
    if-lt p2, v6, :cond_8

    .line 94307
    return v3

    .line 94308
    :cond_8
    aget-byte v7, v8, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_9

    goto :goto_0

    .line 94309
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/lQ;->A0M:[Ljava/lang/String;

    const-string v1, "CseuUypkgzVyQ9FeMZonHsAsUfwYiVF8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Ey77lIcw04xWGEhpgcU1ARBrUIvYEeZM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v7, v4, :cond_c

    .line 94310
    add-int/lit8 v0, p2, 0x1

    if-ne v0, v6, :cond_a

    .line 94311
    return v3

    .line 94312
    :cond_a
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, v8, v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0E(BB)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, v8, v0

    and-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x3

    if-ne v0, v5, :cond_b

    :goto_1
    return v3

    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    .line 94313
    :cond_c
    aget-byte v1, v8, p2

    const/16 v0, 0x49

    if-eq v1, v0, :cond_d

    .line 94314
    return v9

    .line 94315
    :cond_d
    add-int/lit8 v0, p2, 0x1

    if-ne v0, v6, :cond_e

    .line 94316
    return v3

    .line 94317
    :cond_e
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x44

    if-eq v1, v0, :cond_f

    .line 94318
    return v9

    .line 94319
    :cond_f
    add-int/lit8 v0, p2, 0x2

    if-ne v0, v6, :cond_10

    .line 94320
    return v3

    .line 94321
    :cond_10
    add-int/lit8 v0, p2, 0x2

    aget-byte v1, v8, v0

    const/16 v0, 0x33

    if-ne v1, v0, :cond_11

    :goto_2
    return v3

    :cond_11
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/4v;[BI)Z
    .locals 2

    .line 94322
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94323
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 94324
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    .line 94325
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/4v;[BI)Z
    .locals 2

    .line 94326
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/4 v0, 0x0

    if-ge v1, p3, :cond_0

    .line 94327
    return v0

    .line 94328
    :cond_0
    invoke-virtual {p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 94329
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0J()J
    .locals 2

    .line 94330
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A08:J

    return-wide v0
.end method

.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 94331
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A01()V

    .line 94332
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_2

    .line 94333
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A06:I

    packed-switch v0, :pswitch_data_0

    .line 94334
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 94335
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lQ;->A0C(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 94336
    goto :goto_0

    .line 94337
    :pswitch_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0F:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    .line 94338
    .local v0, "targetLength":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/lQ;->A0H(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94339
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A02()V

    goto :goto_0

    .line 94340
    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    .line 94341
    .end local v0    # "targetLength":I
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0I:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0H(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94342
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A03()V

    goto :goto_0

    .line 94343
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lQ;->A0A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 94344
    goto :goto_0

    .line 94345
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lQ;->A0B(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 94346
    goto :goto_0

    .line 94347
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 5

    .line 94348
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 94349
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0D:Ljava/lang/String;

    .line 94350
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0A:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94352
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0K:Z

    if-eqz v0, :cond_0

    .line 94353
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 94354
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x5

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0B:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94355
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0B:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 94356
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 94357
    const/16 v2, 0x3c

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94358
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 94359
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 94360
    :goto_0
    return-void

    .line 94361
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/mt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mt;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A0B:Lcom/facebook/ads/redexgen/X/Hd;

    goto :goto_0
.end method

.method public final AGp()V
    .locals 0

    .line 94362
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 94363
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 94364
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    .line 94365
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 94366
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lQ;->A09:J

    .line 94367
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lQ;->A04()V

    .line 94368
    return-void
.end method
