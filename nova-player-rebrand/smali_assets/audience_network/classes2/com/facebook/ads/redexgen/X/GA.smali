.class public final Lcom/facebook/ads/redexgen/X/GA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/G8;,
        Lcom/facebook/ads/redexgen/X/G9;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:Z

.field public final A09:Landroid/view/WindowManager;

.field public final A0A:Lcom/facebook/ads/redexgen/X/G8;

.field public final A0B:Lcom/facebook/ads/redexgen/X/G9;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 748
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vrjy3LPqmZ4VYL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kldC8xOSHjGgI0Rq8UB5uDItbCAb4yeD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZtlkL6mqEDvYXWdJ148AMfPypAXzloX0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vv3uN80MDVvh0kr3i18f6F5St9zthXAP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5vSY45XZaWTc5ARQpJ6MABJkKRGBO5p9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "E4RES2qVkVhri6POLSj0lZrJ1TN13SFq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZPGU8CInoZ6FL7owV0UYW5v36RZ6UHPP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wFHJA8K1ufuqr0OxwfXIZVwS7Glp9Dxp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GA;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GA;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36866
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/GA;-><init>(Landroid/content/Context;)V

    .line 36867
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 36868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36869
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 36870
    const/4 v2, 0x7

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GA;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A09:Landroid/view/WindowManager;

    .line 36871
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 36872
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/GA;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/G8;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/GA;->A0A:Lcom/facebook/ads/redexgen/X/G8;

    .line 36873
    invoke-static {}, Lcom/facebook/ads/redexgen/X/G9;->A00()Lcom/facebook/ads/redexgen/X/G9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0B:Lcom/facebook/ads/redexgen/X/G9;

    .line 36874
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A06:J

    .line 36875
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A07:J

    .line 36876
    return-void

    .line 36877
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/GA;->A0A:Lcom/facebook/ads/redexgen/X/G8;

    .line 36878
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/GA;->A0B:Lcom/facebook/ads/redexgen/X/G9;

    goto :goto_1

    .line 36879
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/GA;->A09:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public static A00(JJJ)J
    .locals 5

    .line 36880
    sub-long v2, p0, p2

    div-long/2addr v2, p4

    .line 36881
    .local v0, "vsyncCount":J
    mul-long v0, p4, v2

    add-long/2addr p2, v0

    .line 36882
    .local v2, "snappedTimeNs":J
    cmp-long v0, p0, p2

    if-gtz v0, :cond_1

    .line 36883
    sub-long v3, p2, p4

    .line 36884
    .local v4, "snappedBeforeNs":J
    .local p1, "snappedAfterNs":J
    .restart local p1    # "snappedAfterNs":J
    :goto_0
    sub-long v1, p2, p0

    .line 36885
    .local p3, "snappedAfterDiff":J
    sub-long/2addr p0, v3

    .line 36886
    .local p5, "snappedBeforeDiff":J
    cmp-long v0, v1, p0

    if-gez v0, :cond_0

    :goto_1
    return-wide p2

    :cond_0
    move-wide p2, v3

    goto :goto_1

    .line 36887
    .end local v4    # "snappedBeforeNs":J
    .end local p1    # "snappedAfterNs":J
    :cond_1
    move-wide v3, p2

    .line 36888
    .restart local v4    # "snappedBeforeNs":J
    add-long/2addr p2, p4

    goto :goto_0
.end method

.method private A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/G8;
    .locals 3

    .line 36889
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GA;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 36890
    .local v0, "manager":Landroid/hardware/display/DisplayManager;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/G8;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/G8;-><init>(Lcom/facebook/ads/redexgen/X/GA;Landroid/hardware/display/DisplayManager;)V

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GA;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

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
    .locals 4

    .line 36891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A09:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 36892
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 36893
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 36894
    .local v1, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A06:J

    .line 36895
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/GA;->A06:J

    const-wide/16 v0, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/GA;->A07:J

    .line 36896
    .end local v1    # "defaultDisplayRefreshRate":D
    :cond_0
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GA;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x61t
        0x7bt
        0x78t
        0x64t
        0x69t
        0x71t
        0x26t
        0x38t
        0x3ft
        0x35t
        0x3et
        0x26t
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/GA;)V
    .locals 0

    .line 36897
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GA;->A03()V

    return-void
.end method

.method private A06(JJ)Z
    .locals 5

    .line 36898
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A04:J

    sub-long/2addr p1, v0

    .line 36899
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A05:J

    sub-long/2addr p3, v0

    .line 36900
    .local v2, "elapsedReleaseTimeNs":J
    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x1312d00

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A07(JJ)J
    .locals 18

    .line 36901
    move-object/from16 v12, p0

    const-wide/16 v6, 0x3e8

    move-wide/from16 v10, p1

    mul-long/2addr v6, v10

    .line 36902
    .local v5, "framePresentationTimeNs":J
    move-wide v14, v6

    .line 36903
    .local v7, "adjustedFrameTimeNs":J
    move-wide/from16 v8, p3

    move-wide v2, v8

    .line 36904
    .local v9, "adjustedReleaseTimeNs":J
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A08:Z

    if-eqz v0, :cond_1

    .line 36905
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A02:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_0

    .line 36906
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A01:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A01:J

    .line 36907
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A03:J

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A00:J

    .line 36908
    :cond_0
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A01:J

    const-wide/16 v16, 0x6

    const/4 v13, 0x0

    cmp-long v4, v0, v16

    if-ltz v4, :cond_5

    .line 36909
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A04:J

    sub-long v16, v6, v0

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A01:J

    div-long v16, v16, v0

    .line 36910
    .local v11, "averageFrameDurationNs":J
    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/GA;->A00:J

    add-long v4, v4, v16

    .line 36911
    .local v13, "candidateAdjustedFrameTimeNs":J
    invoke-direct {v12, v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/GA;->A06(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36912
    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/GA;->A08:Z

    .line 36913
    .end local v9    # "adjustedReleaseTimeNs":J
    .restart local v16
    :cond_1
    :goto_0
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A08:Z

    if-nez v0, :cond_2

    .line 36914
    iput-wide v6, v12, Lcom/facebook/ads/redexgen/X/GA;->A04:J

    .line 36915
    iput-wide v8, v12, Lcom/facebook/ads/redexgen/X/GA;->A05:J

    .line 36916
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A01:J

    .line 36917
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A08:Z

    .line 36918
    :cond_2
    iput-wide v10, v12, Lcom/facebook/ads/redexgen/X/GA;->A02:J

    .line 36919
    iput-wide v14, v12, Lcom/facebook/ads/redexgen/X/GA;->A03:J

    .line 36920
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A0B:Lcom/facebook/ads/redexgen/X/G9;

    if-eqz v0, :cond_3

    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/GA;->A06:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    .line 36921
    .end local v9
    .end local p2
    :cond_3
    return-wide v2

    .line 36922
    .end local v9
    .local v16, "adjustedReleaseTimeNs":J
    :cond_4
    iget-wide v2, v12, Lcom/facebook/ads/redexgen/X/GA;->A05:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/GA;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_9

    sget-object v13, Lcom/facebook/ads/redexgen/X/GA;->A0D:[Ljava/lang/String;

    const-string v1, "LxalG4mHATb18PeqaNeAayN2I9HozhV7"

    const/4 v0, 0x2

    aput-object v1, v13, v0

    add-long/2addr v2, v4

    .end local v7    # "adjustedFrameTimeNs":J
    .local p0, "adjustedFrameTimeNs":J
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A04:J

    sub-long/2addr v2, v0

    move-wide v14, v4

    goto :goto_0

    .line 36923
    .end local v9
    .restart local v16    # "adjustedReleaseTimeNs":J
    :cond_5
    invoke-direct {v12, v6, v7, v8, v9}, Lcom/facebook/ads/redexgen/X/GA;->A06(JJ)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/GA;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_6

    if-eqz v5, :cond_1

    .line 36924
    :goto_1
    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/GA;->A08:Z

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/GA;->A0D:[Ljava/lang/String;

    const-string v1, "QXST6c0zZjLjc8mFjZqys1TY6ZZx4"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v5, :cond_1

    goto :goto_1

    .line 36925
    :cond_7
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A0B:Lcom/facebook/ads/redexgen/X/G9;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/G9;->A04:J

    .line 36926
    .local v13, "sampledVsyncTimeNs":J
    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 36927
    return-wide v2

    .line 36928
    :cond_8
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A06:J

    .end local v13    # "sampledVsyncTimeNs":J
    .local p2, "sampledVsyncTimeNs":J
    move-wide v10, v0

    move-wide v6, v2

    move-wide v8, v4

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/GA;->A00(JJJ)J

    move-result-wide v2

    .line 36929
    .local v9, "snappedTimeNs":J
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/GA;->A07:J

    sub-long/2addr v2, v0

    return-wide v2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08()V
    .locals 1

    .line 36930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 36931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0A:Lcom/facebook/ads/redexgen/X/G8;

    if-eqz v0, :cond_0

    .line 36932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0A:Lcom/facebook/ads/redexgen/X/G8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G8;->A01()V

    .line 36933
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0B:Lcom/facebook/ads/redexgen/X/G9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G9;->A07()V

    .line 36934
    :cond_1
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 36935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A08:Z

    .line 36936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 36937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0B:Lcom/facebook/ads/redexgen/X/G9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G9;->A06()V

    .line 36938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0A:Lcom/facebook/ads/redexgen/X/G8;

    if-eqz v0, :cond_0

    .line 36939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GA;->A0A:Lcom/facebook/ads/redexgen/X/G8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G8;->A00()V

    .line 36940
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GA;->A03()V

    .line 36941
    :cond_1
    return-void
.end method
