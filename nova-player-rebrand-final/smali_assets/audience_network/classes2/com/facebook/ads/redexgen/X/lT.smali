.class public final Lcom/facebook/ads/redexgen/X/lT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/Ac4Reader$State;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/qI;

.field public A06:Lcom/facebook/ads/redexgen/X/Hd;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/4u;

.field public final A0B:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3193
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eg1HF5xa7z40pAwthJhUwMgyYSflMm57"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vTWXZUhc0T5ye2gU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5CU7tG4vDC5MrJOvyrKXJFg3lgmAd80k"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DBSeFcO6ZOsoqUplN3HsHa32omlpR5Gp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ocqdBidFvokLCywFTEXKHS5uCgObv9g8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Mmwr1Jc9dpTbQpvT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ugccp26DZT8wLBdxyPVLtxapsfOoaJDE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eNeWJfNXyWcyw1SOouQPEZVsCwWfQhE2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lT;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94508
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lT;-><init>(Ljava/lang/String;)V

    .line 94509
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 94510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94511
    const/16 v0, 0x10

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    .line 94512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    .line 94513
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A02:I

    .line 94514
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    .line 94515
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A09:Z

    .line 94516
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A08:Z

    .line 94517
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    .line 94518
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lT;->A0C:Ljava/lang/String;

    .line 94519
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/lT;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const-string v1, "llPzXaIPGYOm1jx09XShEDSvCSxFzIZB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gGGXbxf7z5B4GQeBG0q6dPqvCPeZy7ri"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 94520
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lT;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0A:Lcom/facebook/ads/redexgen/X/4u;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gu;->A04(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Gt;

    move-result-object v3

    .line 94522
    .local v0, "frameInfo":Lcom/facebook/ads/redexgen/X/Gt;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lT;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/facebook/ads/redexgen/X/Gt;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const-string v1, "SKD2aiuMz12sC9MEHPwFtgw1C1HH3qQd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2YOZvYYyczeO9UVS3DIHqXjJCxImTVhM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-ne v5, v0, :cond_1

    iget v1, v3, Lcom/facebook/ads/redexgen/X/Gt;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 94523
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94524
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A07:Ljava/lang/String;

    .line 94525
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94526
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gt;->A01:I

    .line 94527
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gt;->A04:I

    .line 94528
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0C:Ljava/lang/String;

    .line 94529
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    .line 94531
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lT;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 94532
    :cond_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gt;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A01:I

    .line 94533
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gt;->A03:I

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const-string v1, "AWQIxDR1BxjJqdSwyyHMPwKr6xoKH6oB"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "F7eavifvP420Kso3ywMcgn0EXVt9uheB"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lT;->A03:J

    .line 94534
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lT;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x6ct
        -0x58t
        -0x69t
        -0x64t
        -0x5et
        0x62t
        -0x6ct
        -0x6at
        0x67t
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 5

    .line 94535
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_6

    .line 94536
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A09:Z

    const/16 v1, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 94537
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A09:Z

    .line 94538
    goto :goto_0

    .line 94539
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 94540
    .local v0, "secondByte":I
    if-ne v2, v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A09:Z

    .line 94541
    const/16 v1, 0x40

    const/16 v0, 0x41

    if-eq v2, v1, :cond_3

    if-ne v2, v0, :cond_0

    .line 94542
    .restart local v0    # "secondByte":I
    :cond_3
    if-ne v2, v0, :cond_4

    const/4 v4, 0x1

    :cond_4
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A08:Z

    .line 94543
    return v3

    .line 94544
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 94545
    .end local v0    # "secondByte":I
    :cond_6
    return v4
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4v;[BI)Z
    .locals 2

    .line 94546
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94547
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 94548
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    .line 94549
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 11

    .line 94550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94551
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_4

    .line 94552
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A02:I

    const/4 v4, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94553
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lT;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94554
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94555
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    .line 94556
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A01:I

    if-ne v1, v0, :cond_0

    .line 94557
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v5, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/lT;->A0E:[Ljava/lang/String;

    const-string v1, "IAM9NHxQABFG0hTE5bn7OXwICUUtPCRY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ryput7yIrWVq6mIAY3kQFQghClw5ei8P"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 94558
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/lT;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 94559
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A03:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    .line 94560
    :cond_2
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lT;->A02:I

    goto :goto_0

    .line 94561
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/lT;->A04(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94562
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lT;->A01()V

    .line 94563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lT;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94565
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A02:I

    goto/16 :goto_0

    .line 94566
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lT;->A03(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94567
    const/4 v2, 0x1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/lT;->A02:I

    .line 94568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, -0x54

    aput-byte v0, v1, v3

    .line 94569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A08:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x41

    :goto_1
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 94570
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    goto/16 :goto_0

    .line 94571
    :cond_3
    const/16 v0, 0x40

    goto :goto_1

    .line 94572
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 94573
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 94574
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A07:Ljava/lang/String;

    .line 94575
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94576
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 94577
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 94578
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 94579
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    .line 94580
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 94581
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A02:I

    .line 94582
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A00:I

    .line 94583
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A09:Z

    .line 94584
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A08:Z

    .line 94585
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lT;->A04:J

    .line 94586
    return-void
.end method
