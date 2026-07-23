.class public final Lcom/facebook/ads/redexgen/X/lK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L2;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Hd;

.field public A03:Lcom/facebook/ads/redexgen/X/L2;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/4v;

.field public final A08:Lcom/facebook/ads/redexgen/X/L4;

.field public final A09:Lcom/facebook/ads/redexgen/X/L4;

.field public final A0A:Lcom/facebook/ads/redexgen/X/L4;

.field public final A0B:Lcom/facebook/ads/redexgen/X/L9;

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3186
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mAIJKcC20Y3eOfYyWQRzrg7mLeRMrJFl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eZxkBrFzPoxgu8goyyke6z3uoIiInH7I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7SF2NgL0Q5eCPREDvftOSH9OstPB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tBtJ4FuF4UkjOIbBZeVQSFTGpUKvKhYU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JQCW8upC74KuI6xTj5WGF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PsTmzjLTY6QrmqAE1gFrtVK8jOOfhc8D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lK;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lK;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L9;ZZ)V
    .locals 3

    .line 93570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93571
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lK;->A0B:Lcom/facebook/ads/redexgen/X/L9;

    .line 93572
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/lK;->A0C:Z

    .line 93573
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/lK;->A0D:Z

    .line 93574
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0E:[Z

    .line 93575
    const/4 v1, 0x7

    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/L4;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    .line 93576
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/L4;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    .line 93577
    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/L4;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    .line 93578
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    .line 93579
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 93580
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lK;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3e

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
            "sampleReader"
        }
    .end annotation

    .line 93581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93582
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lK;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x23t
        0x2et
        0x2ft
        0x25t
        0x65t
        0x2bt
        0x3ct
        0x29t
    .end array-data
.end method

.method private A03(JIIJ)V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 93583
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A05:Z

    move v2, p4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L2;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93584
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/L4;->A04(I)Z

    .line 93585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/L4;->A04(I)Z

    .line 93586
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A05:Z

    const/4 v3, 0x3

    if-nez v0, :cond_4

    .line 93587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93588
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93589
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A09([BII)Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v4

    .line 93592
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/HR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A07([BII)Lcom/facebook/ads/redexgen/X/HQ;

    move-result-object v3

    .line 93593
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/HQ;
    iget v5, v4, Lcom/facebook/ads/redexgen/X/HR;->A08:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/HR;->A01:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/HR;->A04:I

    .line 93594
    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 93595
    .local v3, "codecs":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/lK;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A04:Ljava/lang/String;

    .line 93596
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v8

    .line 93597
    const/4 v7, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/lK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93598
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2p;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/HR;->A0A:I

    .line 93599
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0r(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/HR;->A03:I

    .line 93600
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0f(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/HR;->A00:F

    .line 93601
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0Y(F)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93602
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93603
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 93604
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A05:Z

    .line 93606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/L2;->A04(Lcom/facebook/ads/redexgen/X/HR;)V

    .line 93607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/L2;->A03(Lcom/facebook/ads/redexgen/X/HQ;)V

    .line 93608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93610
    .end local v0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "ppsData":Lcom/facebook/ads/redexgen/X/HQ;
    .end local v2    # "spsData":Lcom/facebook/ads/redexgen/X/HR;
    .end local v3    # "codecs":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/L4;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/lK;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/lK;->A0G:[Ljava/lang/String;

    const-string v1, "IcPmfl1yBNDnokE5CaufU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A02([BI)I

    move-result v2

    .line 93612
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lK;->A07:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 93613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lK;->A07:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lK;->A0B:Lcom/facebook/ads/redexgen/X/L9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A07:Lcom/facebook/ads/redexgen/X/4v;

    move-wide v2, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/L9;->A02(JLcom/facebook/ads/redexgen/X/4v;)V

    .line 93615
    .end local v0    # "unescapedLength":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lK;->A05:Z

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/lK;->A06:Z

    .line 93616
    move v3, p3

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/L2;->A07(JIZZ)Z

    move-result v0

    .line 93617
    .local v0, "sampleIsKeyFrame":Z
    if-eqz v0, :cond_3

    .line 93618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A06:Z

    .line 93619
    :cond_3
    return-void

    .line 93620
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A09([BII)Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v1

    .line 93622
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/HR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/L2;->A04(Lcom/facebook/ads/redexgen/X/HR;)V

    .line 93623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .end local v0    # "spsData":Lcom/facebook/ads/redexgen/X/HR;
    goto :goto_0

    .line 93624
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L4;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/HS;->A07([BII)Lcom/facebook/ads/redexgen/X/HQ;

    move-result-object v1

    .line 93626
    .local v0, "ppsData":Lcom/facebook/ads/redexgen/X/HQ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/L2;->A03(Lcom/facebook/ads/redexgen/X/HQ;)V

    .line 93627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(JIJ)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 93628
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A05:Z

    move v3, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L2;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93629
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/L4;->A01(I)V

    .line 93630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/L4;->A01(I)V

    .line 93631
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/L4;->A01(I)V

    .line 93632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    move-wide v4, p4

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/L2;->A02(JIJ)V

    .line 93633
    return-void
.end method

.method private A05([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 93634
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L2;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93635
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93637
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L4;->A02([BII)V

    .line 93638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L2;->A05([BII)V

    .line 93639
    return-void
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 17

    .line 93640
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/lK;->A01()V

    .line 93641
    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v7

    .line 93642
    .local v0, "offset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v5

    .line 93643
    .local v8, "limit":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v4

    .line 93644
    .local v9, "dataArray":[B
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/lK;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/lK;->A01:J

    .line 93645
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/lK;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-interface {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93646
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/lK;->A0E:[Z

    invoke-static {v4, v7, v5, v0}, Lcom/facebook/ads/redexgen/X/HS;->A04([BII[Z)I

    move-result v3

    .line 93647
    .local v12, "nalUnitOffset":I
    if-ne v3, v5, :cond_0

    .line 93648
    invoke-direct {v6, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/lK;->A05([BII)V

    .line 93649
    return-void

    .line 93650
    :cond_0
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/HS;->A01([BI)I

    move-result v14

    sget-object v1, Lcom/facebook/ads/redexgen/X/lK;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_3

    .line 93651
    .local v13, "nalUnitType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/lK;->A0G:[Ljava/lang/String;

    const-string v1, "800XsA7BA4hpamNrxbWO1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sub-int v0, v3, v7

    .line 93652
    .local v14, "lengthToNalUnit":I
    if-lez v0, :cond_1

    .line 93653
    invoke-direct {v6, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/lK;->A05([BII)V

    .line 93654
    :cond_1
    sub-int v10, v5, v3

    .line 93655
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/lK;->A01:J

    int-to-long v1, v10

    sub-long/2addr v8, v1

    .line 93656
    .local v16, "absolutePosition":J
    if-gez v0, :cond_2

    neg-int v11, v0

    :goto_1
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    .line 93657
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/lK;->A03(JIIJ)V

    .line 93658
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move-wide v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/lK;->A04(JIJ)V

    .line 93659
    add-int/lit8 v7, v3, 0x3

    .line 93660
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_0

    .line 93661
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 4

    .line 93662
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93663
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A04:Ljava/lang/String;

    .line 93664
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93665
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lK;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/lK;->A0C:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lK;->A0D:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/L2;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/L2;-><init>(Lcom/facebook/ads/redexgen/X/Hd;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    .line 93666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0B:Lcom/facebook/ads/redexgen/X/L9;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/L9;->A03(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 93667
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 93668
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 93669
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 93670
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    .line 93671
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lK;->A06:Z

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lK;->A06:Z

    .line 93672
    return-void

    .line 93673
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AJ5()V
    .locals 2

    .line 93674
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A01:J

    .line 93675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A06:Z

    .line 93676
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    .line 93677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0E:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HS;->A0H([Z)V

    .line 93678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A08:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A09:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A00()V

    .line 93681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    if-eqz v0, :cond_0

    .line 93682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A03:Lcom/facebook/ads/redexgen/X/L2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L2;->A01()V

    .line 93683
    :cond_0
    return-void
.end method
