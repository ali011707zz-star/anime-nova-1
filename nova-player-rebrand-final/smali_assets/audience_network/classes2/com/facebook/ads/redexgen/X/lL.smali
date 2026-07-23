.class public final Lcom/facebook/ads/redexgen/X/lL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ky;,
        Lcom/facebook/ads/redexgen/X/Kz;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:[F


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Hd;

.field public A03:Lcom/facebook/ads/redexgen/X/Kz;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4v;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ky;

.field public final A08:Lcom/facebook/ads/redexgen/X/L4;

.field public final A09:Lcom/facebook/ads/redexgen/X/LJ;

.field public final A0A:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3187
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Sri33Nkjg2q1UfSTa8c1c4poMbcRpRLi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "09hX7cFAjusi8bmxYUkedKuhTIWBBFyj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9Nq5ciBjH0E2wAdqO8kDicSSF4ASqfED"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QsWxT4gaPPGppGCvyiz5txfiFuAY8zGx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IfMd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WTVPPiGNk6qIrjWgxgkH9oFnGfUzUO7U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kZSjpU6etDs1IBDvrqsQrqQjBcHBIo8z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "H6v3RmW3GvMpIK1G5kWvIHPLiCmsEM1C"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lL;->A02()V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lL;->A0D:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 93684
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lL;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    .line 93685
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LJ;)V
    .locals 3

    .line 93686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lL;->A09:Lcom/facebook/ads/redexgen/X/LJ;

    .line 93688
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A0A:[Z

    .line 93689
    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ky;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Ky;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    .line 93690
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A00:J

    .line 93691
    if-eqz p1, :cond_0

    .line 93692
    const/16 v1, 0xb2

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/L4;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    .line 93693
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A06:Lcom/facebook/ads/redexgen/X/4v;

    .line 93694
    :goto_0
    return-void

    .line 93695
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    .line 93696
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A06:Lcom/facebook/ads/redexgen/X/4v;

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Ky;ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 9

    .line 93697
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 93698
    .local v0, "csdData":[B
    new-instance v5, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    .line 93699
    .local v1, "buffer":Lcom/facebook/ads/redexgen/X/4u;
    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4u;->A0A(I)V

    .line 93700
    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0A(I)V

    .line 93701
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93702
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93703
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_0

    .line 93704
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93705
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93706
    :cond_0
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result p0

    .line 93707
    .local v2, "aspectRatioInfo":I
    const/16 v2, 0xa

    const/16 v1, 0x14

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lL;->A01(III)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lL;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xf

    if-ne p0, v3, :cond_1

    .line 93708
    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93709
    .end local v4
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/lL;->A0D:[F

    array-length v0, v0

    if-ge p0, v0, :cond_2

    .line 93710
    sget-object v0, Lcom/facebook/ads/redexgen/X/lL;->A0D:[F

    aget v8, v0, p0

    .restart local v4
    goto :goto_0

    .line 93711
    .end local v4
    :cond_2
    invoke-static {v4, v8}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93712
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    .line 93713
    .local v8, "parWidth":I
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const-string v1, "pNVnHJusVCsmPjFYzkWaaBxpUvIALZFH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "5W5bueKBkmsFSlOt61KpehVGJe26nslO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 93714
    .local v3, "parHeight":I
    if-nez v0, :cond_4

    .line 93715
    invoke-static {v4, v8}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93716
    const/high16 v8, 0x3f800000    # 1.0f

    .line 93717
    .local v4, "pixelWidthHeightRatio":F
    .restart local v4    # "pixelWidthHeightRatio":F
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    const/4 p0, 0x2

    if-eqz v0, :cond_6

    .line 93718
    invoke-virtual {v5, p0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93719
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93720
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93721
    .end local v4    # "pixelWidthHeightRatio":F
    :cond_4
    int-to-float v8, p0

    int-to-float v0, v0

    div-float/2addr v8, v0

    goto :goto_0

    .line 93722
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const-string v1, "a7iwuG0S7TsvBO2g0yc87XIFTOWCV0GN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "G4F0gcHQBssTN40k2zdU8kwKQEhYA5ZF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz p1, :cond_6

    .line 93723
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93724
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93725
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93726
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93727
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93728
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93729
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93730
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93731
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93732
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93733
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93734
    :cond_6
    invoke-virtual {v5, p0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 93735
    .local v3, "videoObjectLayerShape":I
    if-eqz v0, :cond_7

    .line 93736
    const/16 v2, 0x43

    const/16 v1, 0x22

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93737
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93738
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 93739
    .local v5, "vopTimeIncrementResolution":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93740
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93741
    if-nez v1, :cond_9

    .line 93742
    const/16 v2, 0x1e

    const/16 v1, 0x25

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 93743
    .end local v6
    :cond_8
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93744
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 93745
    .local v7, "videoObjectLayerWidth":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93746
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 93747
    .local v6, "videoObjectLayerHeight":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93748
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 93749
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 93750
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 93751
    const/16 v2, 0x65

    const/16 v1, 0xd

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lL;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93752
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2p;->A0r(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93753
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0f(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93754
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/2p;->A0Y(F)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 93755
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93756
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 93757
    return-object v0

    .line 93758
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 93759
    const/4 v0, 0x0

    .line 93760
    .local v6, "numBits":I
    :goto_2
    if-lez v1, :cond_a

    .line 93761
    add-int/lit8 v0, v0, 0x1

    .line 93762
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93763
    :cond_a
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lL;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x45

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x72

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lL;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x38t
        0x3ct
        0x39t
        0x58t
        0x6ft
        0x6bt
        0x6et
        0x6ft
        0x78t
        0x12t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0x3at
        0x28t
        0x2bt
        0x3et
        0x38t
        0x2ft
        0x7bt
        0x29t
        0x3at
        0x2ft
        0x32t
        0x34t
        0x7dt
        0x5at
        0x42t
        0x55t
        0x58t
        0x5dt
        0x50t
        0x14t
        0x42t
        0x5bt
        0x44t
        0x6bt
        0x5dt
        0x5at
        0x57t
        0x46t
        0x51t
        0x59t
        0x51t
        0x5at
        0x40t
        0x6bt
        0x40t
        0x5dt
        0x59t
        0x51t
        0x6bt
        0x46t
        0x51t
        0x47t
        0x5bt
        0x58t
        0x41t
        0x40t
        0x5dt
        0x5bt
        0x5at
        0x4dt
        0x76t
        0x70t
        0x79t
        0x76t
        0x7ct
        0x74t
        0x7dt
        0x7ct
        0x38t
        0x6et
        0x71t
        0x7ct
        0x7dt
        0x77t
        0x38t
        0x77t
        0x7at
        0x72t
        0x7dt
        0x7bt
        0x6ct
        0x38t
        0x74t
        0x79t
        0x61t
        0x7dt
        0x6at
        0x38t
        0x6bt
        0x70t
        0x79t
        0x68t
        0x7dt
        0x2dt
        0x32t
        0x3ft
        0x3et
        0x34t
        0x74t
        0x36t
        0x2bt
        0x6ft
        0x2dt
        0x76t
        0x3et
        0x28t
    .end array-data
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 12

    .line 93764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93766
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v8

    .line 93767
    .local v0, "offset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v7

    .line 93768
    .local v1, "limit":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 93769
    .local v2, "dataArray":[B
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lL;->A01:J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lL;->A01:J

    .line 93770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lL;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93771
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A0A:[Z

    invoke-static {v6, v8, v7, v0}, Lcom/facebook/ads/redexgen/X/HS;->A04([BII[Z)I

    move-result v5

    .line 93772
    .local v3, "startCodeOffset":I
    if-ne v5, v7, :cond_2

    .line 93773
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A05:Z

    if-nez v0, :cond_0

    .line 93774
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    sget-object v1, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const-string v1, "80MY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v6, v8, v7}, Lcom/facebook/ads/redexgen/X/Ky;->A03([BII)V

    .line 93775
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    invoke-virtual {v0, v6, v8, v7}, Lcom/facebook/ads/redexgen/X/Kz;->A03([BII)V

    .line 93776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    if-eqz v0, :cond_1

    .line 93777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v6, v8, v7}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93778
    :cond_1
    return-void

    .line 93779
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v5, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 93780
    .local v4, "startCodeValue":I
    sub-int v9, v5, v8

    .line 93781
    .local v5, "lengthToStartCode":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A05:Z

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 93782
    if-lez v9, :cond_3

    .line 93783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    invoke-virtual {v0, v6, v8, v5}, Lcom/facebook/ads/redexgen/X/Ky;->A03([BII)V

    .line 93784
    :cond_3
    if-gez v9, :cond_5

    neg-int v1, v9

    .line 93785
    .local v6, "bytesAlreadyPassed":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    invoke-virtual {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Ky;->A04(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93786
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lL;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    sget-object v11, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v11, v0

    const/4 v0, 0x6

    aget-object v11, v11, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93787
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 93788
    :cond_6
    sget-object v11, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const-string v1, "jCMcU5kX01siyiD9Xw2jZ38LNAQD3esf"

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const-string v1, "NTL8nbB45bsjwa3rfW6th5wXRcuqzfwM"

    const/4 v0, 0x6

    aput-object v1, v11, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ky;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A04:Ljava/lang/String;

    .line 93789
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/lL;->A00(Lcom/facebook/ads/redexgen/X/Ky;ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 93790
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93791
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lL;->A05:Z

    .line 93792
    .end local v6    # "bytesAlreadyPassed":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    invoke-virtual {v0, v6, v8, v5}, Lcom/facebook/ads/redexgen/X/Kz;->A03([BII)V

    .line 93793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    if-eqz v0, :cond_b

    .line 93794
    const/4 v10, 0x0

    .line 93795
    .restart local v6    # "bytesAlreadyPassed":I
    if-lez v9, :cond_8

    .line 93796
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v1, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_9

    goto :goto_2

    .line 93797
    :cond_8
    neg-int v10, v9

    goto :goto_3

    .line 93798
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const-string v1, "pGtfbhZ8gA4Y3zya71EFVTXhFPoVLYfI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v9, v6, v8, v5}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93799
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/L4;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HS;->A02([BI)I

    move-result v2

    .line 93801
    .local v8, "unescapedLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 93802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A09:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/LJ;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A00:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lL;->A06:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v8, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/LJ;->A02(JLcom/facebook/ads/redexgen/X/4v;)V

    .line 93803
    .end local v8    # "unescapedLength":I
    :cond_a
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_b

    .line 93804
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v5, 0x2

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_b

    .line 93805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/L4;->A01(I)V

    .line 93806
    .end local v6    # "bytesAlreadyPassed":I
    :cond_b
    sub-int v8, v7, v5

    .line 93807
    .local v6, "bytesWrittenPastPosition":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lL;->A01:J

    int-to-long v0, v8

    sub-long/2addr v2, v0

    .line 93808
    .local v7, "absolutePosition":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A05:Z

    invoke-virtual {v1, v2, v3, v8, v0}, Lcom/facebook/ads/redexgen/X/Kz;->A02(JIZ)V

    .line 93809
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A00:J

    invoke-virtual {v2, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/Kz;->A01(IJ)V

    .line 93810
    add-int/lit8 v8, v5, 0x3

    .line 93811
    .end local v3    # "startCodeOffset":I
    .end local v4    # "startCodeValue":I
    .end local v5    # "lengthToStartCode":I
    .end local v6    # "bytesWrittenPastPosition":I
    .end local v7    # "absolutePosition":J
    goto/16 :goto_0
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 93812
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93813
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A04:Ljava/lang/String;

    .line 93814
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93815
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lL;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kz;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Kz;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    .line 93816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A09:Lcom/facebook/ads/redexgen/X/LJ;

    if-eqz v0, :cond_0

    .line 93817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A09:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/LJ;->A03(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 93818
    :cond_0
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 93819
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 93820
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 93821
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lL;->A00:J

    .line 93822
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 5

    .line 93823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A0A:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 93824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A07:Lcom/facebook/ads/redexgen/X/Ky;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ky;->A02()V

    .line 93825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    if-eqz v0, :cond_0

    .line 93826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A03:Lcom/facebook/ads/redexgen/X/Kz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kz;->A00()V

    .line 93827
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    if-eqz v0, :cond_1

    .line 93828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93829
    :cond_1
    const-wide/16 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lL;->A0C:[Ljava/lang/String;

    const-string v1, "KHBnxT5PT6gCJIZCrRbgphkbFp7MF5Ts"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/lL;->A01:J

    .line 93830
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lL;->A00:J

    .line 93831
    return-void
.end method
