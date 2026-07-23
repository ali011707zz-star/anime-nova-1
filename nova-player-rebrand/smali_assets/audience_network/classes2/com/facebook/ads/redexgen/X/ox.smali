.class public final Lcom/facebook/ads/redexgen/X/ox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/74;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:J

.field public final A08:Lcom/facebook/ads/redexgen/X/nC;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3338
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WWBqbqM8cT7NtZ20aOE3uXs3Aw8DSv9K"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wsMqXc0RGaIy4bMjDS0CDKFK5K3H0E7a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tXUn5oHGArEZhR5EfIYxUHEmkE2i7Wlz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L3oqKt7yiugAXq9nLkVCiYddeszNHWIU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GxMV2HKS42DeS6e3iSG9rTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iBUmcZRwnnz5BMe8LKV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MLtAALupoqSZMT31TgfSKHmksSEA2gyG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KlBG0Bt2bdiLbLP3pzzetkFN2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ox;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 103596
    const/4 v1, 0x1

    const/high16 v0, 0x10000

    new-instance v2, Lcom/facebook/ads/redexgen/X/nC;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nC;-><init>(ZI)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/ox;-><init>(Lcom/facebook/ads/redexgen/X/nC;IIIIIZIZ)V

    .line 103597
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nC;IIIIIZIZ)V
    .locals 7

    .line 103598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103599
    const/4 v4, 0x0

    const/16 v2, 0xa3

    const/16 v1, 0x13

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x15

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v4, v6, v3}, Lcom/facebook/ads/redexgen/X/ox;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 103600
    const/16 v2, 0x83

    const/16 v1, 0x20

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/ox;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 103601
    const/16 v5, 0xc1

    const/16 v1, 0xb

    const/16 v0, 0x79

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p4, v5, v6}, Lcom/facebook/ads/redexgen/X/ox;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 103602
    invoke-static {p2, p5, v5, v2}, Lcom/facebook/ads/redexgen/X/ox;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 103603
    const/16 v2, 0xb6

    const/16 v1, 0xb

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0, v5}, Lcom/facebook/ads/redexgen/X/ox;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 103604
    const/16 v2, 0x6f

    const/16 v1, 0x14

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p8, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/ox;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 103605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ox;->A08:Lcom/facebook/ads/redexgen/X/nC;

    .line 103606
    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A07:J

    .line 103607
    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A06:J

    .line 103608
    int-to-long v0, p4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A05:J

    .line 103609
    int-to-long v0, p5

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A04:J

    .line 103610
    iput p6, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    .line 103611
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 103612
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    .line 103613
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A00:I

    .line 103614
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/ox;->A09:Z

    .line 103615
    int-to-long v0, p8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A03:J

    .line 103616
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A0A:Z

    .line 103617
    return-void

    .line 103618
    :cond_0
    const/high16 v0, 0xc80000

    goto :goto_0
.end method

.method public static A00(I)I
    .locals 3

    .line 103619
    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 103620
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103621
    :pswitch_1
    return v0

    .line 103622
    :pswitch_2
    return v0

    .line 103623
    :pswitch_3
    return v0

    .line 103624
    :pswitch_4
    return v0

    .line 103625
    :pswitch_5
    const/high16 p0, 0x7d00000

    sget-object v1, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    const-string v1, "ABED08YC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 103626
    :pswitch_6
    const/high16 v0, 0xc80000

    return v0

    .line 103627
    :pswitch_7
    const/high16 v0, 0x89a0000

    return v0

    .line 103628
    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final A01([Lcom/facebook/ads/redexgen/X/nE;)I
    .locals 4

    .line 103629
    const/4 v3, 0x0

    .line 103630
    .local v0, "targetBufferSize":I
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 103631
    .local v3, "exoTrackSelection":Lcom/facebook/ads/redexgen/X/nE;
    if-eqz v0, :cond_0

    .line 103632
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A9L()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pg;->A02:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ox;->A00(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 103633
    .end local v3    # "exoTrackSelection":Lcom/facebook/ads/redexgen/X/nE;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103634
    :cond_1
    const/high16 v0, 0xc80000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    const-string v1, "RHrwW0B94f4UqoylhYQPwgHgnQSWW3zM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ox;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x45

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xcc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ox;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x7ft
        -0x3ct
        -0x3et
        -0x31t
        -0x31t
        -0x30t
        -0x2bt
        -0x7ft
        -0x3dt
        -0x3at
        -0x7ft
        -0x33t
        -0x3at
        -0x2ct
        -0x2ct
        -0x7ft
        -0x2bt
        -0x37t
        -0x3et
        -0x31t
        -0x7ft
        0x7bt
        -0x5bt
        -0x3at
        -0x39t
        -0x3et
        -0x2at
        -0x33t
        -0x2bt
        -0x53t
        -0x30t
        -0x3et
        -0x3bt
        -0x5ct
        -0x30t
        -0x31t
        -0x2bt
        -0x2dt
        -0x30t
        -0x33t
        0x3t
        0x10t
        0x21t
        0x16t
        0x14t
        0x23t
        -0x31t
        0x11t
        0x24t
        0x15t
        0x15t
        0x14t
        0x21t
        -0x31t
        0x22t
        0x18t
        0x29t
        0x14t
        -0x31t
        0x21t
        0x14t
        0x10t
        0x12t
        0x17t
        0x14t
        0x13t
        -0x31t
        0x26t
        0x18t
        0x23t
        0x17t
        -0x31t
        0x1bt
        0x14t
        0x22t
        0x22t
        -0x31t
        0x23t
        0x17t
        0x10t
        0x1dt
        -0x31t
        -0x1ct
        -0x21t
        -0x21t
        0x1ct
        0x22t
        -0x31t
        0x1et
        0x15t
        -0x31t
        0x11t
        0x24t
        0x15t
        0x15t
        0x14t
        0x21t
        0x14t
        0x13t
        -0x31t
        0x1ct
        0x14t
        0x13t
        0x18t
        0x10t
        -0x31t
        0x13t
        0x10t
        0x23t
        0x10t
        -0x23t
        -0x24t
        -0x25t
        -0x23t
        -0x1bt
        -0x44t
        -0x11t
        -0x20t
        -0x20t
        -0x21t
        -0x14t
        -0x42t
        -0x11t
        -0x14t
        -0x25t
        -0x12t
        -0x1dt
        -0x17t
        -0x18t
        -0x39t
        -0x13t
        -0x4dt
        -0x3at
        -0x49t
        -0x49t
        -0x4at
        -0x3dt
        -0x69t
        -0x40t
        -0x3dt
        -0x5ft
        -0x43t
        -0x4et
        -0x36t
        -0x4dt
        -0x4et
        -0x4ct
        -0x44t
        -0x6et
        -0x49t
        -0x3bt
        -0x4at
        -0x3dt
        -0x5dt
        -0x4at
        -0x4dt
        -0x3at
        -0x49t
        -0x49t
        -0x4at
        -0x3dt
        -0x62t
        -0x3ct
        0x15t
        0x28t
        0x19t
        0x19t
        0x18t
        0x25t
        -0x7t
        0x22t
        0x25t
        0x3t
        0x1ft
        0x14t
        0x2ct
        0x15t
        0x14t
        0x16t
        0x1et
        0x0t
        0x26t
        -0xct
        -0x18t
        -0x1t
        -0x37t
        -0x4t
        -0x13t
        -0x13t
        -0x14t
        -0x7t
        -0x2ct
        -0x6t
        0x2bt
        0x27t
        0x2ct
        0x0t
        0x33t
        0x24t
        0x24t
        0x23t
        0x30t
        0xbt
        0x31t
    .end array-data
.end method

.method public static A04(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 103635
    if-lt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 103636
    return-void

    .line 103637
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 2

    .line 103638
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 103639
    const/high16 v0, 0xc80000

    .line 103640
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A00:I

    .line 103641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A01:Z

    .line 103642
    if-eqz p1, :cond_0

    .line 103643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A08:Lcom/facebook/ads/redexgen/X/nC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nC;->A01()V

    .line 103644
    :cond_0
    return-void

    .line 103645
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    goto :goto_0
.end method


# virtual methods
.method public final A6v()Lcom/facebook/ads/redexgen/X/nC;
    .locals 1

    .line 103646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A08:Lcom/facebook/ads/redexgen/X/nC;

    return-object v0
.end method

.method public final A70(Lcom/facebook/ads/redexgen/X/8O;)J
    .locals 2

    .line 103647
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A03:J

    return-wide v0
.end method

.method public final AFR(Lcom/facebook/ads/redexgen/X/8O;)V
    .locals 1

    .line 103648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ox;->A05(Z)V

    .line 103649
    return-void
.end method

.method public final AFc(Lcom/facebook/ads/redexgen/X/8O;)V
    .locals 1

    .line 103650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ox;->A05(Z)V

    .line 103651
    return-void
.end method

.method public final AG6(Lcom/facebook/ads/redexgen/X/8O;)V
    .locals 1

    .line 103652
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ox;->A05(Z)V

    .line 103653
    return-void
.end method

.method public final AGF(Lcom/facebook/ads/redexgen/X/73;Lcom/facebook/ads/redexgen/X/nW;[Lcom/facebook/ads/redexgen/X/nE;)V
    .locals 2

    .line 103654
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 103655
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/ox;->A01([Lcom/facebook/ads/redexgen/X/nE;)I

    move-result v0

    .line 103656
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A00:I

    .line 103657
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ox;->A08:Lcom/facebook/ads/redexgen/X/nC;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/nC;->A02(I)V

    .line 103658
    return-void

    .line 103659
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A02:I

    goto :goto_0
.end method

.method public final AIn(Lcom/facebook/ads/redexgen/X/8O;)Z
    .locals 1

    .line 103660
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A0A:Z

    return v0
.end method

.method public final AJv(Lcom/facebook/ads/redexgen/X/73;)Z
    .locals 10

    .line 103661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A08:Lcom/facebook/ads/redexgen/X/nC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nC;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A00:I

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lt v1, v0, :cond_6

    const/4 v9, 0x1

    .line 103662
    .local v0, "targetBufferSizeReached":Z
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A07:J

    .line 103663
    .local v4, "minBufferUs":J
    iget v3, p1, Lcom/facebook/ads/redexgen/X/73;->A00:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    .line 103664
    iget v2, p1, Lcom/facebook/ads/redexgen/X/73;->A00:F

    .line 103665
    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0Q(JF)J

    move-result-wide v2

    .line 103666
    .local v6, "mediaDurationMinBufferUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A06:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 103667
    .end local v6    # "mediaDurationMinBufferUs":J
    :cond_0
    const-wide/32 v3, 0x7a120

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 103668
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/73;->A01:J

    cmp-long v0, v1, v7

    if-gez v0, :cond_4

    .line 103669
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A09:Z

    if-nez v0, :cond_1

    if-nez v9, :cond_3

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/ox;->A01:Z

    .line 103670
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A01:Z

    if-nez v0, :cond_2

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/73;->A01:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 103671
    const/16 v2, 0x16

    const/16 v1, 0x12

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x28

    const/16 v1, 0x47

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ox;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 103672
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A01:Z

    return v0

    .line 103673
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 103674
    :cond_4
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/73;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ox;->A06:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    if-eqz v9, :cond_2

    .line 103675
    :cond_5
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/ox;->A01:Z

    goto :goto_2

    .line 103676
    :cond_6
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public final AJy(JFZZJ)Z
    .locals 11

    .line 103677
    move-wide/from16 v0, p6

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/5C;->A0R(JF)J

    move-result-wide v9

    .line 103678
    if-eqz p4, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ox;->A04:J

    .line 103679
    .local v0, "minBufferDurationUs":J
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v6, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v5, v6, v2

    const/4 v2, 0x1

    aget-object v6, v6, v2

    const/16 v2, 0x14

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v5, v2, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/ox;->A0C:[Ljava/lang/String;

    const-string v5, "l7tzQS6toEbIIxnpfZA1NGx"

    const/4 v2, 0x4

    aput-object v5, v6, v2

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    .line 103680
    const-wide/16 v5, 0x2

    div-long/2addr v0, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 103681
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    cmp-long v0, v9, v3

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A09:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A08:Lcom/facebook/ads/redexgen/X/nC;

    .line 103682
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nC;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ox;->A00:I

    if-lt v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 103683
    :goto_1
    return v0

    .line 103684
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 103685
    :cond_3
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ox;->A05:J

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
