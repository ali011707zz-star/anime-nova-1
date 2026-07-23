.class public final Lcom/facebook/ads/redexgen/X/mG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "DoNotStrip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;

.field public static final A0M:Lcom/facebook/ads/redexgen/X/HD;

.field public static final A0N:Lcom/facebook/ads/redexgen/X/IE;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

.field public A07:Lcom/facebook/ads/redexgen/X/HA;

.field public A08:Lcom/facebook/ads/redexgen/X/Hd;

.field public A09:Lcom/facebook/ads/redexgen/X/Hd;

.field public A0A:Lcom/facebook/ads/redexgen/X/mF;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:I

.field public final A0E:J

.field public final A0F:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0G:Lcom/facebook/ads/redexgen/X/HK;

.field public final A0H:Lcom/facebook/ads/redexgen/X/HM;

.field public final A0I:Lcom/facebook/ads/redexgen/X/HN;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3226
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XN01ItT2bHY64Udo8U0rv5VGSzBxMc17"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LZob5GHcOm1BKJQ2vQEKg44UBdoAB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ux8BYUlKxCzUFwXHW791pvzO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EYpHAHesBPuZwNRi93BVygfvwpQNuwRz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BndnCdJGei78P0VEYjqxuWcWalVGolEJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FxTwI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mG;->A0B()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/mI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/mG;->A0M:Lcom/facebook/ads/redexgen/X/HD;

    .line 3227
    new-instance v0, Lcom/facebook/ads/redexgen/X/mH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mH;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/mG;->A0N:Lcom/facebook/ads/redexgen/X/IE;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "DoNotStrip"
    .end annotation

    .line 97455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mG;-><init>(I)V

    .line 97456
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "DoNotStrip"
    .end annotation

    .line 97457
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;-><init>(IJ)V

    .line 97458
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "DoNotStrip"
    .end annotation

    .line 97459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97460
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 97461
    or-int/lit8 p1, p1, 0x1

    .line 97462
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/mG;->A0D:I

    .line 97463
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/mG;->A0E:J

    .line 97464
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    .line 97465
    new-instance v0, Lcom/facebook/ads/redexgen/X/HN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    .line 97466
    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0G:Lcom/facebook/ads/redexgen/X/HK;

    .line 97467
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    .line 97468
    new-instance v0, Lcom/facebook/ads/redexgen/X/HM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0H:Lcom/facebook/ads/redexgen/X/HM;

    .line 97469
    new-instance v0, Lcom/facebook/ads/redexgen/X/mt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mt;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0J:Lcom/facebook/ads/redexgen/X/Hd;

    .line 97470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0J:Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    .line 97471
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;I)I
    .locals 3

    .line 97472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_2

    .line 97473
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    .line 97474
    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "hnNDf1WGfP5HptxyzX0WY3yEy4CiO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 97475
    .local v0, "headerData":I
    const v0, 0x58696e67

    if-eq v1, v0, :cond_0

    const v0, 0x496e666f

    if-ne v1, v0, :cond_2

    .line 97476
    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97477
    .end local v0    # "headerData":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_3

    .line 97478
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97479
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    const v0, 0x56425249

    if-ne v1, v0, :cond_3

    .line 97480
    return v0

    .line 97481
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 97482
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:I

    if-nez v0, :cond_0

    .line 97483
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/mG;->A0F(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97484
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, -0x1

    return v0

    .line 97485
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    if-nez v0, :cond_3

    .line 97486
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mG;->A07(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/mF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    .line 97487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A07:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 97488
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A06:Ljava/lang/String;

    .line 97489
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 97490
    const/16 v0, 0x1000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0h(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A01:I

    .line 97491
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    .line 97492
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0G:Lcom/facebook/ads/redexgen/X/HK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HK;->A00:I

    .line 97493
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0d(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0G:Lcom/facebook/ads/redexgen/X/HK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 97494
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0e(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 97495
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0D:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 97496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 97497
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 97498
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:J

    .line 97499
    .end local v0
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mG;->A02(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    .line 97500
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    goto :goto_1

    .line 97501
    :cond_3
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 97502
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    .line 97503
    .local v0, "inputPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 97504
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    goto :goto_2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    .line 97505
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 97506
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 97507
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mG;->A0E(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97508
    return v6

    .line 97509
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 97511
    .local v0, "sampleHeaderData":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A0D(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97512
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HO;->A00(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 97513
    .end local v4
    :cond_1
    invoke-interface {p1, v9}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 97514
    iput v4, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:I

    .line 97515
    return v4

    .line 97516
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/HN;->A00(I)Z

    .line 97517
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    .line 97518
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mF;->A9H(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    .line 97519
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0E:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_3

    .line 97520
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mF;->A9H(J)J

    move-result-wide v7

    .line 97521
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0E:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    .line 97522
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    .line 97523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/8b;

    if-eqz v0, :cond_4

    .line 97524
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    check-cast v5, Lcom/facebook/ads/redexgen/X/8b;

    .line 97525
    .local v4, "indexSeeker":Lcom/facebook/ads/redexgen/X/8b;
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 97526
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/mG;->A03(J)J

    move-result-wide v7

    .line 97527
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 97528
    invoke-virtual {v5, v7, v8, v2, v3}, Lcom/facebook/ads/redexgen/X/8b;->A01(JJ)V

    .line 97529
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0C:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A05:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/8b;->A02(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97530
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/mG;->A0C:Z

    .line 97531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    .line 97532
    .end local v0    # "sampleHeaderData":I
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    invoke-interface {v1, p1, v0, v9}, Lcom/facebook/ads/redexgen/X/Hd;->AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v1

    .line 97533
    .local v0, "bytesAppended":I
    if-ne v1, v6, :cond_5

    .line 97534
    return v6

    .line 97535
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    .line 97536
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    if-lez v0, :cond_6

    .line 97537
    return v4

    .line 97538
    :cond_6
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A04:J

    .line 97539
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A03(J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    .line 97540
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_7

    .line 97541
    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "39D9RtME66Nzc4lHdRGQvnw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A04:J

    .line 97542
    iput v4, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    .line 97543
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(J)J
    .locals 6

    .line 97544
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    int-to-long v0, v0

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)J
    .locals 7

    .line 97545
    if-eqz p0, :cond_1

    .line 97546
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v6

    .line 97547
    .local v0, "length":I
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 97548
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v4

    .line 97549
    .local v2, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    instance-of v0, v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v0, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v3, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    .line 97550
    const/16 v2, 0x18

    const/4 v1, 0x4

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mG;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97551
    check-cast v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    return-wide v0

    .line 97552
    .end local v2    # "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97553
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ms;Z)Lcom/facebook/ads/redexgen/X/8i;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 97555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HN;->A00(I)Z

    .line 97557
    new-instance v0, Lcom/facebook/ads/redexgen/X/8i;

    .line 97558
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/8i;-><init>(JJLcom/facebook/ads/redexgen/X/HN;Z)V

    .line 97559
    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)Lcom/facebook/ads/redexgen/X/8X;
    .locals 4

    .line 97560
    if-eqz p0, :cond_1

    .line 97561
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v3

    .line 97562
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 97563
    invoke-virtual {p0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 97564
    .local v2, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    instance-of v0, v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;

    if-eqz v0, :cond_0

    .line 97565
    check-cast v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/mG;->A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8X;->A01(JLcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;J)Lcom/facebook/ads/redexgen/X/8X;

    move-result-object v0

    return-object v0

    .line 97566
    .end local v2    # "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97567
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/mF;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97568
    move-object v3, p0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mG;->A08(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/mF;

    move-result-object v4

    .line 97569
    .local v1, "seekFrameSeeker":Lcom/facebook/ads/redexgen/X/mF;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/mG;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)Lcom/facebook/ads/redexgen/X/8X;

    move-result-object v1

    .line 97570
    .local v2, "metadataSeeker":Lcom/facebook/ads/redexgen/X/mF;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/mG;->A0B:Z

    if-eqz v0, :cond_0

    .line 97571
    new-instance v0, Lcom/facebook/ads/redexgen/X/8W;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8W;-><init>()V

    return-object v0

    .line 97572
    :cond_0
    const/4 v5, 0x0

    .line 97573
    .local v3, "resultSeeker":Lcom/facebook/ads/redexgen/X/mF;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/mG;->A0D:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 97574
    const-wide/16 v10, -0x1

    .line 97575
    .local v4, "dataEndPosition":J
    if-eqz v1, :cond_6

    .line 97576
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8X;->A7t()J

    move-result-wide v6

    .line 97577
    .local v6, "durationUs":J
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8X;->A7j()J

    move-result-wide v10

    .line 97578
    .restart local v6    # "durationUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/8b;

    .line 97579
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v8

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/8b;-><init>(JJJ)V

    .line 97580
    .end local v4    # "dataEndPosition":J
    .end local v6    # "durationUs":J
    :cond_1
    :goto_1
    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "puIT5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 97581
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/HY;->AAj()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v3, Lcom/facebook/ads/redexgen/X/mG;->A0D:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 97582
    :cond_2
    iget v5, v3, Lcom/facebook/ads/redexgen/X/mG;->A0D:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "yAfIM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5

    .line 97583
    :goto_2
    invoke-direct {v3, p1, v4}, Lcom/facebook/ads/redexgen/X/mG;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Lcom/facebook/ads/redexgen/X/8i;

    move-result-object v5

    .line 97584
    :cond_3
    return-object v5

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "MGo95V6JQFDSGlQkmGWT48KfEqhrmySi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5

    goto :goto_2

    .line 97585
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 97586
    .end local v6
    :cond_6
    if-eqz v4, :cond_7

    .line 97587
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/HY;->A7t()J

    move-result-wide v6

    .line 97588
    .restart local v6    # "durationUs":J
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/mF;->A7j()J

    move-result-wide v10

    goto :goto_0

    .line 97589
    .end local v6    # "durationUs":J
    :cond_7
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/mG;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mG;->A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)J

    move-result-wide v6

    goto :goto_0

    .line 97590
    :cond_8
    if-eqz v1, :cond_9

    .line 97591
    move-object v5, v1

    goto :goto_1

    .line 97592
    :cond_9
    if-eqz v4, :cond_1

    .line 97593
    move-object v5, v4

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/mF;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    new-instance v10, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 97595
    .local v0, "frame":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 97596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A05:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/16 v4, 0x15

    if-eqz v0, :cond_3

    .line 97597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A01:I

    if-eq v0, v2, :cond_0

    const/16 v4, 0x24

    .line 97598
    .local v1, "xingBase":I
    :cond_0
    :goto_0
    invoke-static {v10, v4}, Lcom/facebook/ads/redexgen/X/mG;->A00(Lcom/facebook/ads/redexgen/X/4v;I)I

    move-result v2

    .line 97599
    .local v9, "seekHeader":I
    const v0, 0x58696e67

    const v3, 0x496e666f

    if-eq v2, v0, :cond_1

    if-ne v2, v3, :cond_6

    .line 97600
    .end local v2
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v7

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/8U;->A01(JJLcom/facebook/ads/redexgen/X/HN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v5

    .line 97601
    .restart local v2
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0G:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HK;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97602
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 97603
    add-int/lit16 v0, v4, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 97604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v4

    const/4 v0, 0x3

    invoke-interface {p1, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 97605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97606
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/mG;->A0G:Lcom/facebook/ads/redexgen/X/HK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/HK;->A04(I)Z

    .line 97607
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 97608
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8U;->AAj()Z

    move-result v0

    if-nez v0, :cond_7

    if-ne v2, v3, :cond_7

    .line 97609
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/mG;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Lcom/facebook/ads/redexgen/X/8i;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "bGvlWKvJjPQrySHefRGmEijHbVzYOxUK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "fU58RXvZc6f3KsNNOCISAUQgLzoCeDCK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 97610
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A01:I

    if-eq v0, v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0xd

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97611
    :cond_6
    const v0, 0x56425249

    if-ne v2, v0, :cond_8

    .line 97612
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v7

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/8V;->A00(JJLcom/facebook/ads/redexgen/X/HN;Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/8V;

    move-result-object v5

    .line 97613
    .local v2, "seeker":Lcom/facebook/ads/redexgen/X/mF;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 97614
    :cond_7
    :goto_1
    return-object v5

    .line 97615
    .end local v2    # "seeker":Lcom/facebook/ads/redexgen/X/mF;
    :cond_8
    const/4 v5, 0x0

    .line 97616
    .restart local v2    # "seeker":Lcom/facebook/ads/redexgen/X/mF;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    goto :goto_1
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0A()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 97617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97618
    return-void
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mG;->A0K:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "rBULd6kp2sYKxjbrN7jKkVDhSodb4v28"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "gBWiztBtWh7JHxCzKYVaG6CraVXBuCHm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x4et
        -0x3ct
        -0x40t
        -0x2ft
        -0x3et
        -0x39t
        -0x3ct
        -0x3dt
        0x7ft
        -0x2dt
        -0x32t
        -0x32t
        0x7ft
        -0x34t
        -0x40t
        -0x33t
        -0x28t
        0x7ft
        -0x3ft
        -0x28t
        -0x2dt
        -0x3ct
        -0x2et
        -0x73t
        -0x1bt
        -0x23t
        -0x2at
        -0x21t
    .end array-data
.end method

.method public static synthetic A0C(IIIII)Z
    .locals 5

    .line 97619
    const/16 v0, 0x43

    const/4 v3, 0x2

    const/16 v1, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v3, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 v4, 0x4c

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "NxAl2v4obD3CfxY1bwrYNdaYMjSl6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p2, v4, :cond_2

    if-ne p3, v4, :cond_2

    const/16 v0, 0x54

    if-eq p4, v0, :cond_1

    if-ne p0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D(IJ)Z
    .locals 4

    .line 97620
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 97622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mF;->A7j()J

    move-result-wide v5

    .line 97623
    .local v2, "dataEndPosition":J
    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    .line 97624
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v2

    const-wide/16 v0, 0x4

    sub-long/2addr v5, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    .line 97625
    return v4

    .line 97626
    .end local v2    # "dataEndPosition":J
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    .line 97627
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    .line 97628
    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/ms;->AGu([BIIZ)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97629
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    return v4
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/ms;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97630
    const/4 v9, 0x0

    .line 97631
    .local v0, "validFrameCount":I
    const/4 v8, 0x0

    .line 97632
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v7, 0x0

    .line 97633
    .local v2, "peekedId3Bytes":I
    const/4 v6, 0x0

    .line 97634
    .local v3, "searchedBytes":I
    if-eqz p2, :cond_d

    const v5, 0x8000

    .line 97635
    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 97636
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v12

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v0, v12, v10

    if-nez v0, :cond_1

    .line 97637
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0D:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 97638
    .local v5, "parseAllId3Frames":Z
    :goto_1
    if-eqz v0, :cond_b

    move-object v1, v4

    .line 97639
    .local v6, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/IE;
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0H:Lcom/facebook/ads/redexgen/X/HM;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HM;->A00(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 97640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    if-eqz v0, :cond_0

    .line 97641
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A0G:Lcom/facebook/ads/redexgen/X/HK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;)Z

    .line 97642
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v0

    long-to-int v7, v0

    .line 97643
    if-nez p2, :cond_1

    .line 97644
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 97645
    .end local v5    # "parseAllId3Frames":Z
    .end local v6    # "id3FramePredicate":Lcom/facebook/ads/redexgen/X/IE;
    :cond_1
    :goto_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mG;->A0E(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97646
    if-lez v9, :cond_f

    .line 97647
    .end local v5
    .end local v7
    :goto_4
    if-eqz p2, :cond_2

    .line 97648
    add-int/2addr v7, v6

    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 97649
    :goto_5
    iput v8, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_e

    .line 97650
    sget-object v2, Lcom/facebook/ads/redexgen/X/mG;->A0L:[Ljava/lang/String;

    const-string v1, "Yv6sT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 97651
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    goto :goto_5

    .line 97652
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v10

    .line 97654
    .local v5, "headerData":I
    if-eqz v8, :cond_4

    int-to-long v0, v8

    .line 97655
    invoke-static {v10, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A0D(IJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97656
    :cond_4
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/HO;->A00(I)I

    move-result v1

    .local v7, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    .line 97657
    .end local v7    # "frameSize":I
    :cond_5
    add-int/lit8 v1, v6, 0x1

    .end local v3    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v6, v5, :cond_6

    .line 97658
    if-eqz p2, :cond_10

    .line 97659
    return v2

    .line 97660
    :cond_6
    const/4 v9, 0x0

    .line 97661
    const/4 v8, 0x0

    .line 97662
    if-eqz p2, :cond_7

    .line 97663
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 97664
    add-int v0, v7, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 97665
    .end local v5    # "headerData":I
    :goto_6
    move v6, v1

    goto :goto_3

    .line 97666
    :cond_7
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    goto :goto_6

    .line 97667
    .end local v6    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 97668
    if-ne v9, v3, :cond_a

    .line 97669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0I:Lcom/facebook/ads/redexgen/X/HN;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/HN;->A00(I)Z

    .line 97670
    move v8, v10

    .line 97671
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_9
    add-int/lit8 v0, v1, -0x4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_3

    .line 97672
    :cond_a
    const/4 v0, 0x4

    if-ne v9, v0, :cond_9

    goto :goto_4

    .line 97673
    :cond_b
    sget-object v1, Lcom/facebook/ads/redexgen/X/mG;->A0N:Lcom/facebook/ads/redexgen/X/IE;

    goto/16 :goto_2

    .line 97674
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 97675
    :cond_d
    const/high16 v5, 0x20000

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97676
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 97677
    :cond_10
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mG;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static synthetic A0G()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 97678
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/mG;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/mG;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 3

    .line 97679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mG;->A07:Lcom/facebook/ads/redexgen/X/HA;

    .line 97680
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A07:Lcom/facebook/ads/redexgen/X/HA;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    .line 97681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    .line 97682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A07:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 97683
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97684
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mG;->A0A()V

    .line 97685
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mG;->A01(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v5

    .line 97686
    .local v0, "readResult":I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/8b;

    if-eqz v0, :cond_0

    .line 97687
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A04:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A03(J)J

    move-result-wide v3

    .line 97688
    .local v1, "durationUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HY;->A7t()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 97689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    check-cast v0, Lcom/facebook/ads/redexgen/X/8b;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/8b;->A00(J)V

    .line 97690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A07:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 97691
    .end local v1    # "durationUs":J
    :cond_0
    return v5
.end method

.method public final AHb()V
    .locals 0

    .line 97692
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 3

    .line 97693
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:I

    .line 97694
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:J

    .line 97695
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A04:J

    .line 97696
    iput v2, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:I

    .line 97697
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/mG;->A05:J

    .line 97698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/8b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0A:Lcom/facebook/ads/redexgen/X/mF;

    check-cast v0, Lcom/facebook/ads/redexgen/X/8b;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/8b;->A02(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0C:Z

    .line 97700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A0J:Lcom/facebook/ads/redexgen/X/Hd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    .line 97701
    :cond_0
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97702
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/mG;->A0F(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    move-result v0

    return v0
.end method
