.class public final Lcom/facebook/ads/redexgen/X/lR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/AdtsExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/HA;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:I

.field public final A08:Lcom/facebook/ads/redexgen/X/4u;

.field public final A09:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0B:Lcom/facebook/ads/redexgen/X/lQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3192
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jp9jYTsvX0byW8PsTh8WCsi4kS5THTDZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "u9JmQf2RUpXkbwKGcH1ldYLO1OaAnoG0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zVRI5h7vLNN08I5W1BFePAuDidXDjkLB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GupX0AjjIH906l5opBlPCY0Mrv7mkKOY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YLyM9aD6SKjNKerJ1EloHyT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oAaNr5RuznTKLecZmpLN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q5WjYzMQ2NaCiwYPtyRn68zXUmvTXGHf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bi8dQH0GL9bk2fQxVP7KQMQdOg6RbrhP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lR;->A04()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lR;->A0E:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lR;-><init>(I)V

    .line 94370
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 94371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94372
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 94373
    or-int/lit8 p1, p1, 0x1

    .line 94374
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lR;->A07:I

    .line 94375
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lQ;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    .line 94376
    const/16 v1, 0x800

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A09:Lcom/facebook/ads/redexgen/X/4v;

    .line 94377
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    .line 94378
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A01:J

    .line 94379
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 94380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A08:Lcom/facebook/ads/redexgen/X/4u;

    .line 94381
    return-void
.end method

.method public static A00(IJ)I
    .locals 3

    .line 94382
    int-to-long v2, p0

    const-wide/16 v0, 0x8

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    div-long/2addr v2, p1

    long-to-int v0, v2

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94383
    const/4 v5, 0x0

    .line 94384
    .local v0, "firstFramePosition":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_1

    .line 94387
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94388
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94389
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lR;->A01:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 94390
    int-to-long v0, v5

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A01:J

    .line 94391
    :cond_0
    return v5

    .line 94392
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 94393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v1

    .line 94394
    .local v1, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v5, v0

    .line 94395
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94396
    .end local v1    # "length":I
    goto :goto_0
.end method

.method private A02(JZ)Lcom/facebook/ads/redexgen/X/mx;
    .locals 8

    .line 94397
    iget v2, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0J()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/lR;->A00(IJ)I

    move-result v5

    .line 94398
    .local v0, "bitrate":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/mx;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lR;->A01:J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    move v7, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/mx;-><init>(JJIIZ)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lR;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lR;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x27t
        0xbt
        0x6t
        0xct
        0x5t
        0x18t
        0x7t
        0xft
        0xet
        0x4at
        0x2bt
        0x2et
        0x3et
        0x39t
        0x4at
        0x19t
        0x1et
        0x18t
        0xft
        0xbt
        0x7t
    .end array-data
.end method

.method private A05(JZ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 94399
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A05:Z

    if-eqz v0, :cond_0

    .line 94400
    return-void

    .line 94401
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A07:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 94402
    .local v0, "useConstantBitrateSeeking":Z
    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v4, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94403
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const-string v3, "wRCLGMQDqXZHrYOEljE7cvu367IJP6qz"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "FofxBB8LpAk5nYyyotl0uMBanfu6Lq1A"

    const/4 v0, 0x1

    aput-object v3, v4, v0

    if-eqz v7, :cond_3

    .line 94404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    .line 94405
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0J()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    .line 94406
    return-void

    .line 94407
    :cond_3
    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0J()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    .line 94408
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A07:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    .line 94409
    :cond_4
    invoke-direct {p0, p1, p2, v6}, Lcom/facebook/ads/redexgen/X/lR;->A02(JZ)Lcom/facebook/ads/redexgen/X/mx;

    move-result-object v0

    .line 94410
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 94411
    :goto_1
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/lR;->A05:Z

    .line 94412
    return-void

    .line 94413
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lR;->A03:Lcom/facebook/ads/redexgen/X/HA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    goto :goto_1
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94414
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A04:Z

    if-eqz v0, :cond_0

    .line 94415
    return-void

    .line 94416
    :cond_0
    const/4 v7, -0x1

    iput v7, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    .line 94417
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94418
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 94419
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lR;->A01(Lcom/facebook/ads/redexgen/X/ms;)I

    .line 94420
    :cond_1
    const/4 v6, 0x0

    .line 94421
    .local v1, "numValidFrames":I
    const-wide/16 v3, 0x0

    .line 94422
    .local v2, "totalValidFramesSize":J
    :cond_2
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 94423
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    .line 94424
    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/ms;->AGu([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    .line 94427
    .local v5, "syncBytes":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0F(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94428
    const/4 v6, 0x0

    .line 94429
    goto :goto_0

    .line 94430
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 94431
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    .line 94432
    const/4 v0, 0x4

    invoke-interface {p1, v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/ms;->AGu([BIIZ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 94433
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A08:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A08:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 94435
    .local v6, "currentFrameSize":I
    const/4 v9, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const-string v1, "EiGF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-le v8, v9, :cond_8

    .line 94436
    int-to-long v0, v8

    add-long/2addr v3, v0

    .line 94437
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x3e8

    if-ne v6, v0, :cond_7

    .line 94438
    :catch_0
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94439
    if-lez v6, :cond_6

    .line 94440
    int-to-long v0, v6

    div-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    .line 94441
    :goto_1
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/lR;->A04:Z

    .line 94442
    return-void

    .line 94443
    :cond_6
    iput v7, p0, Lcom/facebook/ads/redexgen/X/lR;->A00:I

    goto :goto_1

    .line 94444
    :cond_7
    :try_start_1
    add-int/lit8 v0, v8, -0x6

    invoke-interface {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/ms;->A48(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 94445
    .restart local v5    # "syncBytes":I
    .restart local v6    # "currentFrameSize":I
    :cond_8
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/lR;->A04:Z

    .line 94446
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lR;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    .end local v1    # "numValidFrames":I
    .end local v2    # "totalValidFramesSize":J
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lR;
    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94447
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A07()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 94448
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lR;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lR;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 4

    .line 94449
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lR;->A03:Lcom/facebook/ads/redexgen/X/HA;

    .line 94450
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LG;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 94451
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 94452
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94454
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v2

    .line 94455
    .local v0, "inputLength":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A07:I

    and-int/lit8 v0, v0, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A07:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 94456
    .local v2, "canUseConstantBitrateSeeking":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 94457
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lR;->A06(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 94458
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, 0x800

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/ms;->read([BII)I

    move-result v5

    .line 94459
    .local v5, "bytesRead":I
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    const/4 v0, 0x1

    .line 94460
    .local v7, "readEndOfStream":Z
    :goto_1
    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/lR;->A05(JZ)V

    .line 94461
    if-eqz v0, :cond_4

    .line 94462
    return v1

    .line 94463
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 94464
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 94465
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 94467
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A06:Z

    if-nez v0, :cond_5

    .line 94468
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A02:J

    const/4 v0, 0x4

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lQ;->AGq(JI)V

    .line 94469
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/lR;->A06:Z

    .line 94470
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/lQ;->A5A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 94471
    return v4
.end method

.method public final AHb()V
    .locals 0

    .line 94472
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 1

    .line 94473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A06:Z

    .line 94474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0B:Lcom/facebook/ads/redexgen/X/lQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lQ;->AJ5()V

    .line 94475
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/lR;->A02:J

    .line 94476
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94477
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lR;->A01(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v9

    .line 94478
    .local v0, "startPosition":I
    move v6, v9

    .line 94479
    .local v1, "headerPosition":I
    const/4 v5, 0x0

    .line 94480
    .local v2, "totalValidFramesSize":I
    const/4 v4, 0x0

    .line 94481
    .local v3, "validFramesCount":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    .line 94484
    .local v4, "syncBytes":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lQ;->A0F(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94485
    const/4 v4, 0x0

    .line 94486
    const/4 v5, 0x0

    .line 94487
    add-int/lit8 v6, v6, 0x1

    .line 94488
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94489
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94490
    .end local v5
    :goto_0
    sub-int v1, v6, v9

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 94491
    return v3

    .line 94492
    :cond_1
    add-int/lit8 v4, v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const-string v1, "vlF0iwwjiK26GT4HTqGcAOiXXpcsHbpg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x4

    if-lt v4, v0, :cond_3

    const/16 v1, 0xbc

    if-le v5, v1, :cond_3

    .line 94493
    const/4 v0, 0x1

    return v0

    .line 94494
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94495
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lR;->A08:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94496
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/lR;->A08:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v7, 0xd

    sget-object v1, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/lR;->A0D:[Ljava/lang/String;

    const-string v1, "LrBCAcAc8FKB1NeW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 94497
    .local v5, "frameSize":I
    const/4 v0, 0x6

    if-gt v1, v0, :cond_4

    .line 94498
    const/4 v4, 0x0

    .line 94499
    const/4 v5, 0x0

    .line 94500
    add-int/lit8 v6, v6, 0x1

    .line 94501
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94502
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_0

    .line 94503
    :cond_4
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94504
    add-int/2addr v5, v1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
