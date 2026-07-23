.class public final Lcom/facebook/ads/redexgen/X/G7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/G5;,
        Lcom/facebook/ads/redexgen/X/G6;,
        Lcom/facebook/ads/redexgen/X/G3;,
        Lcom/facebook/ads/redexgen/X/n1;,
        Lcom/facebook/ads/redexgen/X/n2;
    }
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Landroid/view/Surface;

.field public A0D:Z

.field public final A0E:Lcom/facebook/ads/redexgen/X/Fl;

.field public final A0F:Lcom/facebook/ads/redexgen/X/G5;

.field public final A0G:Lcom/facebook/ads/redexgen/X/G6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 746
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "El1apek5TdjhfhN6viIbzGI1k6A8fvYa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7lO0T01iPA0M2Tn6ez9XJF6fi3WcV0bl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BUJOgokLGuaRN3Jb1lPoBsNrm7KBSu3J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mjIihJQoirK71A6rZ4qRVtTe6TTtSgwc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PHElykquIwSutGmUMi14ryiOqojKYZje"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FFUtkd6qKeeUYHXUT7DV9hX7r9PAWeGY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aVKnabS1yBALevTpM7jFXLX0kSbTApQh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pYdHEl16nY3gI4cpQf6RN4y0bom4H0uh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G7;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G7;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36700
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fl;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    .line 36701
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/G7;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/G5;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0F:Lcom/facebook/ads/redexgen/X/G5;

    .line 36702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0F:Lcom/facebook/ads/redexgen/X/G5;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G6;->A00()Lcom/facebook/ads/redexgen/X/G6;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0G:Lcom/facebook/ads/redexgen/X/G6;

    .line 36703
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0A:J

    .line 36704
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0B:J

    .line 36705
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:F

    .line 36706
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A01:F

    .line 36707
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A04:I

    .line 36708
    return-void

    .line 36709
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(JJJ)J
    .locals 5

    .line 36710
    sub-long v2, p0, p2

    div-long/2addr v2, p4

    .line 36711
    .local v0, "vsyncCount":J
    mul-long v0, p4, v2

    add-long/2addr p2, v0

    .line 36712
    .local v2, "snappedTimeNs":J
    cmp-long v0, p0, p2

    if-gtz v0, :cond_1

    .line 36713
    sub-long v3, p2, p4

    .line 36714
    .local v4, "snappedBeforeNs":J
    .local p1, "snappedAfterNs":J
    .restart local p1    # "snappedAfterNs":J
    :goto_0
    sub-long v1, p2, p0

    .line 36715
    .local p3, "snappedAfterDiff":J
    sub-long/2addr p0, v3

    .line 36716
    .local p5, "snappedBeforeDiff":J
    cmp-long v0, v1, p0

    if-gez v0, :cond_0

    :goto_1
    return-wide p2

    :cond_0
    move-wide p2, v3

    goto :goto_1

    .line 36717
    .end local v4    # "snappedBeforeNs":J
    .end local p1    # "snappedAfterNs":J
    :cond_1
    move-wide v3, p2

    .line 36718
    .restart local v4    # "snappedBeforeNs":J
    add-long/2addr p2, p4

    goto :goto_0
.end method

.method public static A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/G5;
    .locals 4

    .line 36719
    const/4 v3, 0x0

    .line 36720
    .local v0, "displayHelper":Lcom/facebook/ads/redexgen/X/G5;
    if-eqz p0, :cond_1

    .line 36721
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 36722
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 36723
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/n1;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/n1;

    move-result-object v3

    .line 36724
    :cond_0
    if-nez v3, :cond_1

    .line 36725
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/n2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/n2;

    move-result-object v3

    .line 36726
    :cond_1
    return-object v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/G7;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5

    .line 36727
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0C:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/G7;->A04:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A03:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 36728
    :cond_0
    return-void

    .line 36729
    :cond_1
    iput v4, p0, Lcom/facebook/ads/redexgen/X/G7;->A03:F

    .line 36730
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/G7;->A0C:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/G7;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/G7;->A0I:[Ljava/lang/String;

    const-string v1, "PQOfzOqD2ukvp3odpMH5qIU7xJUCien7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/G3;->A02(Landroid/view/Surface;F)V

    .line 36731
    return-void
.end method

.method private A04()V
    .locals 2

    .line 36732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A05:J

    .line 36733
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A06:J

    .line 36734
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A08:J

    .line 36735
    return-void
.end method

.method private A05()V
    .locals 8

    .line 36736
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0C:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 36737
    .end local v0
    .end local v1
    :cond_0
    return-void

    .line 36738
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A06()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A00()F

    move-result v4

    .line 36739
    .local v0, "candidateFrameRate":F
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A02:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3

    .line 36740
    return-void

    .line 36741
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:F

    goto :goto_0

    .line 36742
    :cond_3
    const/4 v7, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    cmpl-float v0, v4, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A02:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 36743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    .line 36744
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A06()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    .line 36745
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A03()J

    move-result-wide v5

    const-wide v1, 0x12a05f200L

    cmp-long v0, v5, v1

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    .line 36746
    .local v1, "candidateIsHighConfidence":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 36747
    const v1, 0x3ca3d70a    # 0.02f

    .line 36748
    .local v3, "minimumChangeForUpdate":F
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A02:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 36749
    .restart local v1    # "candidateIsHighConfidence":Z
    :goto_3
    if-eqz v7, :cond_4

    .line 36750
    iput v4, p0, Lcom/facebook/ads/redexgen/X/G7;->A02:F

    .line 36751
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/G7;->A09(Z)V

    .line 36752
    :cond_4
    return-void

    .line 36753
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 36754
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 36755
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 36756
    .end local v1    # "candidateIsHighConfidence":Z
    :cond_8
    cmpl-float v0, v4, v1

    if-eqz v0, :cond_9

    .line 36757
    const/4 v7, 0x1

    .restart local v1    # "candidateIsHighConfidence":Z
    goto :goto_3

    .line 36758
    .end local v1    # "candidateIsHighConfidence":Z
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    .line 36759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A01()I

    move-result v0

    if-lt v0, v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G7;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x3et
        -0x25t
        -0x32t
        -0x31t
        -0x27t
        -0x2et
        -0x73t
        -0x1ft
        -0x24t
        -0x73t
        -0x22t
        -0x1et
        -0x2et
        -0x21t
        -0x1at
        -0x73t
        -0x2ft
        -0x2at
        -0x20t
        -0x23t
        -0x27t
        -0x32t
        -0x1at
        -0x73t
        -0x21t
        -0x2et
        -0x2dt
        -0x21t
        -0x2et
        -0x20t
        -0x2bt
        -0x73t
        -0x21t
        -0x32t
        -0x1ft
        -0x2et
        -0x79t
        -0x66t
        -0x6bt
        -0x6at
        -0x60t
        0x77t
        -0x5dt
        -0x6et
        -0x62t
        -0x6at
        -0x7dt
        -0x6at
        -0x63t
        -0x6at
        -0x6et
        -0x5ct
        -0x6at
        0x79t
        -0x6at
        -0x63t
        -0x5ft
        -0x6at
        -0x5dt
    .end array-data
.end method

.method private A07(Landroid/view/Display;)V
    .locals 4

    .line 36760
    if-eqz p1, :cond_0

    .line 36761
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 36762
    .local v0, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0A:J

    .line 36763
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A0A:J

    const-wide/16 v0, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A0B:J

    .line 36764
    .end local v0    # "defaultDisplayRefreshRate":D
    :goto_0
    return-void

    .line 36765
    :cond_0
    const/16 v2, 0x24

    const/16 v1, 0x17

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G7;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G7;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 36766
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0A:J

    .line 36767
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0B:J

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/G7;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/G7;->A07(Landroid/view/Display;)V

    return-void
.end method

.method private A09(Z)V
    .locals 3

    .line 36768
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0C:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/G7;->A04:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_1

    .line 36769
    .end local v0
    :cond_0
    return-void

    .line 36770
    :cond_1
    const/4 v1, 0x0

    .line 36771
    .local v0, "surfacePlaybackFrameRate":F
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0D:Z

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A02:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_2

    .line 36772
    iget v1, p0, Lcom/facebook/ads/redexgen/X/G7;->A02:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A01:F

    mul-float/2addr v1, v0

    .line 36773
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A03:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 36774
    return-void

    .line 36775
    :cond_3
    iput v1, p0, Lcom/facebook/ads/redexgen/X/G7;->A03:F

    .line 36776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0C:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/G3;->A02(Landroid/view/Surface;F)V

    .line 36777
    return-void
.end method

.method public static A0A(JJ)Z
    .locals 1

    .line 36778
    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    const-wide/32 p0, 0x1312d00

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0B(J)J
    .locals 14

    .line 36779
    .local v0, "adjustedReleaseTimeNs":J
    move-wide v8, p1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/G7;->A06:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A02()J

    move-result-wide v6

    .line 36781
    .local v2, "frameDurationNs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A07:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/G7;->A05:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A06:J

    sub-long/2addr v4, v0

    mul-long/2addr v4, v6

    long-to-float v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A01:F

    div-float/2addr v1, v0

    float-to-long v0, v1

    add-long/2addr v2, v0

    .line 36782
    .local v4, "candidateAdjustedReleaseTimeNs":J
    invoke-static {v8, v9, v2, v3}, Lcom/facebook/ads/redexgen/X/G7;->A0A(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36783
    move-wide v8, v2

    .line 36784
    .end local v2    # "frameDurationNs":J
    .end local v4    # "candidateAdjustedReleaseTimeNs":J
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A05:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A08:J

    .line 36785
    iput-wide v8, p0, Lcom/facebook/ads/redexgen/X/G7;->A09:J

    .line 36786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0G:Lcom/facebook/ads/redexgen/X/G6;

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/G7;->A0A:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 36787
    .end local v2
    .end local v4
    :cond_1
    return-wide v8

    .line 36788
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G7;->A04()V

    goto :goto_0

    .line 36789
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0G:Lcom/facebook/ads/redexgen/X/G6;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/G6;->A04:J

    .line 36790
    .local v2, "sampledVsyncTimeNs":J
    cmp-long v0, v10, v1

    if-nez v0, :cond_4

    .line 36791
    return-wide v8

    .line 36792
    :cond_4
    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/G7;->A0A:J

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/G7;->A00(JJJ)J

    move-result-wide v2

    .line 36793
    .local v4, "snappedTimeNs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0B:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final A0C()V
    .locals 0

    .line 36794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G7;->A04()V

    .line 36795
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 36796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0D:Z

    .line 36797
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G7;->A04()V

    .line 36798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0F:Lcom/facebook/ads/redexgen/X/G5;

    if-eqz v0, :cond_0

    .line 36799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0G:Lcom/facebook/ads/redexgen/X/G6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G6;->A06()V

    .line 36800
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G7;->A0F:Lcom/facebook/ads/redexgen/X/G5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/n3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/n3;-><init>(Lcom/facebook/ads/redexgen/X/G7;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/G5;->AHX(Lcom/facebook/ads/redexgen/X/G4;)V

    .line 36801
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/G7;->A09(Z)V

    .line 36802
    return-void
.end method

.method public final A0E()V
    .locals 1

    .line 36803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0D:Z

    .line 36804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0F:Lcom/facebook/ads/redexgen/X/G5;

    if-eqz v0, :cond_0

    .line 36805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0F:Lcom/facebook/ads/redexgen/X/G5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/G5;->AKW()V

    .line 36806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0G:Lcom/facebook/ads/redexgen/X/G6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G6;->A07()V

    .line 36807
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G7;->A03()V

    .line 36808
    return-void
.end method

.method public final A0F(F)V
    .locals 1

    .line 36809
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:F

    .line 36810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A04()V

    .line 36811
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G7;->A05()V

    .line 36812
    return-void
.end method

.method public final A0G(J)V
    .locals 5

    .line 36813
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/G7;->A08:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 36814
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A06:J

    .line 36815
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A07:J

    .line 36816
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A05:J

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A05:J

    .line 36817
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A0E:Lcom/facebook/ads/redexgen/X/Fl;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Fl;->A05(J)V

    .line 36818
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G7;->A05()V

    .line 36819
    return-void
.end method
