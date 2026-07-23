.class public final Lcom/facebook/ads/redexgen/X/mM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Il;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ii;,
        Lcom/facebook/ads/androidx/media3/extractor/mkv/DefaultEbmlReader$ElementState;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Ik;

.field public final A04:Lcom/facebook/ads/redexgen/X/Iq;

.field public final A05:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Ii;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3241
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eVwUBMvHO9uBMhknAGNfZP2yr814WJyE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "k5ILRUABeDXqCwWpN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hJjZHs3Q8zIp76bYyURn3XwI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BeESTKEHKjvJbhVudlSNXwxkHuAjvLDZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rbeMFWTNNauR3FTC2xnHN2ozIe2oUtV0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bbPaxRhv7ZvGWrZH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yl9CHZRrzKaSrdtxcFsBA9EFbwcoGK5g"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dqSnihCeyqEvBM16"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mM;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 98466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98467
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A06:[B

    .line 98468
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A05:Ljava/util/ArrayDeque;

    .line 98469
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Iq;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A04:Lcom/facebook/ads/redexgen/X/Iq;

    .line 98470
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98471
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mM;->A02(Lcom/facebook/ads/redexgen/X/ms;I)J

    move-result-wide v1

    .line 98472
    .local v0, "integerValue":J
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 98473
    long-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 98474
    .local v2, "floatValue":D
    .restart local v2    # "floatValue":D
    :goto_0
    return-wide v0

    .line 98475
    .end local v2    # "floatValue":D
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "processor"
        }
    .end annotation

    .line 98476
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 98477
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A06:[B

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 98478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A06:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iq;->A00(I)I

    move-result v4

    .line 98479
    .local v0, "varintLength":I
    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    if-gt v4, v1, :cond_0

    .line 98480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A06:[B

    invoke-static {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/Iq;->A01([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 98481
    .local v2, "potentialId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Ik;->AAW(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98482
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 98483
    int-to-long v0, v1

    return-wide v0

    .line 98484
    .end local v2    # "potentialId":I
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 98485
    .end local v0    # "varintLength":I
    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/ms;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A06:[B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 98487
    const-wide/16 v3, 0x0

    .line 98488
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 98489
    const/16 v0, 0x8

    shl-long/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A06:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 98490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98491
    .end local v2    # "i":I
    :cond_0
    return-wide v3
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mM;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/ms;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98492
    if-nez p1, :cond_0

    .line 98493
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98494
    :cond_0
    new-array v2, p1, [B

    .line 98495
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 98496
    .local v2, "trimmedLength":I
    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_1

    .line 98497
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 98498
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x54

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mM;->A07:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const-string v1, "OJtOaz7eyeuGy8JHYC7MsYj9KI0teM8x"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Pthq8qREsbuOKTWUYG3bxj4Nb5ptFAt8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        0x62t
        -0x79t
        -0x71t
        0x7at
        -0x7bt
        -0x7et
        0x7dt
        0x39t
        0x7et
        -0x7bt
        0x7et
        -0x7at
        0x7et
        -0x79t
        -0x73t
        0x39t
        -0x73t
        -0x6et
        -0x77t
        0x7et
        0x39t
        0x5bt
        -0x80t
        -0x78t
        0x73t
        0x7et
        0x7bt
        0x76t
        0x32t
        0x78t
        0x7et
        -0x7ft
        0x73t
        -0x7at
        0x32t
        -0x7bt
        0x7bt
        -0x74t
        0x77t
        0x4ct
        0x32t
        -0x4et
        -0x29t
        -0x21t
        -0x36t
        -0x2bt
        -0x2et
        -0x33t
        -0x77t
        -0x2et
        -0x29t
        -0x23t
        -0x32t
        -0x30t
        -0x32t
        -0x25t
        -0x77t
        -0x24t
        -0x2et
        -0x1dt
        -0x32t
        -0x5dt
        -0x77t
        -0x3dt
        -0x1ct
        -0x1et
        -0x27t
        -0x22t
        -0x29t
        -0x70t
        -0x2bt
        -0x24t
        -0x2bt
        -0x23t
        -0x2bt
        -0x22t
        -0x1ct
        -0x70t
        -0x1dt
        -0x27t
        -0x16t
        -0x2bt
        -0x56t
        -0x70t
    .end array-data
.end method


# virtual methods
.method public final AAD(Lcom/facebook/ads/redexgen/X/Ik;)V
    .locals 0

    .line 98499
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    .line 98500
    return-void
.end method

.method public final AHO(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98502
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ii;

    .line 98503
    .local v0, "head":Lcom/facebook/ads/redexgen/X/Ii;
    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A01(Lcom/facebook/ads/redexgen/X/Ii;)J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_0

    .line 98504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(Lcom/facebook/ads/redexgen/X/Ii;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A6N(I)V

    .line 98505
    return v4

    .line 98506
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 98507
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A04:Lcom/facebook/ads/redexgen/X/Iq;

    const/4 v0, 0x4

    invoke-virtual {v1, p1, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Iq;->A05(Lcom/facebook/ads/redexgen/X/ms;ZZI)J

    move-result-wide v1

    .line 98508
    .local v4, "result":J
    const-wide/16 v5, -0x2

    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    .line 98509
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mM;->A01(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v1

    .line 98510
    :cond_1
    const-wide/16 v5, -0x1

    cmp-long v0, v1, v5

    if-nez v0, :cond_2

    .line 98511
    return v3

    .line 98512
    :cond_2
    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    .line 98513
    iput v4, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98514
    .end local v4    # "result":J
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    if-ne v0, v4, :cond_4

    .line 98515
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A04:Lcom/facebook/ads/redexgen/X/Iq;

    const/16 v0, 0x8

    invoke-virtual {v1, p1, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/Iq;->A05(Lcom/facebook/ads/redexgen/X/ms;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    .line 98516
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98517
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A7u(I)I

    move-result v5

    .line 98518
    .local v2, "type":I
    const-wide/16 v10, 0x8

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 98519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 98520
    .end local v10
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/mM;
    :pswitch_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 98521
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98522
    .end local v0    # "head":Lcom/facebook/ads/redexgen/X/Ii;
    .end local v2    # "type":I
    goto/16 :goto_0

    .line 98523
    :pswitch_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    const-wide/16 v8, 0x4

    cmp-long v5, v0, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const-string v1, "D1RmFcc9PuCELhM1k2KVAJs3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_6

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    cmp-long v2, v0, v10

    if-nez v2, :cond_7

    .line 98524
    :cond_6
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A00(Lcom/facebook/ads/redexgen/X/ms;I)D

    move-result-wide v0

    invoke-interface {v6, v5, v0, v1}, Lcom/facebook/ads/redexgen/X/Ik;->A6a(ID)V

    .line 98525
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98526
    return v4

    .line 98527
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x14

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 98528
    :pswitch_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    long-to-int v0, v1

    invoke-interface {v6, v5, v0, p1}, Lcom/facebook/ads/redexgen/X/Ik;->A4i(IILcom/facebook/ads/redexgen/X/ms;)V

    .line 98529
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98530
    return v4

    .line 98531
    :pswitch_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v0, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const-string v1, "fCyqjQ49ueazrn4tXgyzoG1n"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-gtz v5, :cond_9

    .line 98532
    :goto_1
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    long-to-int v0, v1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A04(Lcom/facebook/ads/redexgen/X/ms;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Ik;->AKK(ILjava/lang/String;)V

    .line 98533
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98534
    return v4

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/mM;->A08:[Ljava/lang/String;

    const-string v1, "KnGHYIorNoG22Tvn2zIFMGSlF3FZ2Zej"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-gtz v5, :cond_9

    goto :goto_1

    .line 98535
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    const/16 v1, 0x15

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 98536
    :pswitch_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    cmp-long v2, v0, v10

    if-gtz v2, :cond_a

    .line 98537
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A02(Lcom/facebook/ads/redexgen/X/ms;I)J

    move-result-wide v0

    invoke-interface {v6, v5, v0, v1}, Lcom/facebook/ads/redexgen/X/Ik;->AAH(IJ)V

    .line 98538
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98539
    return v4

    .line 98540
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0x16

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 98541
    :pswitch_5
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v8

    .line 98542
    .local v10, "elementContentPosition":J
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    add-long v0, v8, v5

    .line 98543
    .local p0, "elementEndPosition":J
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mM;->A05:Ljava/util/ArrayDeque;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v2, v5, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(IJLcom/facebook/ads/redexgen/X/Ig;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 98544
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mM;->A03:Lcom/facebook/ads/redexgen/X/Ik;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/mM;->A00:I

    iget-wide v10, p0, Lcom/facebook/ads/redexgen/X/mM;->A02:J

    invoke-interface/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Ik;->AK9(IJJ)V

    .line 98545
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98546
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    .line 98547
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A01:I

    .line 98548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 98549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mM;->A04:Lcom/facebook/ads/redexgen/X/Iq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iq;->A06()V

    .line 98550
    return-void
.end method
