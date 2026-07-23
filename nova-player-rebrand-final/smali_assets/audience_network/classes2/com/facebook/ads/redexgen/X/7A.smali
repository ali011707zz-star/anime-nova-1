.class public final Lcom/facebook/ads/redexgen/X/7A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/79;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7B;

.field public A01:Z

.field public A02:Z

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/7A;

.field public A05:Lcom/facebook/ads/redexgen/X/nW;

.field public A06:Lcom/facebook/ads/redexgen/X/Ex;

.field public final A07:Lcom/facebook/ads/redexgen/X/np;

.field public final A08:Ljava/lang/Object;

.field public final A09:[Lcom/facebook/ads/redexgen/X/DT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/79;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ew;

.field public final A0C:[Lcom/facebook/ads/redexgen/X/7p;

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 455
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qTjlphzGhjtz23pZpbkrfGV3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gcvQ0aFRAZsVeDDMvPpq9fmBIR43z3dS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1g2pSH5s64tGUAh3eJ0e3X43Q9jzw3mq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lB1M4R9KcDs1NZsKBVQ3JQYLP4RbMvTH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7AgciWFjZyCuzmH359m88XAJrahqi7eF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Et2BwvNp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oz1eJxJHgMWzrYsZQ0zZlFN1YCxGY3CZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Iy7o67ktSbvMBIxm3lxnuK7UTKgUaVFx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7A;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7A;->A04()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/7p;JLcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/Ex;)V
    .locals 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Old exoplayer method. requires deleting"
    .end annotation

    .line 18491
    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18492
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    .line 18493
    move-object/from16 v4, p7

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    sub-long/2addr p2, v2

    iput-wide p2, v1, Lcom/facebook/ads/redexgen/X/7A;->A03:J

    .line 18494
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/7A;->A0B:Lcom/facebook/ads/redexgen/X/Ew;

    .line 18495
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3C;->A04:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A08:Ljava/lang/Object;

    .line 18496
    iput-object v4, v1, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18497
    sget-object v0, Lcom/facebook/ads/redexgen/X/nW;->A06:Lcom/facebook/ads/redexgen/X/nW;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A05:Lcom/facebook/ads/redexgen/X/nW;

    .line 18498
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    .line 18499
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/DT;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A09:[Lcom/facebook/ads/redexgen/X/DT;

    .line 18500
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A0D:[Z

    .line 18501
    new-instance v0, Lcom/facebook/ads/redexgen/X/op;

    move-object v2, p6

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/op;-><init>(Lcom/facebook/ads/redexgen/X/7A;Lcom/facebook/ads/redexgen/X/Cx;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A0A:Lcom/facebook/ads/redexgen/X/79;

    .line 18502
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/7A;->A0A:Lcom/facebook/ads/redexgen/X/79;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/7B;->A01:J

    .line 18503
    move-object v4, p5

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/7A;->A00(Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/79;Lcom/facebook/ads/redexgen/X/F0;JJ)Lcom/facebook/ads/redexgen/X/np;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    .line 18504
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/79;Lcom/facebook/ads/redexgen/X/F0;JJ)Lcom/facebook/ads/redexgen/X/np;
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "MediaSourceList is temporarily changed to MediaSourceAdapter"
    .end annotation

    .line 18505
    invoke-interface {p1, p0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/79;->A5W(Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/F0;J)Lcom/facebook/ads/redexgen/X/np;

    move-result-object p1

    .line 18506
    .local p5, "mediaPeriod":Lcom/facebook/ads/redexgen/X/np;
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v1

    if-eqz v0, :cond_0

    .line 18507
    new-instance p0, Lcom/facebook/ads/redexgen/X/9v;

    const/4 p2, 0x1

    const-wide/16 p3, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/9v;-><init>(Lcom/facebook/ads/redexgen/X/np;ZJJ)V

    move-object p1, p0

    .line 18508
    :cond_0
    return-object p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7A;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 18509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18510
    return-void

    .line 18511
    :cond_0
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ex;->A00:I

    if-ge v2, v0, :cond_2

    .line 18512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ex;->A00(I)Z

    move-result v1

    .line 18513
    .local v1, "rendererEnabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    aget-object v0, v0, v2

    .line 18514
    .local v2, "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 18515
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nE;->A5x()V

    .line 18516
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18517
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A03()V
    .locals 3

    .line 18518
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18519
    return-void

    .line 18520
    :cond_0
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ex;->A00:I

    if-ge v2, v0, :cond_2

    .line 18521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ex;->A00(I)Z

    move-result v1

    .line 18522
    .local v1, "rendererEnabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    aget-object v0, v0, v2

    .line 18523
    .local v2, "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 18524
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nE;->A6K()V

    .line 18525
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18526
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7A;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x79t
        0x78t
        0x75t
        0x7dt
        0x4ct
        0x79t
        0x6et
        0x75t
        0x73t
        0x78t
        0x54t
        0x73t
        0x70t
        0x78t
        0x79t
        0x6et
        0x1ct
        0x29t
        0x3et
        0x25t
        0x23t
        0x28t
        0x6ct
        0x3et
        0x29t
        0x20t
        0x29t
        0x2dt
        0x3ft
        0x29t
        0x6ct
        0x2at
        0x2dt
        0x25t
        0x20t
        0x29t
        0x28t
        0x62t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/79;Lcom/facebook/ads/redexgen/X/np;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Temporary bridging of MediaSourceList with MediaSourceAdapter"
    .end annotation

    .line 18527
    :try_start_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9v;

    if-eqz v0, :cond_0

    .line 18528
    check-cast p1, Lcom/facebook/ads/redexgen/X/9v;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9v;->A05:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/79;->AHk(Lcom/facebook/ads/redexgen/X/np;)V

    goto :goto_0

    .line 18529
    :cond_0
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/79;->AHk(Lcom/facebook/ads/redexgen/X/np;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18530
    :catch_0
    move-exception p1

    .line 18531
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7A;->A01(III)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7A;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18532
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private A06([Lcom/facebook/ads/redexgen/X/DT;)V
    .locals 3

    .line 18533
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 18534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7p;->A9N()I

    move-result v1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    .line 18535
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ex;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18536
    new-instance v0, Lcom/facebook/ads/redexgen/X/nr;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nr;-><init>()V

    aput-object v0, p1, v2

    .line 18537
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18538
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private A07([Lcom/facebook/ads/redexgen/X/DT;)V
    .locals 3

    .line 18539
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 18540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7p;->A9N()I

    move-result v1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_0

    .line 18541
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 18542
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18543
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private A08()Z
    .locals 1

    .line 18544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A09()J
    .locals 5

    .line 18545
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    if-nez v0, :cond_0

    .line 18546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    return-wide v0

    .line 18547
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A01:Z

    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A78()J

    move-result-wide v1

    .line 18548
    .local v3, "bufferedPositionUs":J
    :goto_0
    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/7B;->A00:J

    :cond_1
    return-wide v1

    .line 18549
    :cond_2
    move-wide v1, v3

    goto :goto_0
.end method

.method public final A0A()J
    .locals 2

    .line 18550
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A8b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A0B()J
    .locals 2

    .line 18551
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A03:J

    return-wide v0
.end method

.method public final A0C(J)J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
    .end annotation

    .line 18552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DX;->A76(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0D(J)J
    .locals 2

    .line 18553
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7A;->A0B()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final A0E(J)J
    .locals 2

    .line 18554
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7A;->A0B()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Ex;JZ)J
    .locals 6

    .line 18555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    array-length v0, v0

    new-array v5, v0, [Z

    move-object v0, p0

    move v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7A;->A0G(Lcom/facebook/ads/redexgen/X/Ex;JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Ex;JZ[Z)J
    .locals 12

    .line 18556
    move-object v3, p0

    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ex;->A00:I

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ge v5, v0, :cond_2

    .line 18557
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/7A;->A0D:[Z

    if-nez p4, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    .line 18558
    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ex;->A01(Lcom/facebook/ads/redexgen/X/Ex;I)Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/7A;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7A;->A0F:[Ljava/lang/String;

    const-string v1, "ZW5cY05fUZ7YDJtoLiROAD1s3u7pqZaY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "DBvv8TdqbKzS7YgGUgxEKNMIgeBwY4FK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    aput-boolean v4, v6, v5

    .line 18559
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18560
    .end local v2    # "i":I
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A09:[Lcom/facebook/ads/redexgen/X/DT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7A;->A07([Lcom/facebook/ads/redexgen/X/DT;)V

    .line 18561
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A02()V

    .line 18562
    iput-object p1, v3, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    .line 18563
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A03()V

    .line 18564
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/7A;->A0D:[Z

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/7A;->A09:[Lcom/facebook/ads/redexgen/X/DT;

    .line 18565
    move-object/from16 v9, p5

    move-wide v10, p2

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/np;->AJ9([Lcom/facebook/ads/redexgen/X/nE;[Z[Lcom/facebook/ads/redexgen/X/DT;[ZJ)J

    move-result-wide v5

    .line 18566
    .end local p3
    .local v2, "positionUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A09:[Lcom/facebook/ads/redexgen/X/DT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7A;->A06([Lcom/facebook/ads/redexgen/X/DT;)V

    .line 18567
    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/7A;->A01:Z

    .line 18568
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A09:[Lcom/facebook/ads/redexgen/X/DT;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 18569
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A09:[Lcom/facebook/ads/redexgen/X/DT;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    .line 18570
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Ex;->A00(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 18571
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7p;->A9N()I

    move-result v1

    const/4 v0, -0x2

    if-eq v1, v0, :cond_3

    .line 18572
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/7A;->A01:Z

    .line 18573
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18574
    :cond_4
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    aget-object v0, v0, v4

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 18575
    .end local v6    # "i":I
    :cond_6
    return-wide v5
.end method

.method public final A0H(Z)J
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
    .end annotation

    .line 18576
    if-nez p1, :cond_0

    .line 18577
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A03:J

    return-wide v0

    .line 18578
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A03:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/7A;
    .locals 1

    .line 18579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A04:Lcom/facebook/ads/redexgen/X/7A;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/nW;
    .locals 1

    .line 18580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A05:Lcom/facebook/ads/redexgen/X/nW;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/Ex;
    .locals 1

    .line 18581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Lcom/facebook/ads/redexgen/X/Ex;

    return-object v0
.end method

.method public final A0L(FLcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/Ex;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 18582
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7A;->A0B:Lcom/facebook/ads/redexgen/X/Ew;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7A;->A0C:[Lcom/facebook/ads/redexgen/X/7p;

    .line 18583
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7A;->A0J()Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/no;

    invoke-virtual {v3, v2, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Ew;->A0b([Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/Ex;

    move-result-object v4

    .line 18584
    .local v0, "selectorResult":Lcom/facebook/ads/redexgen/X/Ex;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Ex;->A04:[Lcom/facebook/ads/redexgen/X/nE;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 18585
    .local v4, "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    if-eqz v0, :cond_0

    .line 18586
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nE;->AFJ(F)V

    .line 18587
    .end local v4    # "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18588
    :cond_1
    return-object v4
.end method

.method public final A0M()V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "MediaSourceAdapter to be replaced with MediaSourceList"
    .end annotation

    .line 18589
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A02()V

    .line 18590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7A;->A0A:Lcom/facebook/ads/redexgen/X/79;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7A;->A05(Lcom/facebook/ads/redexgen/X/79;Lcom/facebook/ads/redexgen/X/np;)V

    .line 18591
    return-void
.end method

.method public final A0N(FLcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 18592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    .line 18593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A9M()Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A05:Lcom/facebook/ads/redexgen/X/nW;

    .line 18594
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7A;->A0L(FLcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/Ex;

    move-result-object v3

    .line 18595
    .local v0, "selectorResult":Lcom/facebook/ads/redexgen/X/Ex;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    .line 18596
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/7A;->A0F(Lcom/facebook/ads/redexgen/X/Ex;JZ)J

    move-result-wide v2

    .line 18597
    .local v1, "newStartPositionUs":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/7A;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/7B;->A03:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/7A;->A03:J

    .line 18598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/7B;->A00(J)Lcom/facebook/ads/redexgen/X/7B;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 18599
    return-void
.end method

.method public final A0O(J)V
    .locals 3

    .line 18600
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A08()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 18601
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7A;->A0D(J)J

    move-result-wide v1

    .line 18602
    .local v0, "loadingPeriodPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/np;->A5C(J)Z

    .line 18603
    return-void
.end method

.method public final A0P(J)V
    .locals 3

    .line 18604
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A08()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 18605
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    if-eqz v0, :cond_0

    .line 18606
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7A;->A0D(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/np;->AHW(J)V

    .line 18607
    :cond_0
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/7A;)V
    .locals 1

    .line 18608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A04:Lcom/facebook/ads/redexgen/X/7A;

    if-ne p1, v0, :cond_0

    .line 18609
    return-void

    .line 18610
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A02()V

    .line 18611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7A;->A04:Lcom/facebook/ads/redexgen/X/7A;

    .line 18612
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7A;->A03()V

    .line 18613
    return-void
.end method

.method public final A0R()Z
    .locals 5

    .line 18614
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A01:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Lcom/facebook/ads/redexgen/X/np;

    .line 18615
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/np;->A78()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 18616
    :goto_0
    return v0

    .line 18617
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
