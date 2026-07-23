.class public final Lcom/facebook/ads/redexgen/X/10;
.super Lcom/facebook/ads/redexgen/X/1g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fo;,
        Lcom/facebook/ads/redexgen/X/n5;,
        Lcom/facebook/ads/redexgen/X/Fm;
    }
.end annotation


# static fields
.field public static A0z:Z

.field public static A10:Z

.field public static A11:[B

.field public static A12:[Ljava/lang/String;

.field public static final A13:[I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/n5;

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:J

.field public A0O:J

.field public A0P:J

.field public A0Q:J

.field public A0R:J

.field public A0S:Landroid/media/MediaFormat;

.field public A0T:Landroid/view/Surface;

.field public A0U:Landroid/view/Surface;

.field public A0V:Lcom/facebook/ads/redexgen/X/pW;

.field public A0W:Lcom/facebook/ads/redexgen/X/Fm;

.field public A0X:Lcom/facebook/ads/redexgen/X/G2;

.field public A0Y:Ljava/lang/Object;

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:Z

.field public A0e:Z

.field public A0f:Z

.field public A0g:Z

.field public A0h:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D69547806: Only become ready once we have a surface"
    .end annotation
.end field

.field public A0i:Z

.field public A0j:Z

.field public A0k:Z

.field public final A0l:I

.field public final A0m:I

.field public final A0n:I

.field public final A0o:I

.field public final A0p:J

.field public final A0q:Landroid/content/Context;

.field public final A0r:Lcom/facebook/ads/redexgen/X/Fo;

.field public final A0s:Lcom/facebook/ads/redexgen/X/G7;

.field public final A0t:Lcom/facebook/ads/redexgen/X/GA;

.field public final A0u:Lcom/facebook/ads/redexgen/X/GP;

.field public final A0v:Z

.field public final A0w:Z

.field public final A0x:[J

.field public final A0y:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 71
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1NrdYD1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "e5CK9xPn181JbTmOtknpsRCTtEnfDjR7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JOO2xDl09pGw2ctw4YX5NjUR9G0o3YSd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "78GGNN1Oy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9AKZq2G4NCUeKdGegrXYJ0IAO08zLsd4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iWBlsDv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UMYjsOFgfK8VKq5PmkWlrwAU0Drwgr0y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VHiTYYEOZZ1JgajrOOPlCJmFeSyZZTnO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/10;->A0P()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/10;->A13:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jN;Lcom/facebook/ads/redexgen/X/BT;JLcom/facebook/ads/redexgen/X/A6;ZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/GQ;IIIII)V
    .locals 17
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D69547806: Only become ready once we have a surface"
    .end annotation

    .line 3802
    move-object/from16 v6, p0

    const/4 v8, 0x2

    move-object/from16 v7, p0

    move/from16 v16, p15

    move/from16 v15, p14

    move/from16 v14, p9

    move/from16 v13, p8

    move-object/from16 v12, p7

    move-object/from16 v11, p4

    move-object/from16 v10, p3

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v16}, Lcom/facebook/ads/redexgen/X/1g;-><init>(ILcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jN;Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;ZZII)V

    .line 3803
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/10;->A0e:Z

    .line 3804
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/10;->A0Z:Z

    .line 3805
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/10;->A0f:Z

    .line 3806
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 3807
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/10;->A0c:Z

    .line 3808
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/10;->A0h:Z

    .line 3809
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A1v:Lcom/facebook/ads/redexgen/X/jX;

    .line 3810
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    .line 3811
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A0w:Lcom/facebook/ads/redexgen/X/jX;

    .line 3812
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0h:Z

    .line 3813
    move-wide/from16 v0, p5

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0p:J

    .line 3814
    move/from16 v0, p12

    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0l:I

    .line 3815
    move/from16 v0, p13

    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0m:I

    .line 3816
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0q:Landroid/content/Context;

    .line 3817
    move/from16 v0, p16

    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0n:I

    .line 3818
    new-instance v0, Lcom/facebook/ads/redexgen/X/GA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GA;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0t:Lcom/facebook/ads/redexgen/X/GA;

    .line 3819
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/10;->A0q:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/G7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/G7;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    .line 3820
    new-instance v0, Lcom/facebook/ads/redexgen/X/GP;

    move-object/from16 v1, p11

    move-object/from16 v4, p10

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/GP;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/GQ;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    .line 3821
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    iget-boolean v1, v6, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-direct {v0, v4, v6, v1}, Lcom/facebook/ads/redexgen/X/Fo;-><init>(Lcom/facebook/ads/redexgen/X/G7;Lcom/facebook/ads/redexgen/X/10;Z)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    .line 3822
    invoke-static {}, Lcom/facebook/ads/redexgen/X/10;->A0i()Z

    move-result v0

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0v:Z

    .line 3823
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-ne v1, v0, :cond_0

    sget-object v5, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    const/16 v4, 0x32b

    const/4 v1, 0x6

    const/16 v0, 0x3e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, v6, Lcom/facebook/ads/redexgen/X/10;->A0a:Z

    .line 3824
    const/16 v1, 0xa

    new-array v0, v1, [J

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    .line 3825
    new-array v0, v1, [J

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0y:[J

    .line 3826
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    .line 3827
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/10;->A0O:J

    .line 3828
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    .line 3829
    const/4 v0, -0x1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A08:I

    .line 3830
    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A06:I

    .line 3831
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A01:F

    .line 3832
    iput v0, v6, Lcom/facebook/ads/redexgen/X/10;->A02:F

    .line 3833
    iput v7, v6, Lcom/facebook/ads/redexgen/X/10;->A0H:I

    .line 3834
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/10;->A0F()V

    .line 3835
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 4

    .line 3836
    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0B:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 3837
    const/4 v3, 0x0

    .line 3838
    .local v0, "totalInitializationDataSize":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 3839
    .local v1, "initializationDataCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3840
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    .line 3841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3842
    .end local v2    # "i":I
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0B:I

    add-int/2addr v0, v3

    return v0

    .line 3843
    .end local v0    # "totalInitializationDataSize":I
    .end local v1    # "initializationDataCount":I
    :cond_1
    iget v2, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    .line 3844
    .local v0, "width":I
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A02(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 3845
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 3846
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A0F(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3847
    return v3

    .line 3848
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 3849
    .local v1, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    const/4 v7, 0x1

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 3850
    .local v4, "requiresSecureDecryption":Z
    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 3851
    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/BT;->A7o(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 3852
    .local v5, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 3853
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/10;->A0C(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;)Ljava/util/List;

    move-result-object v2

    .line 3854
    :cond_1
    const/4 v1, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3855
    if-eqz v4, :cond_2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 3856
    invoke-interface {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/BT;->A7o(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3857
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3858
    const/4 v7, 0x2

    .line 3859
    :cond_2
    return v7

    .line 3860
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3861
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3862
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 3863
    :cond_5
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1g;->A1G(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3864
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 3865
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/B3;

    .line 3866
    .local v6, "decoderInfo":Lcom/facebook/ads/redexgen/X/B3;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/B3;->A0S(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v6

    .line 3867
    .local v7, "decoderCapable":Z
    if-eqz v6, :cond_7

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-lez v0, :cond_7

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-lez v0, :cond_7

    .line 3868
    sget v6, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v5, 0x15

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "IH389xfTqQddwzM1XHaKnp7MZCz6cb7i"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "af13jltpF5ZHHZjQxHJ609Zz958wUZpm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lt v6, v5, :cond_d

    .line 3869
    iget v5, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    float-to-double v0, v0

    .line 3870
    invoke-virtual {v4, v5, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/B3;->A0R(IID)Z

    move-result v6

    .line 3871
    :cond_7
    :goto_1
    iget-boolean v5, v4, Lcom/facebook/ads/redexgen/X/B3;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "9b4CG0tnJeiPU0k4PARWVGoy4qv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_c

    :goto_2
    const/16 v5, 0x10

    .line 3872
    .local v3, "adaptiveSupport":I
    :goto_3
    iget-boolean v4, v4, Lcom/facebook/ads/redexgen/X/B3;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "WfKDcH5FGJ5C30XN1qoZOnsI3qPSaUZa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    :goto_4
    const/16 v3, 0x20

    .line 3873
    .local v2, "tunnelingSupport":I
    :cond_8
    if-eqz v6, :cond_9

    const/4 v0, 0x4

    .line 3874
    .local p0, "formatSupport":I
    :goto_5
    or-int/2addr v5, v3

    or-int/2addr v5, v0

    return v5

    .line 3875
    :cond_9
    const/4 v0, 0x3

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_8

    goto :goto_4

    :cond_b
    if-eqz v5, :cond_c

    goto :goto_2

    .line 3876
    :cond_c
    const/16 v5, 0x8

    goto :goto_3

    .line 3877
    :cond_d
    iget v6, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    mul-int/2addr v6, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ba;->A00()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "ecceu4zvNIhSM2cVW4sHEkLyyuMr8ggY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gt v6, v5, :cond_f

    :goto_6
    move v6, v7

    .line 3878
    if-nez v6, :cond_7

    .line 3879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1d

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x6ef

    const/4 v1, 0x1

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x482

    const/4 v1, 0x3

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x481

    const/4 v1, 0x1

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/4g;->A04(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "Kv9mbenvGpQB93bFl6W05JZGB7qp372O"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bO17OsYGhLw9DTwpfBLbbIHXKJZDjwiV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-gt v6, v5, :cond_f

    goto :goto_6

    .line 3880
    :cond_f
    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/lang/String;II)I
    .locals 7

    .line 3881
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    .line 3882
    .end local v0
    .end local v1
    :cond_0
    return v3

    .line 3883
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3884
    return v3

    .line 3885
    :sswitch_0
    const/16 v2, 0x6bc

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x6a9

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x677

    const/16 v1, 0x9

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x69c

    const/16 v1, 0xd

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "BSk60PaXf0Sk22Sw2ltCbt0PrRKp4yQI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/16 v6, 0x692

    const/16 v5, 0xa

    const/16 v4, 0x5e

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "tnE0zKFGRA1mCoLoHHoslqD8Jr5mgPU8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "qP878wwRxP7hWQjb5gRcbhQ3e4xfipWz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "kyKsBwQU8xCkRSkCaxSqqZifTpXgRXEu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :sswitch_5
    const/16 v2, 0x663

    const/16 v1, 0xa

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3886
    :pswitch_0
    mul-int/2addr p1, p2

    .line 3887
    .local v0, "maxPixels":I
    const/4 v0, 0x4

    .line 3888
    .local v1, "minCompressionRatio":I
    goto :goto_2

    .line 3889
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_1
    mul-int/2addr p1, p2

    .line 3890
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 3891
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 3892
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_2
    const/16 v2, 0xb3

    const/16 v1, 0xe

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3893
    return v3

    .line 3894
    :cond_4
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v1

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x10

    mul-int/lit8 p1, v0, 0x10

    .line 3895
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 3896
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 3897
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_3
    mul-int/2addr p1, p2

    .line 3898
    .restart local v0    # "maxPixels":I
    const/4 v0, 0x2

    .line 3899
    .restart local v1    # "minCompressionRatio":I
    :goto_2
    mul-int/lit8 v1, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    return v1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private A03(JJJJZ)J
    .locals 4

    .line 3900
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1f()F

    move-result v0

    float-to-double v0, v0

    .line 3901
    .local v0, "playbackSpeed":D
    sub-long/2addr p7, p1

    long-to-double v2, p7

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 3902
    .local v2, "earlyUs":J
    if-eqz p9, :cond_0

    .line 3903
    sub-long/2addr p5, p3

    sub-long/2addr v0, p5

    .line 3904
    :cond_0
    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/10;)J
    .locals 1

    .line 3905
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0L:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/10;JJJJZ)J
    .locals 0

    .line 3906
    invoke-direct/range {p0 .. p9}, Lcom/facebook/ads/redexgen/X/10;->A03(JJJJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/10;)Landroid/content/Context;
    .locals 0

    .line 3907
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/10;->A0q:Landroid/content/Context;

    return-object p0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;)Landroid/graphics/Point;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 3908
    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    const/4 v9, 0x0

    if-le v1, v0, :cond_a

    const/4 v11, 0x1

    .line 3909
    .local v2, "isVerticalVideo":Z
    :goto_0
    if-eqz v11, :cond_9

    iget v8, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    .line 3910
    .local v3, "formatLongEdgePx":I
    :goto_1
    if-eqz v11, :cond_8

    iget v7, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    .line 3911
    .local v5, "formatShortEdgePx":I
    :goto_2
    int-to-float v6, v7

    int-to-float v0, v8

    div-float/2addr v6, v0

    .line 3912
    .local v6, "aspectRatio":F
    sget-object v5, Lcom/facebook/ads/redexgen/X/10;->A13:[I

    array-length v4, v5

    :goto_3
    const/4 v1, 0x0

    if-ge v9, v4, :cond_b

    aget v3, v5, v9

    .line 3913
    .local v10, "longEdgePx":I
    int-to-float v0, v3

    mul-float/2addr v0, v6

    float-to-int v2, v0

    .line 3914
    .local v11, "shortEdgePx":I
    if-le v3, v8, :cond_0

    if-gt v2, v7, :cond_1

    .line 3915
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local p3
    .restart local p4
    :cond_0
    return-object v1

    .line 3916
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_4

    .line 3917
    if-eqz v11, :cond_3

    move v0, v2

    .line 3918
    :goto_4
    if-eqz v11, :cond_2

    .line 3919
    :goto_5
    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/B3;->A0N(II)Landroid/graphics/Point;

    move-result-object v10

    .line 3920
    .local v9, "alignedSize":Landroid/graphics/Point;
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    .line 3921
    .local p0, "frameRate":F
    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    .end local v5
    .end local v6
    .local p3, "formatShortEdgePx":I
    .local p4, "aspectRatio":F
    float-to-double v0, v0

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/B3;->A0R(IID)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3922
    return-object v10

    .line 3923
    :cond_2
    move v3, v2

    goto :goto_5

    .line 3924
    :cond_3
    move v0, v3

    goto :goto_4

    .line 3925
    .end local p3
    .end local p4
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "aspectRatio":F
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local p3
    .restart local p4
    :cond_4
    const/16 v1, 0x10

    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v0

    mul-int/lit8 v3, v0, 0x10

    .line 3926
    .end local v10    # "longEdgePx":I
    .local v6, "longEdgePx":I
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x10

    .line 3927
    .end local v11    # "shortEdgePx":I
    .local v9, "shortEdgePx":I
    mul-int v1, v3, v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ba;->A00()I

    move-result v0

    if-gt v1, v0, :cond_7

    .line 3928
    if-eqz v11, :cond_6

    move v1, v2

    .line 3929
    :goto_6
    if-eqz v11, :cond_5

    :goto_7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 3930
    return-object v0

    .line 3931
    :cond_5
    move v3, v2

    goto :goto_7

    .line 3932
    :cond_6
    move v1, v3

    goto :goto_6

    .line 3933
    .end local v6    # "longEdgePx":I
    .end local v9    # "shortEdgePx":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3934
    :cond_8
    iget v7, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    goto :goto_2

    .line 3935
    :cond_9
    iget v8, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    goto :goto_1

    .line 3936
    :cond_a
    const/4 v11, 0x0

    goto :goto_0

    .line 3937
    .end local v10
    .end local v11
    .end local p3
    .end local p4
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "longEdgePx":I
    :cond_b
    return-object v1
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/Fm;ZI)Landroid/media/MediaFormat;
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D64704257: Adding a new param to control AI FRC"
    .end annotation

    .line 3938
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 3939
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x5b6

    const/4 v1, 0x4

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3940
    const/16 v2, 0x6db

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3941
    const/16 v2, 0x51b

    const/4 v1, 0x6

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3942
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4i;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 3943
    const/16 v2, 0x506

    const/16 v1, 0xa

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A03(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 3944
    const/16 v2, 0x60c

    const/16 v1, 0x10

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3945
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4i;->A02(Landroid/media/MediaFormat;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)V

    .line 3946
    const/16 v2, 0x5a7

    const/16 v1, 0x9

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3947
    const/16 v2, 0x58f

    const/16 v1, 0xa

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Fm;->A00:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3948
    const/16 v2, 0x599

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Fm;->A01:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4i;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3949
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    const/4 v4, 0x0

    if-lt v1, v0, :cond_0

    .line 3950
    const/16 v2, 0x5f1

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "2RIBJj1oBKSBZdAo5SnKQdQzGU6CRjTj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3951
    :cond_0
    if-eqz p3, :cond_1

    .line 3952
    const/16 v2, 0x495

    const/16 v1, 0x8

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3953
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/is;->A03(Lcom/facebook/ads/redexgen/X/jQ;Landroid/media/MediaFormat;)V

    .line 3954
    if-eqz p4, :cond_2

    .line 3955
    invoke-static {v3, p4}, Lcom/facebook/ads/redexgen/X/10;->A0T(Landroid/media/MediaFormat;I)V

    .line 3956
    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/10;Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;I)Lcom/facebook/ads/redexgen/X/AD;
    .locals 0

    .line 3957
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AE;->A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;I)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object p0

    return-object p0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;[Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/Fm;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 3958
    iget v5, p2, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    .line 3959
    .local v0, "maxWidth":I
    iget v4, p2, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    .line 3960
    .local v1, "maxHeight":I
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/10;->A00(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v3

    .line 3961
    .local v2, "maxInputSize":I
    array-length v1, p3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 3962
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fm;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Fm;-><init>(III)V

    return-object v0

    .line 3963
    :cond_0
    const/4 v10, 0x0

    .line 3964
    .local v3, "haveUnknownDimensions":Z
    array-length v7, p3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v8, p3, v6

    .line 3965
    .local v8, "streamFormat":Lcom/facebook/ads/redexgen/X/qI;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A04:Z

    invoke-static {v0, p2, v8}, Lcom/facebook/ads/redexgen/X/10;->A0v(ZLcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3966
    iget v0, v8, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    or-int/2addr v10, v0

    .line 3967
    iget v9, v8, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "vHVCHU2tj4jzHHyhZwddXygsl3jVFph7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3968
    iget v0, v8, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3969
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/10;->A00(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3970
    .end local v8    # "streamFormat":Lcom/facebook/ads/redexgen/X/qI;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3971
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3972
    :cond_5
    if-eqz v10, :cond_6

    .line 3973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x399

    const/16 v1, 0x2b

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x6ef

    const/4 v1, 0x1

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 3974
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/10;->A07(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;)Landroid/graphics/Point;

    move-result-object v1

    .line 3975
    .local v4, "codecMaxSize":Landroid/graphics/Point;
    if-eqz v1, :cond_6

    .line 3976
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3977
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3978
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 3979
    invoke-static {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/10;->A02(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3980
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf6

    const/16 v1, 0x22

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    .end local v4    # "codecMaxSize":Landroid/graphics/Point;
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fm;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Fm;-><init>(III)V

    return-object v0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A11:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BT;",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B3;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 3982
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3983
    .local v0, "alternativeMediaCodecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ba;->A0P(Lcom/facebook/ads/redexgen/X/qI;)Ljava/lang/String;

    move-result-object v1

    .line 3984
    .local v1, "alternativeMimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3985
    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/BT;->A7o(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 3986
    .local v2, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_0

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 3987
    const/16 v2, 0x680

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3988
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3989
    move-object v5, v4

    .line 3990
    .end local v2    # "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    :cond_0
    return-object v5
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BT;",
            "Lcom/facebook/ads/redexgen/X/qI;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B3;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 3991
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 3992
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3993
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3994
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/BT;->A7o(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3995
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A0E()V
    .locals 2

    .line 3996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    .line 3997
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    if-eqz v0, :cond_0

    .line 3998
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v1

    .line 3999
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/B0;
    if-eqz v1, :cond_0

    .line 4000
    new-instance v0, Lcom/facebook/ads/redexgen/X/n5;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/n5;-><init>(Lcom/facebook/ads/redexgen/X/10;Lcom/facebook/ads/redexgen/X/B0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/n5;

    .line 4001
    .end local v0    # "codec":Lcom/facebook/ads/redexgen/X/B0;
    :cond_0
    return-void
.end method

.method private A0F()V
    .locals 2

    .line 4002
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0G:I

    .line 4003
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0E:I

    .line 4004
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A03:F

    .line 4005
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0F:I

    .line 4006
    return-void
.end method

.method private A0G()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "need for SR to release EGL context"
    .end annotation

    .line 4007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A1t:Lcom/facebook/ads/redexgen/X/jX;

    .line 4008
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0A()V

    const/4 v0, 0x0

    throw v0

    .line 4010
    :cond_0
    return-void
.end method

.method private A0H()V
    .locals 4

    .line 4011
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0m:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0m:I

    if-lt v1, v0, :cond_0

    .line 4012
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0I:J

    sub-long/2addr v2, v0

    .line 4013
    .local v0, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/GP;->A00(IJ)V

    .line 4014
    .end local v0    # "elapsedMs":J
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    .line 4015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0I:J

    .line 4016
    return-void
.end method

.method private A0I()V
    .locals 2

    .line 4017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v1

    .line 4018
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/B0;
    if-nez v1, :cond_0

    .line 4019
    return-void

    .line 4020
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0c:Z

    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/B0;->A9K()I

    move-result v1

    const/16 v0, 0x1e

    if-le v1, v0, :cond_1

    .line 4021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/10;->A0V(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 4022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0c:Z

    .line 4023
    :cond_1
    return-void
.end method

.method private A0J()V
    .locals 6

    .line 4024
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    if-lez v0, :cond_0

    .line 4025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4026
    .local v0, "now":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0J:J

    sub-long v2, v4, v0

    .line 4027
    .local v2, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/GP;->A01(IJ)V

    .line 4028
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    .line 4029
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0J:J

    .line 4030
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_0
    return-void
.end method

.method private A0K()V
    .locals 6

    .line 4031
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0G:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0E:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0F:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A07:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A03:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 4032
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/10;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/pW;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/pW;-><init>(IIIF)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/GP;->A07(Lcom/facebook/ads/redexgen/X/pW;)V

    .line 4033
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0G:I

    .line 4034
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0E:I

    .line 4035
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0F:I

    .line 4036
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A03:F

    .line 4037
    :cond_2
    return-void
.end method

.method private A0L()V
    .locals 2

    .line 4038
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    if-eqz v0, :cond_0

    .line 4039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A0D(Ljava/lang/Object;)V

    .line 4040
    :cond_0
    return-void
.end method

.method private A0M()V
    .locals 6

    .line 4041
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0E:I

    if-eq v0, v1, :cond_1

    .line 4042
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0G:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0E:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0F:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A03:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/pW;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/pW;-><init>(IIIF)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/GP;->A07(Lcom/facebook/ads/redexgen/X/pW;)V

    .line 4043
    :cond_1
    return-void
.end method

.method private A0N()V
    .locals 5

    .line 4044
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0p:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 4045
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0p:J

    add-long/2addr v2, v0

    .line 4046
    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    .line 4047
    return-void

    .line 4048
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A0O()V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 4049
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6I;->A03(J)V

    .line 4050
    return-void
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x6f0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/10;->A11:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x65t
        0x5ft
        0x60t
        0x60t
        0x66t
        0x60t
        0x62t
        0x5ct
        0x62t
        0x5ct
        0x5ft
        -0x40t
        -0x50t
        -0x51t
        -0x54t
        -0x4at
        -0x51t
        -0x3bt
        -0x4at
        -0x5at
        -0x5bt
        -0x5et
        -0x54t
        -0x5bt
        -0x3ft
        -0x6at
        -0x7at
        -0x75t
        -0x7bt
        -0x7at
        0x4ft
        0x40t
        0x3et
        0x3ft
        0x44t
        0x6ft
        0x42t
        0x3et
        0x58t
        0x4et
        0x47t
        0x47t
        0x47t
        0x44t
        0x78t
        -0x71t
        -0x7bt
        0x7et
        0x7et
        0x7et
        -0x42t
        -0x46t
        -0x3dt
        -0x3ft
        -0x7at
        0x7ct
        0x75t
        0x76t
        0x75t
        -0x5at
        0x79t
        0x7dt
        0x69t
        0x5ft
        0x58t
        0x5at
        0x58t
        -0x77t
        0x5ct
        0x60t
        -0x4dt
        -0x48t
        -0x3at
        -0x4dt
        0x5dt
        0x62t
        0x70t
        0x6at
        -0x7bt
        -0x69t
        -0x67t
        -0x69t
        -0x5dt
        -0x64t
        0x74t
        0x74t
        -0x7bt
        -0x78t
        0x63t
        0x75t
        0x77t
        0x75t
        -0x7ft
        0x7at
        0x52t
        0x52t
        0x63t
        0x66t
        0x63t
        0x5ft
        0x71t
        0x73t
        0x71t
        0x7dt
        0x76t
        0x4et
        0x4et
        0x5ft
        0x62t
        0x61t
        0x4et
        0x60t
        0x62t
        0x60t
        0x6ct
        0x65t
        0x3dt
        0x3dt
        0x4et
        0x51t
        0x6ct
        0x3ft
        -0x79t
        -0x4ct
        -0x56t
        -0x48t
        -0x4bt
        -0x4dt
        -0x59t
        -0x42t
        0x66t
        -0x79t
        0x78t
        0x7ct
        -0x77t
        0x7at
        -0x72t
        0x4et
        0x7et
        -0x7et
        0x6et
        0x5dt
        0x7ct
        -0x7ct
        0x72t
        0x7ft
        0x5at
        -0x47t
        -0x15t
        -0x13t
        -0x15t
        -0x29t
        -0x2et
        -0x46t
        -0x53t
        -0x58t
        -0x58t
        -0x3dt
        -0x3ct
        -0x4ct
        -0x18t
        -0x1bt
        -0x2ct
        -0x2et
        -0x3ft
        -0x1et
        -0x19t
        -0x28t
        -0x2et
        -0x5bt
        -0x41t
        -0x37t
        -0x42t
        -0x40t
        -0x38t
        -0x56t
        -0x52t
        -0x2bt
        -0x43t
        -0x33t
        -0x44t
        -0x2ft
        -0x3ct
        -0x44t
        -0x65t
        -0x51t
        -0x3at
        -0x65t
        -0x53t
        -0x55t
        -0x54t
        -0x50t
        0x7ft
        -0x71t
        0x7et
        -0x6dt
        -0x7at
        0x7et
        -0x64t
        0x7et
        -0x6ft
        -0x6dt
        0x6ft
        -0x6ct
        -0x5ct
        -0x6dt
        -0x58t
        -0x65t
        -0x6dt
        -0x4ft
        -0x6dt
        -0x5at
        -0x58t
        -0x7bt
        -0x4ft
        -0x7at
        -0x63t
        -0x59t
        -0x6bt
        -0x7bt
        -0x6et
        0x7at
        0x78t
        0x79t
        0x78t
        -0x5ft
        -0x75t
        0x72t
        0x74t
        0x76t
        -0x7dt
        0x7bt
        0x64t
        0x69t
        0x63t
        0x6ct
        0x6at
        0x77t
        -0x80t
        0x5ft
        0x5at
        -0x7at
        0x70t
        0x57t
        0x57t
        0x55t
        -0x7ft
        0x76t
        0x77t
        0x75t
        0x32t
        0x7ft
        0x73t
        -0x76t
        0x32t
        -0x7ct
        0x77t
        -0x7bt
        -0x7ft
        0x7et
        -0x79t
        -0x7at
        0x7bt
        -0x7ft
        -0x80t
        0x32t
        0x73t
        0x76t
        0x7ct
        -0x79t
        -0x7bt
        -0x7at
        0x77t
        0x76t
        0x32t
        -0x7at
        -0x7ft
        0x4ct
        0x32t
        -0x47t
        -0x1bt
        -0x1dt
        -0x21t
        -0x1bt
        -0x37t
        -0x59t
        -0x7et
        0x72t
        0x73t
        0x71t
        0x70t
        -0x67t
        -0x60t
        -0x57t
        -0x65t
        -0x6bt
        -0x4dt
        -0x6bt
        -0x79t
        -0x4dt
        -0x5ct
        -0x3at
        -0x3dt
        -0x3bt
        -0x34t
        -0x2bt
        -0x39t
        -0x3ft
        -0x21t
        -0x32t
        -0x11t
        -0xct
        -0x1bt
        -0x36t
        -0x2ft
        -0x26t
        -0x34t
        -0x3at
        -0x1ct
        -0x2bt
        -0x9t
        -0x12t
        -0xet
        0x4dt
        0x54t
        0x5dt
        0x4ft
        0x49t
        0x67t
        0x5at
        0x69t
        -0x7ft
        0x67t
        0x60t
        -0x5dt
        -0x2ct
        -0x3dt
        -0x30t
        -0x4ft
        -0x2et
        -0x41t
        -0x30t
        -0x43t
        -0x4ft
        -0x3et
        -0x51t
        -0x53t
        -0x53t
        -0x53t
        -0x4ct
        -0x5ft
        -0x61t
        -0x61t
        -0x5ft
        0x6ft
        0x5ct
        0x5at
        0x5at
        0x5ft
        0x5at
        0x47t
        0x46t
        0x45t
        0x45t
        0x4et
        0x3bt
        0x3at
        0x39t
        0x3bt
        -0x6at
        -0x7dt
        -0x7et
        -0x7ft
        -0x7bt
        0x54t
        0x41t
        0x41t
        0x3ft
        0x3ft
        -0x6bt
        -0x50t
        -0x45t
        -0x3et
        -0x4ct
        -0x6et
        -0x49t
        -0x4ct
        -0x4et
        -0x46t
        0x6ft
        -0x56t
        -0x45t
        -0x4ct
        -0x4at
        -0x50t
        -0x4et
        -0x38t
        -0x6bt
        -0x3ft
        -0x50t
        -0x44t
        -0x4ct
        -0x5et
        -0x48t
        -0x37t
        -0x4ct
        0x7bt
        0x6ft
        0x5et
        0x60t
        0x66t
        0x65t
        0x5ct
        0x5ct
        0x76t
        0x5et
        0x59t
        0x63t
        0x4et
        0x4at
        0x4dt
        0x47t
        -0x62t
        -0x60t
        -0x5at
        -0x5bt
        -0x64t
        -0x64t
        -0x4at
        -0x56t
        -0x52t
        -0x52t
        -0x78t
        -0x73t
        -0x79t
        -0x70t
        -0x5bt
        -0x59t
        -0x53t
        -0x54t
        -0x5dt
        -0x5dt
        -0x43t
        -0x4ft
        -0x4bt
        -0x4bt
        -0x71t
        -0x6ct
        -0x70t
        -0x6bt
        0x65t
        0x67t
        0x6dt
        0x6ct
        0x63t
        0x63t
        0x7dt
        0x71t
        0x75t
        0x75t
        0x4ft
        0x54t
        0x51t
        0x4ft
        -0x71t
        -0x6ft
        -0x69t
        -0x6at
        -0x73t
        -0x73t
        -0x59t
        -0x61t
        -0x76t
        -0x6ct
        0x7dt
        0x7ft
        0x78t
        -0x80t
        0x66t
        0x68t
        0x6et
        0x6dt
        0x64t
        0x64t
        0x7et
        0x76t
        0x61t
        0x6bt
        0x56t
        0x52t
        0x55t
        0x54t
        -0x76t
        -0x74t
        -0x6et
        -0x6ft
        -0x78t
        -0x78t
        -0x5et
        -0x66t
        -0x7bt
        -0x71t
        0x7at
        0x78t
        0x74t
        0x7ct
        -0x69t
        -0x47t
        -0x61t
        -0x62t
        -0x6bt
        -0x6bt
        -0x51t
        -0x6dt
        -0x6et
        -0x64t
        -0x79t
        -0x7bt
        -0x7ft
        -0x7dt
        -0x68t
        -0x46t
        -0x60t
        -0x61t
        -0x6at
        -0x6at
        -0x50t
        -0x68t
        -0x6dt
        -0x63t
        -0x78t
        -0x7ct
        -0x7et
        -0x76t
        0x63t
        0x70t
        0x5ct
        0x72t
        0x60t
        0x64t
        0x3bt
        0x69t
        0x73t
        0x6ft
        0x48t
        0x67t
        0x4dt
        0x54t
        0x72t
        -0x7ft
        0x6ct
        0x76t
        0x78t
        0x57t
        0x72t
        -0x7dt
        -0x6et
        0x7et
        0x7ct
        -0x78t
        0x68t
        -0x7dt
        0x51t
        0x60t
        0x4et
        0x56t
        0x55t
        -0x61t
        -0x52t
        -0x53t
        -0x5bt
        -0x56t
        -0x7ct
        -0x61t
        -0x6dt
        -0x5et
        -0x5et
        -0x74t
        -0x62t
        0x78t
        -0x6dt
        -0x59t
        -0x34t
        -0x3ct
        -0x39t
        -0x34t
        -0x39t
        -0x2at
        -0x75t
        -0x4at
        -0x6dt
        -0x6bt
        -0x70t
        0x5dt
        0x5at
        0x6dt
        -0x51t
        -0x48t
        -0x4dt
        -0x6et
        -0x4ft
        -0x69t
        -0x6at
        -0x46t
        -0x5ct
        -0x61t
        -0x30t
        -0x5dt
        -0x61t
        0x67t
        0x62t
        0x48t
        0x66t
        0x4ft
        0x4et
        0x4bt
        0x7at
        0x75t
        0x5bt
        0x7bt
        0x60t
        0x63t
        0x5et
        0x63t
        0x6at
        0x44t
        0x4ct
        0x47t
        0x48t
        0x4et
        -0x45t
        -0x2ct
        -0x23t
        -0x22t
        -0x1bt
        -0x22t
        -0x71t
        -0x50t
        -0x5ft
        -0x61t
        -0x60t
        -0x5bt
        -0x2ft
        -0x5et
        -0x61t
        0x7dt
        -0x6at
        -0x61t
        -0x60t
        -0x59t
        -0x60t
        0x51t
        0x7ct
        0x62t
        0x61t
        -0x6et
        0x65t
        0x61t
        -0x38t
        -0x1ft
        -0x16t
        -0x15t
        -0xet
        -0x15t
        -0x64t
        -0x39t
        -0x4ct
        0x75t
        0x5dt
        -0x75t
        0x76t
        0x6et
        0x72t
        -0x7dt
        0x7et
        -0x78t
        0x76t
        0x5et
        0x67t
        0x72t
        0x50t
        0x54t
        0x6ct
        0x6bt
        0x70t
        0x68t
        0x4at
        0x76t
        0x6bt
        0x6ct
        0x6at
        0x5dt
        0x70t
        0x6bt
        0x6ct
        0x76t
        0x59t
        0x6ct
        0x75t
        0x6bt
        0x6ct
        0x79t
        0x6ct
        0x79t
        -0x5at
        -0x38t
        -0x33t
        -0x38t
        -0x62t
        -0x75t
        -0x7ft
        -0x73t
        -0x60t
        -0x7at
        -0x5bt
        -0x53t
        -0x62t
        -0x7et
        0x7dt
        -0x61t
        -0x5ct
        -0x61t
        0x77t
        0x63t
        -0x53t
        -0x4bt
        -0x58t
        -0x5dt
        -0x58t
        -0x60t
        0x55t
        0x5ft
        0x3ct
        0x3bt
        0x38t
        0x51t
        -0x63t
        -0x59t
        -0x7ct
        -0x7at
        -0x7et
        -0x67t
        -0x6dt
        -0x6ft
        -0x64t
        0x72t
        -0x55t
        -0x4dt
        -0x4dt
        -0x55t
        -0x50t
        -0x57t
        -0x55t
        -0x36t
        -0x3ft
        -0x54t
        -0x38t
        -0x2ft
        -0x31t
        -0x6ft
        -0x50t
        -0x33t
        -0x4dt
        -0x4bt
        -0x52t
        0x7et
        0x66t
        0x63t
        0x5bt
        0x4dt
        0x3dt
        0x38t
        0x41t
        0x42t
        0x3bt
        0x58t
        0x76t
        0x6dt
        0x74t
        0x5bt
        0x58t
        0x5et
        -0x58t
        -0x61t
        -0x5at
        -0x72t
        -0x77t
        -0x78t
        -0x7dt
        0x7at
        -0x7ft
        0x69t
        0x64t
        0x64t
        -0x4ct
        -0x50t
        -0x57t
        0x79t
        0x7bt
        0x78t
        0x60t
        0x7ct
        -0x47t
        -0x2ft
        -0x36t
        -0x29t
        -0x23t
        -0x28t
        -0x2at
        -0x61t
        -0x6bt
        -0x52t
        -0x43t
        -0x56t
        -0x4ft
        0x65t
        -0x5bt
        -0x42t
        -0x33t
        -0x42t
        -0x77t
        -0x7et
        -0x74t
        -0x4ct
        -0x78t
        -0x64t
        -0x51t
        -0x38t
        -0x29t
        -0x38t
        -0x6ct
        -0x74t
        -0x70t
        -0x71t
        -0x42t
        -0x6dt
        -0x5at
        0x7bt
        0x5dt
        0x5ft
        0x5at
        -0x45t
        -0x62t
        -0x64t
        -0x60t
        -0x66t
        -0x67t
        0x7ct
        0x7at
        0x7ft
        0x6bt
        0x4et
        0x4dt
        0x4bt
        0x4at
        -0x7et
        0x66t
        0x7ct
        0x78t
        0x5ct
        0x61t
        -0x7dt
        0x70t
        -0x76t
        -0x80t
        -0x7bt
        -0x74t
        0x65t
        -0x32t
        -0x1ft
        -0x20t
        -0x17t
        -0x1bt
        -0x64t
        -0x50t
        -0x2ct
        -0x4ft
        -0x3ct
        -0x3dt
        -0x34t
        -0x38t
        0x7ft
        -0x53t
        -0x32t
        -0x2dt
        -0x3ct
        0x7ft
        -0x6ft
        0x71t
        -0x7ct
        -0x7dt
        -0x74t
        -0x78t
        0x3ft
        0x6dt
        -0x72t
        -0x6dt
        -0x7ct
        0x3ft
        0x52t
        -0x69t
        -0x56t
        -0x4dt
        -0x57t
        -0x56t
        -0x49t
        0x65t
        -0x4ct
        -0x46t
        -0x47t
        -0x4bt
        -0x46t
        -0x47t
        0x65t
        -0x55t
        -0x5at
        -0x52t
        -0x4ft
        -0x56t
        -0x57t
        -0x4et
        -0x3bt
        -0x2dt
        -0x31t
        -0x34t
        -0x2bt
        -0x2ct
        -0x37t
        -0x31t
        -0x32t
        -0x2dt
        -0x80t
        -0x2bt
        -0x32t
        -0x35t
        -0x32t
        -0x31t
        -0x29t
        -0x32t
        -0x72t
        -0x80t
        -0x5dt
        -0x31t
        -0x3ct
        -0x3bt
        -0x3dt
        -0x80t
        -0x33t
        -0x3ft
        -0x28t
        -0x80t
        -0x2et
        -0x3bt
        -0x2dt
        -0x31t
        -0x34t
        -0x2bt
        -0x2ct
        -0x37t
        -0x31t
        -0x32t
        -0x66t
        -0x80t
        -0x77t
        -0x7dt
        0x63t
        0x7dt
        0x6ft
        0x69t
        0x6bt
        0x66t
        -0x5at
        -0x60t
        -0x80t
        -0x63t
        -0x7bt
        -0x7dt
        -0x7dt
        -0x66t
        -0x58t
        -0x53t
        -0x59t
        -0x79t
        -0x5ct
        -0x74t
        -0x76t
        -0x76t
        -0x59t
        -0x76t
        -0x7ct
        0x64t
        -0x7bt
        0x70t
        0x68t
        0x67t
        -0x77t
        0x6bt
        0x7et
        -0x80t
        0x72t
        0x6ct
        0x7dt
        0x4bt
        0x7et
        0x64t
        -0x3et
        -0x3bt
        -0x41t
        -0x64t
        -0x4dt
        -0x3dt
        -0x3bt
        -0x60t
        -0x5ct
        0x76t
        -0x71t
        -0x7ct
        -0x69t
        -0x78t
        -0x7et
        0x73t
        -0x6bt
        -0x6et
        -0x2at
        -0xet
        -0xft
        -0x4t
        -0x5dt
        -0x29t
        -0x1ct
        -0x1bt
        -0x11t
        -0x18t
        -0x9t
        -0x5dt
        -0x2at
        0x7et
        0x6ct
        0x5dt
        0x57t
        0x61t
        0x5dt
        0x5at
        0x70t
        0x7et
        0x6ct
        0x5dt
        0x57t
        0x61t
        0x5dt
        0x5at
        -0x7et
        -0x48t
        -0x5at
        -0x69t
        -0x6ft
        -0x64t
        -0x67t
        -0x6ct
        -0x56t
        -0x74t
        0x7at
        0x6bt
        0x65t
        0x70t
        0x6dt
        0x68t
        -0x7bt
        -0x4dt
        -0x32t
        -0x32t
        0x7ft
        -0x34t
        -0x40t
        -0x33t
        -0x28t
        0x7ft
        -0x2et
        -0x2dt
        -0x2ft
        -0x3ct
        -0x40t
        -0x34t
        0x7ft
        -0x3et
        -0x39t
        -0x40t
        -0x33t
        -0x3at
        -0x3ct
        -0x2et
        -0x75t
        0x7ft
        -0x2et
        -0x32t
        0x7ft
        -0x3dt
        -0x2ft
        -0x32t
        -0x31t
        -0x31t
        -0x38t
        -0x33t
        -0x3at
        0x7ft
        -0x32t
        -0x3bt
        -0x3bt
        -0x2et
        -0x3ct
        -0x2dt
        -0x67t
        0x7ft
        -0x59t
        -0x7et
        0x6bt
        0x47t
        0x48t
        0x5ct
        0x57t
        0x70t
        0x4ft
        0x75t
        0x72t
        0x57t
        0x57t
        0x4ft
        -0x49t
        -0x6et
        -0x42t
        -0x59t
        -0x56t
        0x61t
        0x4et
        0x3bt
        0x61t
        -0x26t
        -0x2at
        -0x4dt
        -0x48t
        -0x48t
        -0x4bt
        -0x52t
        -0x7bt
        -0x7at
        -0x4dt
        -0x5ct
        -0x5at
        -0x5dt
        -0x5at
        -0x7ct
        0x7ct
        -0x5ct
        -0x53t
        0x70t
        -0x55t
        -0x65t
        -0x51t
        -0x62t
        -0x5dt
        -0x57t
        0x67t
        -0x53t
        -0x61t
        -0x53t
        -0x53t
        -0x5dt
        -0x57t
        -0x58t
        0x67t
        -0x5dt
        -0x62t
        0x78t
        -0x74t
        -0x75t
        -0x7at
        0x44t
        0x7dt
        -0x77t
        0x7at
        -0x5ct
        0x73t
        0x6ft
        -0x5et
        -0x51t
        -0x5bt
        -0x4dt
        -0x50t
        -0x56t
        -0x5bt
        0x6ft
        -0x5et
        -0x49t
        0x72t
        0x6et
        -0x5bt
        -0x5et
        -0x49t
        0x72t
        -0x5bt
        0x6ft
        -0x5bt
        -0x5at
        -0x5ct
        -0x50t
        -0x5bt
        -0x5at
        -0x4dt
        -0x18t
        -0x9t
        -0xct
        -0xbt
        -0x4et
        -0x19t
        -0xct
        -0x7t
        -0x7t
        -0xct
        -0xet
        0x6ct
        0x7bt
        0x78t
        0x79t
        0x36t
        0x75t
        0x6et
        0x6ft
        0x7dt
        -0x30t
        -0x21t
        -0x24t
        -0x23t
        -0x66t
        -0x21t
        -0x2at
        -0x2ct
        -0x2bt
        -0x1ft
        -0x5ft
        -0x50t
        -0x53t
        -0x52t
        0x6bt
        -0x4et
        -0x53t
        -0x52t
        -0x1ct
        -0x9t
        -0x4et
        0x6et
        -0x7ft
        0x3et
        -0x33t
        -0x36t
        -0x29t
        -0x30t
        -0x36t
        -0x2bt
        -0x34t
        -0x33t
        -0x36t
        -0x17t
        -0x9t
        -0xct
        -0xbt
        -0x25t
        -0x12t
        -0x17t
        -0x16t
        -0xct
        -0x39t
        -0x6t
        -0x15t
        -0x15t
        -0x16t
        -0x9t
        0x72t
        0x78t
        0x7bt
        -0x3ct
        -0x33t
        -0x2ft
        -0x2et
        -0x3dt
        -0x30t
        -0x26t
        -0x1at
        -0x2bt
        -0x1ft
        -0x27t
        -0x5ft
        -0x1at
        -0x2bt
        -0x18t
        -0x27t
        -0x35t
        -0x26t
        -0x34t
        -0x26t
        -0x37t
        -0x2ct
        -0x35t
        -0x38t
        -0x38t
        -0x35t
        -0x30t
        -0x48t
        -0x4bt
        -0x47t
        -0x49t
        -0x48t
        -0x3ct
        -0x41t
        -0x35t
        -0x46t
        -0x4at
        -0x44t
        -0x74t
        -0x73t
        -0x3ct
        -0x3dt
        -0x4at
        -0x45t
        -0x35t
        -0x34t
        -0x3dt
        -0x51t
        -0x42t
        -0x78t
        -0x6dt
        -0x74t
        0x74t
        -0x71t
        -0x5et
        0x72t
        0x69t
        0x6ct
        0x6at
        0x73t
        0x6ct
        0x6bt
        0x76t
        0x76t
        0x42t
        0x41t
        0x3dt
        0x3ft
        0x69t
        0x43t
        0x42t
        0x3at
        0x40t
        -0x2et
        -0x25t
        -0x2et
        -0x24t
        -0x61t
        -0x67t
        -0x34t
        -0x29t
        -0x38t
        -0x31t
        -0x3et
        -0x4at
        -0x69t
        -0x6ct
        -0x68t
        0x60t
        -0x5at
        -0x66t
        -0x5et
        -0x6dt
        -0x69t
        -0x64t
        -0x5ft
        -0x5ft
        -0x69t
        -0x56t
        -0x65t
        -0x65t
        0x64t
        0x63t
        0x65t
        0x5ft
        0x78t
        0x71t
        0x6bt
        -0x7ct
        0x42t
        -0x41t
        -0x3et
        -0x36t
        -0x80t
        -0x41t
        -0x4ct
        -0x39t
        -0x48t
        -0x3ft
        -0x4at
        -0x34t
        -0x38t
        -0x73t
        0x7bt
        -0x37t
        -0x36t
        -0x31t
        -0x40t
        0x7dt
        0x71t
        0x7et
        0x7et
        0x79t
        0x7et
        0x77t
        -0x11t
        -0x1dt
        -0xct
        -0x15t
        -0x10t
        -0xft
        -0x1ft
        -0x18t
        -0x73t
        -0x7ft
        -0x68t
        0x4dt
        -0x78t
        -0x7bt
        -0x77t
        -0x79t
        -0x78t
        -0x6ct
        -0x1bt
        -0x27t
        -0x10t
        -0x5bt
        -0x1ft
        -0x1at
        -0x18t
        -0x13t
        -0x14t
        -0x5bt
        -0x15t
        -0x1ft
        -0xet
        -0x23t
        0x75t
        0x69t
        -0x80t
        0x35t
        0x7ft
        0x71t
        0x6ct
        0x7ct
        0x70t
        0x7ct
        0x77t
        -0x4bt
        -0x4ft
        -0x54t
        -0x49t
        -0x39t
        -0x3dt
        -0x39t
        -0x41t
        -0x66t
        -0x73t
        -0x67t
        -0x73t
        -0x60t
        -0x6ct
        -0x6et
        -0x73t
        -0x79t
        -0x71t
        -0x70t
        -0x7bt
        -0x67t
        -0x69t
        -0x7dt
        -0x76t
        -0x59t
        0x69t
        0x68t
        0x69t
        -0x71t
        -0x80t
        -0x73t
        -0x7ct
        -0x75t
        -0x75t
        0x7et
        -0x7dt
        -0x4at
        -0x59t
        -0x4ct
        -0x55t
        -0x4et
        -0x4et
        -0x5bt
        -0x56t
        -0x4et
        -0x12t
        -0x21t
        -0x14t
        -0x1dt
        -0x16t
        -0x16t
        -0x23t
        -0x1et
        -0xft
        -0x5bt
        -0x6at
        -0x5dt
        -0x66t
        -0x5ft
        -0x5ft
        -0x6ct
        -0x67t
        -0x57t
        -0x18t
        -0x16t
        -0x1ft
        -0x19t
        -0x16t
        -0x1ft
        -0x14t
        -0xft
        -0x54t
        -0x61t
        -0x5at
        -0x61t
        -0x65t
        -0x53t
        -0x61t
        -0x77t
        -0x51t
        -0x52t
        -0x56t
        -0x51t
        -0x52t
        0x7ct
        -0x51t
        -0x60t
        -0x60t
        -0x61t
        -0x54t
        -0x80t
        0x7dt
        -0x7et
        0x6ft
        -0x7et
        0x77t
        0x7dt
        0x7ct
        0x3bt
        0x72t
        0x73t
        0x75t
        -0x80t
        0x73t
        0x73t
        -0x7ft
        -0x6bt
        0x5bt
        0x52t
        0x57t
        -0x66t
        0x52t
        0x53t
        0x5at
        -0x3at
        -0x4ct
        -0x3ft
        -0x39t
        -0x3et
        -0x3ft
        -0x44t
        -0x69t
        -0x71t
        -0x73t
        -0x6ct
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x66t
        -0x67t
        -0x76t
        -0x76t
        -0x77t
        -0x6at
        -0xet
        -0x21t
        -0x19t
        -0x1et
        -0x13t
        -0x23t
        -0x10t
        -0x13t
        -0xbt
        -0x77t
        0x78t
        -0x7ft
        0x74t
        0x7at
        -0x76t
        -0x54t
        -0x53t
        -0x5at
        -0x5at
        -0x63t
        -0x5ct
        -0x63t
        -0x64t
        0x65t
        -0x58t
        -0x5ct
        -0x67t
        -0x4ft
        -0x66t
        -0x67t
        -0x65t
        -0x5dt
        -0x5at
        -0x6bt
        -0x5et
        -0x62t
        -0x6bt
        -0x6bt
        -0x71t
        0x7dt
        0x65t
        -0x36t
        -0x43t
        -0x48t
        -0x47t
        -0x3dt
        -0x7dt
        -0x79t
        -0x45t
        -0x3ct
        -0x3ct
        -0x56t
        -0x63t
        -0x68t
        -0x67t
        -0x5dt
        0x63t
        -0x6bt
        -0x56t
        0x64t
        0x65t
        -0x28t
        -0x35t
        -0x3at
        -0x39t
        -0x2ft
        -0x6ft
        -0x3dt
        -0x28t
        -0x3bt
        -0x7ct
        0x77t
        0x72t
        0x73t
        0x7dt
        0x3dt
        0x72t
        0x7dt
        0x7at
        0x70t
        -0x79t
        0x3bt
        -0x7ct
        0x77t
        -0x7ft
        0x77t
        0x7dt
        0x7ct
        -0x25t
        -0x32t
        -0x37t
        -0x36t
        -0x2ct
        -0x6ct
        -0x33t
        -0x36t
        -0x25t
        -0x38t
        -0x6dt
        -0x7at
        -0x7ft
        -0x7et
        -0x74t
        0x4ct
        -0x76t
        -0x73t
        0x51t
        -0x6dt
        0x4at
        -0x7et
        -0x70t
        -0x21t
        -0x2et
        -0x33t
        -0x32t
        -0x28t
        -0x68t
        -0x1ft
        -0x6at
        -0x21t
        -0x29t
        -0x33t
        -0x69t
        -0x28t
        -0x29t
        -0x65t
        -0x69t
        -0x21t
        -0x27t
        -0x5ft
        -0x16t
        -0x23t
        -0x28t
        -0x27t
        -0x1dt
        -0x5dt
        -0x14t
        -0x5ft
        -0x16t
        -0x1et
        -0x28t
        -0x5et
        -0x1dt
        -0x1et
        -0x5at
        -0x5et
        -0x16t
        -0x1ct
        -0x53t
        -0x4ct
        -0x62t
        -0x4ft
        -0x50t
        -0x54t
        -0x55t
        -0x2at
        -0x39t
        -0x28t
        -0x2ft
        -0x3ct
        -0x3dt
        -0x33t
        -0x41t
        -0x46t
        -0x36t
        -0x42t
        -0x58t
        -0x60t
        -0x60t
        -0x6bt
        -0x5ct
        -0x70t
        -0x69t
        -0x59t
        -0x61t
        -0x61t
        -0x6ct
        -0x5dt
        -0x71t
        -0x6at
        -0x62t
        -0x2dt
    .end array-data
.end method

.method private final A0Q(I)V
    .locals 3

    .line 4051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A04:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A04:I

    .line 4052
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    .line 4053
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    .line 4054
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/6I;->A07:I

    .line 4055
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/6I;->A07:I

    .line 4056
    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0l:I

    if-lt v1, v0, :cond_0

    .line 4057
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0J()V

    .line 4058
    :cond_0
    return-void
.end method

.method private final A0R(JJF)V
    .locals 9

    .line 4059
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/2Y;->A01(J)J

    move-result-wide v0

    long-to-int v6, v0

    .line 4060
    .local v1, "positionMs":I
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/2Y;->A01(J)J

    move-result-wide v0

    long-to-int v5, v0

    .line 4061
    .local v0, "presentationGapMs":I
    const/16 v3, 0x3e8

    if-le v5, v3, :cond_1

    const/16 v0, 0x2710

    if-ge v5, v0, :cond_1

    add-int v2, v6, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    if-le v2, v1, :cond_1

    .line 4062
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    const-wide v7, 0x408f400000000000L    # 1000.0

    if-le v6, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    add-int/2addr v1, v0

    if-ge v6, v1, :cond_2

    .line 4063
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/6I;->A0E:I

    add-int v2, v6, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    add-int/2addr v1, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    mul-float/2addr v0, p5

    float-to-double v1, v0

    div-double/2addr v1, v7

    double-to-int v0, v1

    add-int/2addr v3, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/6I;->A0E:I

    .line 4064
    :cond_0
    :goto_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    .line 4065
    iput v5, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    .line 4066
    :cond_1
    return-void

    .line 4067
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    add-int/2addr v1, v0

    if-le v6, v1, :cond_0

    .line 4068
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/6I;->A0E:I

    int-to-float v0, v5

    mul-float/2addr v0, p5

    float-to-double v1, v0

    div-double/2addr v1, v7

    double-to-int v0, v1

    add-int/2addr v3, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/6I;->A0E:I

    goto :goto_0
.end method

.method private A0S(JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V
    .locals 7

    .line 4069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0X:Lcom/facebook/ads/redexgen/X/G2;

    if-eqz v0, :cond_0

    .line 4070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0X:Lcom/facebook/ads/redexgen/X/G2;

    move-object v5, p5

    move-wide v3, p3

    move-object v6, p6

    move-wide v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/G2;->AGS(JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V

    .line 4071
    :cond_0
    return-void
.end method

.method public static A0T(Landroid/media/MediaFormat;I)V
    .locals 3

    .line 4072
    const/16 v2, 0x649

    const/16 v1, 0x11

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 4073
    const/16 v2, 0x485

    const/16 v1, 0x10

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4074
    return-void
.end method

.method private A0U(Landroid/view/Surface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4075
    if-nez p1, :cond_0

    .line 4076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 4077
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    .line 4078
    .end local v0
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A0X:Lcom/facebook/ads/redexgen/X/jX;

    .line 4079
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v7

    .line 4080
    .local v0, "shouldReInitCodecUponSurfaceSetFailure":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 4081
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    .line 4082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0Q:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_5

    .line 4083
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "flDNbofxs3CTffCwMDp3s46Nt2jaxTe4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A9A()I

    move-result v2

    .line 4084
    .local v1, "state":I
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0f:Z

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->AAe()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .line 4085
    .local v2, "shouldSetJoiningDeadline":Z
    :goto_1
    const/4 v5, 0x2

    if-eq v2, v0, :cond_1

    if-ne v2, v5, :cond_9

    .line 4086
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v4

    .line 4087
    .local v6, "codec":Lcom/facebook/ads/redexgen/X/B0;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4088
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0b:Z

    if-nez v0, :cond_4

    .line 4089
    if-eqz v7, :cond_8

    goto :goto_2

    .line 4090
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 4091
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1k()Lcom/facebook/ads/redexgen/X/B3;

    move-result-object v2

    .line 4092
    .local v0, "codecInfo":Lcom/facebook/ads/redexgen/X/B3;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/10;->A0r(Lcom/facebook/ads/redexgen/X/B3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0q:Landroid/content/Context;

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/B3;->A06:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    .line 4094
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    goto :goto_0

    .line 4095
    :goto_2
    :try_start_0
    invoke-static {v4, p1}, Lcom/facebook/ads/redexgen/X/10;->A0d(Lcom/facebook/ads/redexgen/X/B0;Landroid/view/Surface;)V

    goto :goto_3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4096
    .local v7, "e":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A1n()V

    .line 4097
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1p()V

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 4098
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A1n()V

    .line 4099
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1p()V

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4100
    .end local v1    # "state":I
    .end local v2    # "shouldSetJoiningDeadline":Z
    :cond_6
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eq p1, v0, :cond_d

    .line 4101
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0M()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_7

    .line 4102
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "VhVyjLmIQ4bbJ9563iENK2u1xmxcLHgS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0L()V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0L()V

    goto :goto_4

    .line 4103
    :cond_8
    invoke-static {v4, p1}, Lcom/facebook/ads/redexgen/X/10;->A0d(Lcom/facebook/ads/redexgen/X/B0;Landroid/view/Surface;)V

    .line 4104
    .end local v6    # "codec":Lcom/facebook/ads/redexgen/X/B0;
    :cond_9
    :goto_3
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eq p1, v0, :cond_e

    .line 4105
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0M()V

    .line 4106
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0E()V

    .line 4107
    if-eq v2, v5, :cond_a

    if-eqz v6, :cond_b

    .line 4108
    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0N()V

    .line 4109
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4110
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A0j:Lcom/facebook/ads/redexgen/X/jX;

    .line 4111
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    .line 4112
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A00(Lcom/facebook/ads/redexgen/X/Fo;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    .line 4113
    .local v3, "shouldIgnoreUnknownSurfaceSize":Z
    :cond_c
    if-nez v3, :cond_d

    .line 4114
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/4z;)V

    .line 4115
    :cond_d
    :goto_4
    return-void

    .line 4116
    :cond_e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0F()V

    .line 4117
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0E()V

    .line 4118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A08()V

    const/4 v0, 0x0

    throw v0
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 6

    .line 4120
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v0

    .line 4121
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/B0;
    if-nez v0, :cond_0

    .line 4122
    return-void

    .line 4123
    :cond_0
    if-eqz p1, :cond_1

    .line 4124
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/B0;->A8j()Landroid/util/Pair;

    move-result-object v5

    .line 4125
    .local v1, "newSampleDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 4126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/6I;->A04(Landroid/util/Pair;)V

    .line 4127
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "UGSzGWhN7NgjOmIm99IkQUILfPM9Cd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/6I;->A00:I

    invoke-virtual {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/GP;->A04(ILcom/facebook/ads/redexgen/X/qI;)V

    .line 4128
    .end local v1    # "newSampleDecodeTimeAndCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0W(Lcom/facebook/ads/redexgen/X/B0;IJ)V
    .locals 3

    .line 4129
    const/16 v2, 0x4ee

    const/16 v1, 0xf

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4130
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    .line 4131
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/10;->A0Q(I)V

    .line 4133
    return-void
.end method

.method private final A0X(Lcom/facebook/ads/redexgen/X/B0;IJ)V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 4134
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    if-eqz v0, :cond_0

    .line 4135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/10;->A0Y(Lcom/facebook/ads/redexgen/X/B0;IJ)V

    .line 4136
    return-void

    .line 4137
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0K()V

    .line 4138
    :try_start_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4140
    .local v0, "startRenderTime":J
    const/4 v4, 0x1

    invoke-interface {p1, p2, v4}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    .line 4141
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    .line 4142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    .line 4143
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 4144
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4145
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 4146
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4147
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4148
    return-void

    .line 4149
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4150
    throw v0
.end method

.method private final A0Y(Lcom/facebook/ads/redexgen/X/B0;IJ)V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 4151
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4153
    .local v0, "startRenderTime":J
    const/4 v4, 0x1

    invoke-interface {p1, p2, v4}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    .line 4154
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    .line 4155
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4156
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 4157
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    .line 4160
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0K()V

    .line 4161
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 4162
    :cond_0
    return-void
.end method

.method private final A0Z(Lcom/facebook/ads/redexgen/X/B0;IJ)V
    .locals 3

    .line 4163
    const/16 v2, 0x62b

    const/16 v1, 0xf

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4164
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    .line 4165
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    .line 4167
    return-void
.end method

.method private final A0a(Lcom/facebook/ads/redexgen/X/B0;IJJ)V
    .locals 20
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D36797879: Adding implementation for calculating avg render time"
    .end annotation

    .line 4168
    move-object/from16 v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    move-wide/from16 v11, p5

    move-wide/from16 v9, p3

    move/from16 v8, p2

    move-object/from16 v7, p1

    if-eqz v0, :cond_0

    .line 4169
    const/4 v13, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/10;->A0c(Lcom/facebook/ads/redexgen/X/B0;IJJZ)V

    .line 4170
    return-void

    .line 4171
    :cond_0
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/10;->A0K()V

    .line 4172
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/10;->A0S:Landroid/media/MediaFormat;

    move-object v13, v4

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/10;->A0S(JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V

    .line 4173
    :try_start_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4175
    .local v0, "startRenderTime":J
    invoke-interface {v7, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/B0;->AHh(IJ)V

    .line 4176
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    .line 4177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    .line 4178
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 4179
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4180
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 4181
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/10;->A0O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4182
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4183
    return-void

    .line 4184
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4185
    throw v0
.end method

.method private final A0b(Lcom/facebook/ads/redexgen/X/B0;IJJZ)V
    .locals 20
    .param p1    # Lcom/facebook/ads/redexgen/X/B0;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 4186
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    move-wide/from16 v9, p3

    move/from16 v8, p2

    move-object/from16 v7, p1

    move-wide/from16 v11, p5

    if-eqz v0, :cond_0

    .line 4187
    move/from16 v13, p7

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/10;->A0c(Lcom/facebook/ads/redexgen/X/B0;IJJZ)V

    .line 4188
    return-void

    .line 4189
    :cond_0
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/10;->A0K()V

    .line 4190
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/10;->A0S:Landroid/media/MediaFormat;

    move-object v13, v6

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/10;->A0S(JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V

    .line 4191
    :try_start_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4193
    .local v0, "startRenderTime":J
    invoke-interface {v7, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/B0;->AHh(IJ)V

    .line 4194
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    .line 4195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    .line 4196
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 4197
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4198
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 4199
    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/10;->A0O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4200
    .end local v0    # "startRenderTime":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4201
    return-void

    .line 4202
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4203
    throw v0
.end method

.method private final A0c(Lcom/facebook/ads/redexgen/X/B0;IJJZ)V
    .locals 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "notifyFrameMetadataListener be removed once we take the Exo renderOutputBufferNow Function refactor"
    .end annotation

    .line 4204
    move-wide v6, p5

    if-eqz p7, :cond_0

    .line 4205
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/10;->A0S:Landroid/media/MediaFormat;

    move-object v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "fwcrFdVwexqT3olBri8BzspmWxCtZa94"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    move-wide v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/10;->A0S(JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V

    .line 4206
    :cond_0
    const/16 v2, 0x5f9

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/54;->A02(Ljava/lang/String;)V

    .line 4207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4208
    .local v0, "startRenderTime":J
    invoke-interface {p1, p2, v6, v7}, Lcom/facebook/ads/redexgen/X/B0;->AHh(IJ)V

    .line 4209
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0f:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    .line 4210
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "NtBdNhJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "S1Pe4Cz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/54;->A00()V

    .line 4211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 4212
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    .line 4215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0K()V

    .line 4216
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 4217
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0O()V

    .line 4218
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0d(Lcom/facebook/ads/redexgen/X/B0;Landroid/view/Surface;)V
    .locals 0

    .line 4219
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/B0;->AJb(Landroid/view/Surface;)V

    .line 4220
    return-void
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/10;JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V
    .locals 0

    .line 4221
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/10;->A0S(JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private A0f(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 4222
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0d:Z

    .line 4223
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v0

    .line 4224
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/B0;
    return-void
.end method

.method private A0g()Z
    .locals 8

    .line 4225
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0n:I

    const/4 v7, 0x0

    if-gtz v0, :cond_0

    .line 4226
    return v7

    .line 4227
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    .line 4228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    sub-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0n:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    :cond_1
    const/4 v7, 0x1

    .line 4229
    .local v0, "continueRetry":Z
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    cmp-long v0, v1, v5

    if-nez v0, :cond_3

    .line 4230
    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x385

    const/16 v1, 0x14

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 4231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 4232
    :cond_3
    return v7
.end method

.method public static A0h()Z
    .locals 2

    .line 4233
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0i()Z
    .locals 3

    .line 4234
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_0

    const/16 v2, 0x500

    const/4 v1, 0x6

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x2d5

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0j()Z
    .locals 1

    .line 4235
    invoke-static {}, Lcom/facebook/ads/redexgen/X/10;->A0h()Z

    move-result v0

    return v0
.end method

.method public static A0k(J)Z
    .locals 3

    .line 4236
    const-wide/16 v1, -0x7530

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0l(J)Z
    .locals 3

    .line 4237
    const-wide/32 v1, -0x7a120

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m(JJ)Z
    .locals 10

    .line 4238
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A9A()I

    move-result v1

    const/4 v0, 0x2

    const/4 v9, 0x1

    if-ne v1, v0, :cond_6

    const/4 v8, 0x1

    .line 4239
    .local v0, "isStarted":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0j:Z

    if-nez v0, :cond_4

    .line 4240
    if-nez v8, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0g:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 4241
    .local v1, "shouldRenderFirstFrame":Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    sub-long/2addr v1, v3

    .line 4242
    .local v4, "elapsedSinceLastRenderUs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 4243
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1i()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    if-nez v7, :cond_1

    if-eqz v8, :cond_2

    .line 4244
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/facebook/ads/redexgen/X/10;->A0p(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4245
    :cond_1
    :goto_2
    return v9

    .line 4246
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 4247
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 4248
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    if-nez v0, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 4249
    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private final A0n(JJ)Z
    .locals 1

    .line 4250
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/10;->A0l(J)Z

    move-result v0

    return v0
.end method

.method private final A0o(JJ)Z
    .locals 1

    .line 4251
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/10;->A0k(J)Z

    move-result v0

    return v0
.end method

.method private final A0p(JJ)Z
    .locals 3

    .line 4252
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/10;->A0k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x186a0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0q(Lcom/facebook/ads/redexgen/X/B0;IJJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4253
    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/AE;->A1Q(J)I

    move-result v3

    .line 4254
    .local v0, "droppedSourceBufferCount":I
    if-nez v3, :cond_0

    .line 4255
    const/4 v0, 0x0

    return v0

    .line 4256
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/6I;->A06:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/6I;->A06:I

    .line 4257
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/10;->A0Q(I)V

    .line 4258
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A1m()V

    .line 4259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A09()V

    const/4 v0, 0x0

    throw v0

    .line 4261
    :cond_1
    return v1
.end method

.method private A0r(Lcom/facebook/ads/redexgen/X/B3;)Z
    .locals 2

    .line 4262
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    .line 4263
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/10;->A0u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A06:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0q:Landroid/content/Context;

    .line 4264
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4265
    :goto_0
    return v0

    .line 4266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/10;)Z
    .locals 0

    .line 4267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A21()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/10;JJ)Z
    .locals 0

    .line 4268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/10;->A0m(JJ)Z

    move-result p0

    return p0
.end method

.method private final A0u(Ljava/lang/String;)Z
    .locals 8

    .line 4269
    const/16 v2, 0x2e7

    const/16 v1, 0xa

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 4270
    return v6

    .line 4271
    :cond_0
    const-class v4, Lcom/facebook/ads/redexgen/X/10;

    monitor-enter v4

    .line 4272
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/10;->A10:Z

    if-nez v0, :cond_1

    .line 4273
    const/16 v2, 0x4e5

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 4274
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/10;->A0z:Z

    .line 4275
    :goto_0
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/10;->A10:Z

    .line 4276
    :cond_1
    monitor-exit v4

    goto/16 :goto_8

    .line 4277
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v7, 0x1b

    if-gt v0, v7, :cond_3

    const/16 v2, 0x233

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4278
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/10;->A0z:Z

    goto :goto_0

    .line 4279
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-lt v0, v7, :cond_4

    goto :goto_0

    .line 4280
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const/16 v3, 0x23f

    const/4 v2, 0x7

    const/16 v0, 0x44

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x37

    goto/16 :goto_3

    :sswitch_1
    const/16 v3, 0x238

    const/4 v2, 0x7

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x36

    goto/16 :goto_3

    :sswitch_2
    const/16 v3, 0x13a

    const/16 v2, 0xa

    const/16 v0, 0x7e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1c

    goto/16 :goto_3

    :sswitch_3
    const/16 v3, 0x130

    const/16 v2, 0xa

    const/16 v0, 0x79

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    :sswitch_4
    const/16 v3, 0x6f

    const/16 v2, 0xc

    const/4 v0, 0x6

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_5
    const/16 v3, 0x22c

    const/4 v2, 0x7

    const/16 v0, 0x34

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x35

    goto/16 :goto_3

    :sswitch_6
    const/16 v3, 0x225

    const/4 v2, 0x7

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x34

    goto/16 :goto_3

    :sswitch_7
    const/16 v3, 0xcc

    const/16 v2, 0xe

    const/16 v0, 0x4b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x10

    goto/16 :goto_3

    :sswitch_8
    const/16 v3, 0x246

    const/16 v2, 0xc

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3a

    goto/16 :goto_3

    :sswitch_9
    const/16 v3, 0x301

    const/16 v2, 0x8

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x57

    goto/16 :goto_3

    :sswitch_a
    const/16 v3, 0x624

    const/4 v2, 0x7

    const/16 v0, 0x4c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x67

    goto/16 :goto_3

    :sswitch_b
    const/16 v3, 0x53b

    const/16 v2, 0xe

    const/4 v0, 0x3

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x39

    goto/16 :goto_3

    :sswitch_c
    const/16 v3, 0xe6

    const/4 v2, 0x7

    const/16 v0, 0x2c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x14

    goto/16 :goto_3

    :sswitch_d
    const/16 v3, 0x6e0

    const/4 v2, 0x7

    const/16 v0, 0x2a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x77

    goto/16 :goto_3

    :sswitch_e
    const/16 v3, 0x521

    const/16 v2, 0xe

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x32

    goto/16 :goto_3

    :sswitch_f
    const/16 v3, 0x14f

    const/16 v2, 0xa

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1e

    goto/16 :goto_3

    :sswitch_10
    const/16 v3, 0x52f

    const/4 v2, 0x7

    const/16 v0, 0x40

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x33

    goto/16 :goto_3

    :sswitch_11
    const/16 v3, 0x54f

    const/16 v2, 0x8

    const/16 v0, 0x5c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3c

    goto/16 :goto_3

    :sswitch_12
    const/16 v3, 0x270

    const/4 v2, 0x7

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x43

    goto/16 :goto_3

    :sswitch_13
    const/16 v3, 0x5ce

    const/16 v2, 0x8

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x53

    goto/16 :goto_3

    :sswitch_14
    const/16 v3, 0x557

    const/16 v2, 0x9

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3d

    goto/16 :goto_3

    :sswitch_15
    const/16 v3, 0x2e

    const/16 v2, 0x9

    const/16 v0, 0x47

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_16
    const/16 v3, 0x580

    const/4 v2, 0x7

    const/16 v0, 0x9

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x45

    goto/16 :goto_3

    :sswitch_17
    const/16 v3, 0x1ed

    const/16 v2, 0xe

    const/16 v0, 0x3c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x30

    goto/16 :goto_3

    :sswitch_18
    const/16 v3, 0x1df

    const/16 v2, 0xe

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2f

    goto/16 :goto_3

    :sswitch_19
    const/16 v3, 0x1d1

    const/16 v2, 0xe

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2e

    goto/16 :goto_3

    :sswitch_1a
    const/16 v3, 0x35a

    const/16 v2, 0x8

    const/16 v0, 0x24

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x65

    goto/16 :goto_3

    :sswitch_1b
    const/16 v3, 0x33b

    const/16 v2, 0xb

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5d

    goto/16 :goto_3

    :sswitch_1c
    const/16 v3, 0x425

    const/16 v2, 0x8

    const/16 v0, 0x31

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6f

    goto/16 :goto_3

    :sswitch_1d
    const/16 v3, 0x41d

    const/16 v2, 0x8

    const/16 v0, 0x5d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6e

    goto/16 :goto_3

    :sswitch_1e
    const/16 v3, 0x415

    const/16 v2, 0x8

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6d

    goto/16 :goto_3

    :sswitch_1f
    const/16 v3, 0x40d

    const/16 v2, 0x8

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6c

    goto/16 :goto_3

    :sswitch_20
    const/16 v3, 0x3f

    const/16 v2, 0x8

    const/16 v0, 0x21

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_21
    const/16 v3, 0x37

    const/16 v2, 0x8

    const/16 v0, 0x3e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_22
    const/16 v3, 0x514

    const/4 v2, 0x7

    const/16 v0, 0x5b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x31

    goto/16 :goto_3

    :sswitch_23
    const/16 v3, 0x587

    const/16 v2, 0x8

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x46

    goto/16 :goto_3

    :sswitch_24
    const/16 v3, 0xed

    const/16 v2, 0x9

    const/16 v0, 0x20

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x15

    goto/16 :goto_3

    :sswitch_25
    const/16 v3, 0x1f

    const/16 v2, 0x8

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x6

    goto/16 :goto_3

    :sswitch_26
    const/16 v3, 0x569

    const/4 v2, 0x5

    const/4 v0, 0x5

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x42

    goto/16 :goto_3

    :sswitch_27
    const/16 v3, 0x564

    const/4 v2, 0x5

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x41

    goto/16 :goto_3

    :sswitch_28
    const/16 v3, 0x536

    const/4 v2, 0x5

    const/16 v0, 0x32

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x38

    goto/16 :goto_3

    :sswitch_29
    const/16 v3, 0x468

    const/4 v2, 0x5

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x79

    goto/16 :goto_3

    :sswitch_2a
    const/16 v3, 0x45c

    const/4 v2, 0x5

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x72

    goto/16 :goto_3

    :sswitch_2b
    const/16 v3, 0x353

    const/4 v2, 0x5

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x63

    goto/16 :goto_3

    :sswitch_2c
    const/16 v3, 0x34a

    const/4 v2, 0x5

    const/16 v0, 0x63

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x61

    goto/16 :goto_3

    :sswitch_2d
    const/16 v3, 0x31e

    const/4 v2, 0x5

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5f

    goto/16 :goto_3

    :sswitch_2e
    const/16 v3, 0x177

    const/4 v2, 0x5

    const/4 v0, 0x7

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x25

    goto/16 :goto_3

    :sswitch_2f
    const/16 v3, 0x172

    const/4 v2, 0x5

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x24

    goto/16 :goto_3

    :sswitch_30
    const/16 v3, 0x16d

    const/4 v2, 0x5

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x23

    goto/16 :goto_3

    :sswitch_31
    const/16 v3, 0x168

    const/4 v2, 0x5

    const/16 v0, 0xd

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x22

    goto/16 :goto_3

    :sswitch_32
    const/16 v3, 0x163

    const/4 v2, 0x5

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x21

    goto/16 :goto_3

    :sswitch_33
    const/16 v3, 0x15e

    const/4 v2, 0x5

    const/16 v0, 0x67

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x20

    goto/16 :goto_3

    :sswitch_34
    const/16 v3, 0x159

    const/4 v2, 0x5

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1f

    goto/16 :goto_3

    :sswitch_35
    const/16 v3, 0x11f

    const/4 v2, 0x5

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x19

    goto/16 :goto_3

    :sswitch_36
    const/16 v3, 0x1a

    const/4 v2, 0x5

    const/16 v0, 0x4e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x5

    goto/16 :goto_3

    :sswitch_37
    const/16 v3, 0xa0

    const/16 v2, 0xb

    const/16 v0, 0x6c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_38
    const/16 v3, 0x29f

    const/16 v2, 0x8

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x47

    goto/16 :goto_3

    :sswitch_39
    const/16 v3, 0x5ca

    const/4 v2, 0x4

    const/16 v0, 0x30

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x50

    goto/16 :goto_3

    :sswitch_3a
    const/16 v3, 0x5b2

    const/4 v2, 0x4

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x49

    goto/16 :goto_3

    :sswitch_3b
    const/16 v3, 0x560

    const/4 v2, 0x4

    const/16 v0, 0x2f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x40

    goto/16 :goto_3

    :sswitch_3c
    const/16 v3, 0x510

    const/4 v2, 0x4

    const/16 v0, 0x5e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x27

    goto/16 :goto_3

    :sswitch_3d
    const/16 v3, 0x46d

    const/4 v2, 0x4

    const/4 v0, 0x2

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7a

    goto/16 :goto_3

    :sswitch_3e
    const/16 v3, 0x34f

    const/4 v2, 0x4

    const/16 v0, 0x41

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x62

    goto/16 :goto_3

    :sswitch_3f
    const/16 v3, 0x346

    const/4 v2, 0x4

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x60

    goto/16 :goto_3

    :sswitch_40
    const/16 v3, 0x2fa

    const/4 v2, 0x4

    const/16 v0, 0x76

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x51

    goto/16 :goto_3

    :sswitch_41
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/16 v0, 0x24

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x2

    goto/16 :goto_3

    :sswitch_42
    const/4 v3, 0x4

    const/4 v2, 0x4

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    goto/16 :goto_3

    :sswitch_43
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/16 v0, 0x28

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_3

    :sswitch_44
    const/16 v3, 0x4fd

    const/4 v2, 0x3

    const/4 v0, 0x5

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x26

    goto/16 :goto_3

    :sswitch_45
    const/16 v3, 0x4eb

    const/4 v2, 0x3

    const/16 v0, 0x61

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x18

    goto/16 :goto_3

    :sswitch_46
    const/16 v3, 0x4e2

    const/4 v2, 0x3

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x17

    goto/16 :goto_3

    :sswitch_47
    const/16 v3, 0x4df

    const/4 v2, 0x3

    const/16 v0, 0x7a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x16

    goto/16 :goto_3

    :sswitch_48
    const/16 v3, 0x47e

    const/4 v2, 0x3

    const/16 v0, 0x45

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7d

    goto/16 :goto_3

    :sswitch_49
    const/16 v3, 0x362

    const/4 v2, 0x3

    const/16 v0, 0x2d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x66

    goto/16 :goto_3

    :sswitch_4a
    const/16 v3, 0x31b

    const/4 v2, 0x3

    const/16 v0, 0x5d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5e

    goto/16 :goto_3

    :sswitch_4b
    const/16 v3, 0x2fe

    const/4 v2, 0x3

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x52

    goto/16 :goto_3

    :sswitch_4c
    const/16 v3, 0x2a7

    const/4 v2, 0x3

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4a

    goto/16 :goto_3

    :sswitch_4d
    const/16 v3, 0x29c

    const/4 v2, 0x3

    const/16 v0, 0x21

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x44

    goto/16 :goto_3

    :sswitch_4e
    const/16 v3, 0x252

    const/4 v2, 0x3

    const/16 v0, 0xc

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3e

    goto/16 :goto_3

    :sswitch_4f
    const/16 v3, 0x5b0

    const/4 v2, 0x2

    const/16 v0, 0x8

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x48

    goto/16 :goto_3

    :sswitch_50
    const/16 v3, 0x461

    const/4 v2, 0x2

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x73

    goto/16 :goto_3

    :sswitch_51
    const/16 v3, 0x45a

    const/4 v2, 0x2

    const/16 v0, 0x4a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x71

    goto/16 :goto_3

    :sswitch_52
    const/16 v3, 0x358

    const/4 v2, 0x2

    const/16 v0, 0x2a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x64

    goto/16 :goto_3

    :sswitch_53
    const/16 v3, 0xda

    const/4 v2, 0x2

    const/16 v0, 0x5d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x11

    goto/16 :goto_3

    :sswitch_54
    const/16 v3, 0x6e7

    const/16 v2, 0x8

    const/16 v0, 0x29

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x78

    goto/16 :goto_3

    :sswitch_55
    const/16 v3, 0x124

    const/16 v2, 0xc

    const/16 v0, 0x4d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1a

    goto/16 :goto_3

    :sswitch_56
    const/16 v3, 0x477

    const/4 v2, 0x7

    const/16 v0, 0x4d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7c

    goto/16 :goto_3

    :sswitch_57
    const/16 v3, 0xab

    const/16 v2, 0x8

    const/16 v0, 0x76

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_58
    const/16 v3, 0x63a

    const/16 v2, 0x9

    const/16 v0, 0x77

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6b

    goto/16 :goto_3

    :sswitch_59
    const/16 v3, 0x331

    const/16 v2, 0xa

    const/16 v0, 0x4e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5c

    goto/16 :goto_3

    :sswitch_5a
    const/16 v3, 0x199

    const/16 v2, 0xe

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2a

    goto/16 :goto_3

    :sswitch_5b
    const/16 v3, 0x1fb

    const/16 v2, 0xe

    const/16 v0, 0x49

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x28

    goto/16 :goto_3

    :sswitch_5c
    const/16 v3, 0x2f1

    const/16 v2, 0x9

    const/16 v0, 0x55

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4f

    goto/16 :goto_3

    :sswitch_5d
    const/16 v3, 0x6d5

    const/4 v2, 0x6

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x76

    goto/16 :goto_3

    :sswitch_5e
    const/16 v3, 0x6cf

    const/4 v2, 0x6

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x75

    goto/16 :goto_3

    :sswitch_5f
    const/16 v3, 0x3ee

    const/16 v2, 0x9

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x69

    goto/16 :goto_3

    :sswitch_60
    const/16 v3, 0x27

    const/4 v2, 0x7

    const/16 v0, 0x10

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x7

    goto/16 :goto_3

    :sswitch_61
    const/16 v3, 0x5c0

    const/16 v2, 0xa

    const/16 v0, 0x1d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4c

    goto/16 :goto_3

    :sswitch_62
    const/16 v3, 0x643

    const/4 v2, 0x6

    const/16 v0, 0xe

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x70

    goto/16 :goto_3

    :sswitch_63
    const/16 v3, 0x144

    const/16 v2, 0xb

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x1d

    goto/16 :goto_3

    :sswitch_64
    const/16 v3, 0x61c

    const/16 v2, 0x8

    const/16 v0, 0x1b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x6a

    goto/16 :goto_3

    :sswitch_65
    const/16 v3, 0x13

    const/4 v2, 0x7

    const/16 v0, 0x6e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x4

    goto/16 :goto_3

    :sswitch_66
    const/16 v3, 0xc

    const/4 v2, 0x7

    const/16 v0, 0x78

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x3

    goto/16 :goto_3

    :sswitch_67
    const/16 v3, 0x5ba

    const/4 v2, 0x6

    const/16 v0, 0x25

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4b

    goto/16 :goto_3

    :sswitch_68
    const/16 v3, 0x3f7

    const/16 v2, 0x9

    const/16 v0, 0x1c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x68

    goto/16 :goto_3

    :sswitch_69
    const/16 v3, 0x549

    const/4 v2, 0x6

    const/16 v0, 0x62

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3b

    goto/16 :goto_3

    :sswitch_6a
    const/16 v3, 0xc1

    const/16 v2, 0xb

    const/16 v0, 0x36

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xf

    goto/16 :goto_3

    :sswitch_6b
    const/16 v3, 0x209

    const/16 v2, 0xe

    const/16 v0, 0x4a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x29

    goto/16 :goto_3

    :sswitch_6c
    const/16 v3, 0x5e8

    const/16 v2, 0x9

    const/16 v0, 0x2e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x56

    goto/16 :goto_3

    :sswitch_6d
    const/16 v3, 0x5df

    const/16 v2, 0x9

    const/16 v0, 0x77

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x55

    goto/16 :goto_3

    :sswitch_6e
    const/16 v3, 0x5d6

    const/16 v2, 0x9

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x54

    goto/16 :goto_3

    :sswitch_6f
    const/16 v3, 0x65a

    const/16 v2, 0x9

    const/16 v0, 0x29

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x74

    goto/16 :goto_3

    :sswitch_70
    const/16 v3, 0x323

    const/16 v2, 0x8

    const/16 v0, 0x62

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5b

    goto/16 :goto_3

    :sswitch_71
    const/16 v3, 0x118

    const/4 v2, 0x7

    const/16 v0, 0x6f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x12

    goto/16 :goto_3

    :sswitch_72
    const/16 v3, 0x471

    const/4 v2, 0x6

    const/16 v0, 0x7b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x7b

    goto/16 :goto_3

    :sswitch_73
    const/16 v3, 0x8a

    const/16 v2, 0xa

    const/4 v0, 0x6

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_74
    const/16 v3, 0x315

    const/4 v2, 0x6

    const/16 v0, 0x2c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x5a

    goto/16 :goto_3

    :sswitch_75
    const/16 v3, 0x30f

    const/4 v2, 0x6

    const/16 v0, 0x51

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x59

    goto/16 :goto_3

    :sswitch_76
    const/16 v3, 0x309

    const/4 v2, 0x6

    const/16 v0, 0x1f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x58

    goto/16 :goto_3

    :sswitch_77
    const/16 v3, 0x2e1

    const/4 v2, 0x6

    const/16 v0, 0x48

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4e

    goto :goto_3

    :sswitch_78
    const/16 v3, 0x2db

    const/4 v2, 0x6

    const/4 v0, 0x0

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x4d

    goto :goto_3

    :sswitch_79
    const/16 v3, 0xdc

    const/16 v2, 0xa

    const/16 v0, 0x3b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x13

    goto :goto_3

    :sswitch_7a
    const/16 v3, 0x25c

    const/4 v2, 0x6

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x3f

    goto :goto_3

    :sswitch_7b
    const/16 v3, 0x1c3

    const/16 v2, 0xe

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2d

    goto :goto_3

    :sswitch_7c
    const/16 v3, 0x1b5

    const/16 v2, 0xe

    const/16 v0, 0x57

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v7, 0x2c

    goto :goto_3

    :sswitch_7d
    const/16 v3, 0x1a7

    const/16 v2, 0xe

    const/16 v0, 0x50

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, -0x1

    goto :goto_3

    :goto_2
    const/16 v7, 0x2b

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_4

    .line 4281
    :pswitch_0
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/10;->A0z:Z

    .line 4282
    :goto_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_5

    :sswitch_7e
    const/16 v3, 0x293

    const/16 v2, 0x9

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xa

    goto/16 :goto_7

    :sswitch_7f
    const/16 v3, 0x400

    const/16 v2, 0xd

    const/16 v0, 0x7c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x1a

    goto/16 :goto_7

    :sswitch_80
    const/16 v3, 0x4f

    const/16 v2, 0xa

    const/16 v0, 0x3d

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x3

    goto/16 :goto_7

    :sswitch_81
    const/16 v3, 0x286

    const/16 v2, 0xd

    const/16 v0, 0x2a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xd

    goto/16 :goto_7

    :sswitch_82
    const/16 v3, 0x269

    const/4 v2, 0x7

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x6

    goto/16 :goto_7

    :sswitch_83
    const/16 v3, 0x262

    const/4 v2, 0x7

    const/16 v0, 0x14

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xe

    goto/16 :goto_7

    :sswitch_84
    const/16 v3, 0x3dd

    const/16 v2, 0x9

    const/16 v0, 0x30

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x19

    goto/16 :goto_7

    :sswitch_85
    const/16 v3, 0x64

    const/16 v2, 0xb

    const/16 v0, 0x17

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x15

    goto/16 :goto_7

    :sswitch_86
    const/16 v3, 0x59

    const/16 v2, 0xb

    const/16 v0, 0x1b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x4

    goto/16 :goto_7

    :sswitch_87
    const/16 v3, 0x3cc

    const/16 v2, 0x9

    const/16 v0, 0x4c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xc

    goto/16 :goto_7

    :sswitch_88
    const/16 v3, 0x217

    const/16 v2, 0xe

    const/16 v0, 0x14

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x16

    goto/16 :goto_7

    :sswitch_89
    const/16 v3, 0x463

    const/4 v2, 0x5

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x18

    goto/16 :goto_7

    :sswitch_8a
    const/16 v3, 0x4b

    const/4 v2, 0x4

    const/16 v0, 0x15

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_7

    :sswitch_8b
    const/16 v3, 0x47

    const/4 v2, 0x4

    const/16 v0, 0x6b

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_7

    :sswitch_8c
    const/16 v3, 0x7b

    const/16 v2, 0xf

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x9

    goto/16 :goto_7

    :sswitch_8d
    const/16 v3, 0x3d5

    const/16 v2, 0x8

    const/16 v0, 0x53

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x7

    goto/16 :goto_7

    :sswitch_8e
    const/16 v3, 0x3c4

    const/16 v2, 0x8

    const/16 v0, 0x2f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x17

    goto/16 :goto_7

    :sswitch_8f
    const/16 v3, 0x579

    const/4 v2, 0x7

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xb

    goto/16 :goto_7

    :sswitch_90
    const/16 v3, 0x255

    const/4 v2, 0x7

    const/16 v0, 0x5e

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x2

    goto/16 :goto_7

    :sswitch_91
    const/16 v3, 0x365

    const/16 v2, 0x8

    const/16 v0, 0x75

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x12

    goto/16 :goto_7

    :sswitch_92
    const/16 v3, 0x277

    const/16 v2, 0xf

    const/16 v0, 0x68

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x11

    goto :goto_7

    :sswitch_93
    const/16 v3, 0x3e6

    const/16 v2, 0x8

    const/16 v0, 0x24

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x13

    goto :goto_7

    :sswitch_94
    const/16 v3, 0x94

    const/16 v2, 0xc

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x14

    goto :goto_7

    :sswitch_95
    const/16 v3, 0x2c1

    const/16 v2, 0xe

    const/16 v0, 0x52

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x10

    goto :goto_7

    :sswitch_96
    const/16 v3, 0x2cf

    const/4 v2, 0x6

    const/16 v0, 0x29

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0xf

    goto :goto_7

    :sswitch_97
    const/16 v3, 0x379

    const/16 v2, 0xc

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x5

    goto :goto_7

    :sswitch_98
    const/16 v3, 0x36d

    const/16 v2, 0xc

    const/16 v0, 0x58

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, -0x1

    goto :goto_7

    :goto_6
    const/16 v6, 0x8

    :goto_7
    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 4283
    :pswitch_1
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/10;->A0z:Z

    goto/16 :goto_0

    .line 4284
    :pswitch_2
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/10;->A0z:Z

    goto/16 :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4285
    :goto_8
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/10;->A0z:Z

    return v0

    .line 4286
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7d
        -0x7fd6c381 -> :sswitch_7c
        -0x7fd6c368 -> :sswitch_7b
        -0x7d026749 -> :sswitch_7a
        -0x78929d6a -> :sswitch_79
        -0x75f50a1e -> :sswitch_78
        -0x75f4fe9d -> :sswitch_77
        -0x736f875c -> :sswitch_76
        -0x736f83c2 -> :sswitch_75
        -0x736f83c1 -> :sswitch_74
        -0x7327ce1c -> :sswitch_73
        -0x651ebb62 -> :sswitch_72
        -0x6423293b -> :sswitch_71
        -0x604f5117 -> :sswitch_70
        -0x5ca40cc4 -> :sswitch_6f
        -0x58520ec1 -> :sswitch_6e
        -0x58520eba -> :sswitch_6d
        -0x58520eb9 -> :sswitch_6c
        -0x4eaed329 -> :sswitch_6b
        -0x4892fb4f -> :sswitch_6a
        -0x465b3df3 -> :sswitch_69
        -0x43e6c939 -> :sswitch_68
        -0x3ec0fcc5 -> :sswitch_67
        -0x3b33cca0 -> :sswitch_66
        -0x3b33cc9a -> :sswitch_65
        -0x398ae3f6 -> :sswitch_64
        -0x391f0fb4 -> :sswitch_63
        -0x346837ae -> :sswitch_62
        -0x323788e3 -> :sswitch_61
        -0x30f57652 -> :sswitch_60
        -0x2f88a116 -> :sswitch_5f
        -0x2f61ed98 -> :sswitch_5e
        -0x2efd0837 -> :sswitch_5d
        -0x2e9e9441 -> :sswitch_5c
        -0x2247b8b1 -> :sswitch_5b
        -0x1f0fa2b7 -> :sswitch_5a
        -0x19af3b41 -> :sswitch_59
        -0x114fad3e -> :sswitch_58
        -0x10dae90b -> :sswitch_57
        -0x1084b7b7 -> :sswitch_56
        -0xa5988e9 -> :sswitch_55
        -0x35f9fbf -> :sswitch_54
        0x84e -> :sswitch_53
        0xa04 -> :sswitch_52
        0xa9b -> :sswitch_51
        0xa9f -> :sswitch_50
        0xd9b -> :sswitch_4f
        0x11ebd -> :sswitch_4e
        0x127db -> :sswitch_4d
        0x12beb -> :sswitch_4c
        0x1334d -> :sswitch_4b
        0x135c9 -> :sswitch_4a
        0x13aea -> :sswitch_49
        0x158d2 -> :sswitch_48
        0x1821e -> :sswitch_47
        0x18220 -> :sswitch_46
        0x18401 -> :sswitch_45
        0x18c69 -> :sswitch_44
        0x1716e6 -> :sswitch_43
        0x171ac8 -> :sswitch_42
        0x171ac9 -> :sswitch_41
        0x252f5f -> :sswitch_40
        0x25981d -> :sswitch_3f
        0x259b88 -> :sswitch_3e
        0x290a13 -> :sswitch_3d
        0x3021fd -> :sswitch_3c
        0x321e47 -> :sswitch_3b
        0x332327 -> :sswitch_3a
        0x33ab63 -> :sswitch_39
        0x27691fb -> :sswitch_38
        0x349f581 -> :sswitch_37
        0x3ab0ea7 -> :sswitch_36
        0x3e53ea5 -> :sswitch_35
        0x3f25a44 -> :sswitch_34
        0x3f25a46 -> :sswitch_33
        0x3f25a49 -> :sswitch_32
        0x3f25e05 -> :sswitch_31
        0x3f25e07 -> :sswitch_30
        0x3f25e09 -> :sswitch_2f
        0x3f261c6 -> :sswitch_2e
        0x48dce49 -> :sswitch_2d
        0x48dd589 -> :sswitch_2c
        0x48dd8af -> :sswitch_2b
        0x4d36832 -> :sswitch_2a
        0x4f0b0e7 -> :sswitch_29
        0x5e2479e -> :sswitch_28
        0x60acc05 -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x797bd2a9 -> :sswitch_98
        -0x797bd2a8 -> :sswitch_97
        -0x764842b7 -> :sswitch_96
        -0x56efdb18 -> :sswitch_95
        -0x4fb863e1 -> :sswitch_94
        -0x44aaf270 -> :sswitch_93
        -0x445f00b8 -> :sswitch_92
        -0x2a356629 -> :sswitch_91
        -0x236fe21d -> :sswitch_90
        -0x22afd633 -> :sswitch_8f
        -0x17f15937 -> :sswitch_8e
        -0x17ca4d0e -> :sswitch_8d
        -0x93ce2de -> :sswitch_8c
        0x1e9d52 -> :sswitch_8b
        0x1e9d5f -> :sswitch_8a
        0x4e27953 -> :sswitch_89
        0x1a302dd7 -> :sswitch_88
        0x1e80aae9 -> :sswitch_87
        0x24f121f5 -> :sswitch_86
        0x24f121f7 -> :sswitch_85
        0x25b7277f -> :sswitch_84
        0x301eae78 -> :sswitch_83
        0x301f8ff2 -> :sswitch_82
        0x3fd34a20 -> :sswitch_81
        0x6449d7cc -> :sswitch_80
        0x72869bf2 -> :sswitch_7f
        0x7f30d73a -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static A0v(ZLcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 2

    .line 4287
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    if-ne v1, v0, :cond_1

    if-nez p0, :cond_0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-ne v1, v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 4288
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4289
    :goto_0
    return v0

    .line 4290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1X()V
    .locals 4

    .line 4291
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1X()V

    .line 4292
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A09:I

    .line 4293
    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    .line 4294
    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    .line 4295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0J:J

    .line 4296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    .line 4297
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    if-eqz v0, :cond_0

    .line 4298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G7;->A0D()V

    .line 4299
    :cond_0
    return-void
.end method

.method public final A1Y()V
    .locals 2

    .line 4300
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    .line 4301
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0J()V

    .line 4302
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4303
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    if-eqz v0, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G7;->A0E()V

    .line 4305
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1Y()V

    .line 4306
    return-void
.end method

.method public final A1Z()V
    .locals 3

    .line 4307
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    .line 4308
    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    .line 4309
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    .line 4310
    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A02:F

    .line 4311
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    .line 4312
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0O:J

    .line 4313
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    .line 4314
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0F()V

    .line 4315
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0E()V

    .line 4316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0t:Lcom/facebook/ads/redexgen/X/GA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GA;->A08()V

    .line 4317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/n5;

    .line 4318
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    .line 4319
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    .line 4320
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    .line 4321
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0G()V

    .line 4322
    :try_start_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1Z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 4324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A09(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4325
    return-void

    .line 4326
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 4327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A09(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4328
    throw v2
.end method

.method public final A1a(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4329
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1g;->A1a(JZ)V

    .line 4330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A09()V

    const/4 v0, 0x0

    throw v0

    .line 4332
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0E()V

    .line 4333
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    if-eqz v0, :cond_1

    .line 4334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G7;->A0C()V

    .line 4335
    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0N:J

    .line 4336
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0L:J

    .line 4337
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0O:J

    .line 4338
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0A:I

    .line 4339
    iput v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0B:I

    .line 4340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    if-eqz v0, :cond_2

    .line 4341
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    .line 4342
    iput v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    .line 4343
    :cond_2
    if-eqz p3, :cond_3

    .line 4344
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0N()V

    .line 4345
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/10;->A0H()V

    .line 4346
    return-void

    .line 4347
    :cond_3
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    goto :goto_0
.end method

.method public final A1b(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4348
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1g;->A1b(ZZ)V

    .line 4349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1V()Lcom/facebook/ads/redexgen/X/7s;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7s;->A00:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    .line 4350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A0A(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0t:Lcom/facebook/ads/redexgen/X/GA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GA;->A09()V

    .line 4352
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/10;->A0g:Z

    .line 4353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0j:Z

    .line 4354
    return-void
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/qI;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4355
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 4356
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    .line 4357
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/1g;->A1c([Lcom/facebook/ads/redexgen/X/qI;JJ)V

    .line 4358
    return-void

    .line 4359
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 4360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x42d

    const/16 v1, 0x2d

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    add-int/lit8 v3, v0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4362
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "SAUgnWkYDj4XEzprgfj9YLgtcmW5pkCR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-wide p4, v4, v3

    .line 4363
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0y:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    add-int/lit8 v2, v0, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0O:J

    aput-wide v0, v3, v2

    goto :goto_0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 5

    .line 4364
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget v3, p3, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v2, p3, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v1, p4, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/is;->A04(Lcom/facebook/ads/redexgen/X/jQ;IIII)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4365
    return v2

    .line 4366
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A21()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v1, p3, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4367
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p3, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    if-ne v1, v0, :cond_1

    .line 4368
    return v4

    .line 4369
    :cond_1
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/B3;->A04:Z

    invoke-static {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/10;->A0v(ZLcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v1, p4, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0W:Lcom/facebook/ads/redexgen/X/Fm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    if-gt v1, v0, :cond_4

    iget v1, p4, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0W:Lcom/facebook/ads/redexgen/X/Fm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fm;->A00:I

    if-gt v1, v0, :cond_4

    .line 4370
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/10;->A00(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0W:Lcom/facebook/ads/redexgen/X/Fm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fm;->A01:I

    if-gt v1, v0, :cond_4

    .line 4371
    invoke-virtual {p3, p4}, Lcom/facebook/ads/redexgen/X/qI;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "4hDLfGBXu2jWhDFi4VyshDOfpKmyRTIF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    :goto_0
    return v4

    .line 4372
    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4373
    :cond_4
    return v2
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 4374
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/1g;->A24(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4375
    const/16 v0, 0x14

    return v0

    .line 4376
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0j:Z

    invoke-static {p1, p3, v0}, Lcom/facebook/ads/redexgen/X/10;->A01(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BT;",
            "Lcom/facebook/ads/redexgen/X/qI;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B3;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 4377
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/10;->A0D(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A1m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4378
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1m()V

    .line 4379
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    .line 4380
    return-void
.end method

.method public final A1n()V
    .locals 4

    .line 4381
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4382
    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    .line 4383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 4384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-ne v1, v0, :cond_0

    .line 4385
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    .line 4386
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    .line 4387
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "7lrYh0KktVrYvVNtOiQ9Yi2M4ixXH9PV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rg1WGkW3vr4OYC0nZllkbznbWLz7shBk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    .line 4388
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4389
    :catchall_0
    move-exception v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    .line 4390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 4391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-ne v1, v0, :cond_3

    .line 4392
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    .line 4393
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4394
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    .line 4395
    :cond_4
    throw v2
.end method

.method public final A1q(J)V
    .locals 5

    .line 4396
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1g;->A1q(J)V

    .line 4397
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    .line 4398
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0y:[J

    const/4 v3, 0x0

    aget-wide v1, v0, v3

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 4399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    aget-wide v0, v0, v3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    .line 4400
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    .line 4401
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0x:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4402
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0y:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0y:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0C:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4403
    :cond_0
    return-void
.end method

.method public final A1r(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "for SR video effects support of MCM"
    .end annotation

    .line 4404
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/1g;->A24(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4406
    const/16 v2, 0x66d

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4407
    .local v0, "isSwitchingToDav1d":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0A()V

    const/4 v0, 0x0

    throw v0

    .line 4409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4410
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Fo;->A05(Lcom/facebook/ads/redexgen/X/Fo;Z)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    .line 4411
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "sIGbpbi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "eroBYPH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4412
    .end local v0    # "isSwitchingToDav1d":Z
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/jY;->A09:Lcom/facebook/ads/redexgen/X/jY;

    .line 4413
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A00(Lcom/facebook/ads/redexgen/X/jY;)I

    move-result v1

    .line 4414
    .local v0, "videoWidthToEnableSR":I
    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-le v0, v1, :cond_4

    .line 4415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Fo;->A05(Lcom/facebook/ads/redexgen/X/Fo;Z)Z

    .line 4416
    :cond_4
    return-void
.end method

.method public final A1s(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4417
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/1g;->A1s(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 4418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A05(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    .line 4419
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A02:F

    .line 4420
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0D:I

    .line 4421
    return-void
.end method

.method public final A1t(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4423
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1i()J

    move-result-wide v0

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Fo;->A0J(Lcom/facebook/ads/redexgen/X/qI;J)Z

    .line 4424
    :cond_0
    return-void
.end method

.method public final A1u(Lcom/facebook/ads/redexgen/X/p0;)V
    .locals 4

    .line 4425
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A04:I

    .line 4426
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0O:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0O:J

    .line 4427
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    if-eqz v0, :cond_0

    .line 4428
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 4429
    :cond_0
    return-void
.end method

.method public final A1v(Lcom/facebook/ads/redexgen/X/B0;Landroid/media/MediaFormat;)V
    .locals 8

    .line 4430
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/10;->A0S:Landroid/media/MediaFormat;

    .line 4431
    .local v0, "unappliedRotationDegrees":I
    const/16 v2, 0x4cd

    const/16 v1, 0xa

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v2, 0x4d7

    const/16 v1, 0x8

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x4b9

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x4c4

    const/16 v1, 0x9

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 4432
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4433
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4434
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    .line 4435
    .local v2, "hasCrop":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 4436
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 4437
    :goto_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    .line 4438
    if-eqz v3, :cond_3

    .line 4439
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    .line 4440
    :goto_2
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    .line 4441
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    .line 4442
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 4443
    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0D:I

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0D:I

    const/16 v0, 0x10e

    if-ne v1, v0, :cond_1

    .line 4444
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    .line 4445
    .local v1, "rotatedHeight":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    .line 4446
    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    .line 4447
    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    .line 4448
    .end local v1    # "rotatedHeight":I
    :cond_1
    :goto_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0H:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/B0;->AJs(I)V

    .line 4449
    iget v4, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/10;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    new-instance v0, Lcom/facebook/ads/redexgen/X/pW;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/pW;-><init>(IIIF)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0V:Lcom/facebook/ads/redexgen/X/pW;

    .line 4450
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/G7;->A0F(F)V

    .line 4451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4452
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    .line 4453
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A08:I

    .line 4454
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0r(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A06:I

    .line 4455
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0f(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A07:I

    .line 4456
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0l(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A01:F

    .line 4457
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0Y(F)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 4458
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 4459
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0D(Lcom/facebook/ads/redexgen/X/qI;)V

    const/4 v0, 0x0

    throw v0

    .line 4460
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4461
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A07:I

    goto :goto_3

    .line 4462
    :cond_3
    const/16 v2, 0x51b

    const/4 v1, 0x6

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 4463
    :cond_4
    const/16 v2, 0x6db

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .line 4464
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4465
    :cond_6
    return-void
.end method

.method public final A1w(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaCrypto;)V
    .locals 13
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomizations;
        value = {
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                value = "D40834768: [FBLite][Video] Enable low latency decoding for older Android versions"
            .end subannotation,
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                type = {
                    "TEMPORARY"
                }
                value = "Google Platform Dav1d Testing with Low Latency Decoding D62649046"
            .end subannotation
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 4466
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1e()[Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    move-object/from16 v3, p3

    invoke-direct {p0, p1, v3, v0}, Lcom/facebook/ads/redexgen/X/10;->A0A(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;[Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/Fm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0W:Lcom/facebook/ads/redexgen/X/Fm;

    .line 4467
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0W:Lcom/facebook/ads/redexgen/X/Fm;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0v:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0o:I

    .line 4468
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A08(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/Fm;ZI)Landroid/media/MediaFormat;

    move-result-object v8

    .line 4469
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 4470
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/10;->A0r(Lcom/facebook/ads/redexgen/X/B3;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 4471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 4472
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0q:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/facebook/ads/redexgen/X/B3;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "yiNR3QranPnEQfiPRrhMyH37rGbgy01y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    .line 4473
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "LRboFGG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hwnKdFV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    .line 4474
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v5, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0I:Z

    const/4 v7, 0x0

    const/16 v2, 0x56e

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    if-eqz v5, :cond_7

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 4475
    invoke-virtual {v0, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    .line 4476
    .local v1, "isLowLatencyDecodingSupported":Z
    :goto_0
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    .line 4477
    const/16 v2, 0x49d

    const/16 v1, 0x1c

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0B:Z

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 4478
    .local v2, "disableLowLatencyDecodingForPlatformDav1d":Z
    :cond_2
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1e

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0J:Z

    if-eqz v0, :cond_4

    :cond_3
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    .line 4479
    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 4480
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "hfJ3VMX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "92OmzWl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4481
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Fo;->A06(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v8

    .line 4483
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4484
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    .line 4485
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "vjf6uovaHCWDHHkpYfphkXQkMzg9bbjD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "sOVWNDiAOc7Hvgm0kOVhLN9DKu4y3eSs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Fo;->A07()Landroid/view/Surface;

    const/4 v0, 0x0

    throw v0

    .line 4486
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "U57WE1Icqa5Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 4487
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4488
    :cond_9
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/10;->A0Y:Ljava/lang/Object;

    move-object/from16 v10, p4

    move-object v7, p2

    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/B0;->A58(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V

    .line 4489
    sget v3, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "mXryJuZr86dScF3AeNkyss5tnbfSKjka"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x17

    if-lt v3, v0, :cond_a

    :goto_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    if-eqz v0, :cond_a

    .line 4490
    new-instance v0, Lcom/facebook/ads/redexgen/X/n5;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/n5;-><init>(Lcom/facebook/ads/redexgen/X/10;Lcom/facebook/ads/redexgen/X/B0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/n5;

    .line 4491
    :cond_a
    return-void

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "iNbmoOXFYL62OfUeH4JwG1appoAFSKUM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x15

    if-lt v3, v0, :cond_a

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1x(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D45988204: [FBLite][Video] Add Codec Hooks for Logging"
    .end annotation

    .line 4492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/GP;->A0F(Ljava/lang/String;)V

    .line 4493
    return-void
.end method

.method public final A1y(Ljava/lang/String;JJ)V
    .locals 9

    .line 4494
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    move-wide v7, p4

    move-wide v5, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/GP;->A0G(Ljava/lang/String;JJ)V

    .line 4495
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/10;->A0u(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0b:Z

    .line 4496
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0w:Z

    if-eqz v0, :cond_1

    .line 4497
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "TMyTJm2xfuZjG3FrE9xxFPlKyVDcqwcD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "gYDTbLVVgSlIu0qIAiA5ri17AONkCNH7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Fo;->A0E(Ljava/lang/String;)V

    .line 4498
    :cond_1
    return-void
.end method

.method public final A1z(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "D60404164: Merge init calls in the renderer"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/GP;->A0F(Ljava/lang/String;)V

    .line 4500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4501
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1i()J

    move-result-wide v0

    invoke-virtual {v2, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Fo;->A0J(Lcom/facebook/ads/redexgen/X/qI;J)Z

    .line 4502
    :cond_0
    return-void
.end method

.method public final A20()Z
    .locals 5

    .line 4503
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0a:Z

    if-eqz v0, :cond_0

    .line 4504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0Q:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x1f4

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 4505
    :goto_0
    return v0

    .line 4506
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A22()Z
    .locals 1

    .line 4507
    const/4 v0, 0x1

    return v0
.end method

.method public final A23(JJLcom/facebook/ads/redexgen/X/B0;Ljava/nio/ByteBuffer;IIJZZ)Z
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4508
    move-wide/from16 v2, p9

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/10;->A0I()V

    .line 4509
    iget-wide v4, v8, Lcom/facebook/ads/redexgen/X/10;->A0L:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    move-wide/from16 v4, p1

    if-nez v0, :cond_0

    .line 4510
    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/10;->A0L:J

    .line 4511
    :cond_0
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/10;->A0N:J

    cmp-long v9, v2, v0

    if-eqz v9, :cond_2

    .line 4512
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    sget-object v9, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v9, v0

    const/4 v0, 0x7

    aget-object v9, v9, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v9, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "L0kRAN56GCoM9aTEFIfEof2AhWTAPhww"

    const/4 v0, 0x6

    aput-object v1, v9, v0

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4513
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/10;->A0s:Lcom/facebook/ads/redexgen/X/G7;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/G7;->A0G(J)V

    .line 4514
    :cond_1
    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/10;->A0N:J

    .line 4515
    :cond_2
    iget-wide v9, v8, Lcom/facebook/ads/redexgen/X/10;->A0R:J

    sub-long v0, v2, v9

    .line 4516
    .local v2, "presentationTimeUs":J
    const/4 v9, 0x1

    move/from16 v13, p7

    move-object/from16 v15, p5

    if-eqz p11, :cond_3

    .line 4517
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/10;->A0Z(Lcom/facebook/ads/redexgen/X/B0;IJ)V

    .line 4518
    iput-wide v6, v8, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 4519
    return v9

    .line 4520
    :cond_3
    sub-long v6, v2, v4

    .line 4521
    .local v4, "earlyUs":J
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    const/16 v22, 0x0

    if-ne v10, v9, :cond_5

    .line 4522
    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/10;->A0k(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4523
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/10;->A0Z(Lcom/facebook/ads/redexgen/X/B0;IJ)V

    .line 4524
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 4525
    const/4 v0, 0x1

    return v0

    .line 4526
    :cond_4
    return v22

    .line 4527
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v20, 0x3e8

    mul-long v16, v16, v20

    .line 4528
    .local v16, "elapsedRealtimeNowUs":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/AE;->A9A()I

    move-result v10

    const/4 v9, 0x2

    if-ne v10, v9, :cond_8

    const/4 v14, 0x1

    .line 4529
    .local v23, "isStarted":Z
    :goto_0
    iget-boolean v9, v8, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    move/from16 v23, p12

    if-eqz v9, :cond_7

    if-eqz v14, :cond_e

    .end local v2    # "presentationTimeUs":J
    .local v24, "presentationTimeUs":J
    iget-wide v11, v8, Lcom/facebook/ads/redexgen/X/10;->A0P:J

    sub-long v9, v16, v11

    .line 4530
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/10;->A0p(JJ)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v5, 0x15

    sget-object v4, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v4, v2

    const/4 v2, 0x7

    aget-object v4, v4, v2

    const/16 v2, 0x17

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v3, "Ca6wrlcfbPJTUKGkRuSnscA1gW8xLMZW"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4531
    .end local v2
    .restart local v10
    :goto_1
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4532
    .local v1, "notifyFrameMetaDataListener":Z
    iget-object v5, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v6, v8, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    sget-object v3, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0x1d

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x78

    if-eq v3, v2, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v3, "ALWZkOReLcoODcDx9aoBhmHDBkFgQP5j"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    move/from16 v2, v23

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Fo;->A0K(Lcom/facebook/ads/redexgen/X/qI;JZ)Z

    :goto_2
    const/4 v0, 0x0

    throw v0

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v3, "ZbZVwQDkp8zHMkP4lXo6fzwP4kG7"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    move/from16 v2, v23

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Fo;->A0K(Lcom/facebook/ads/redexgen/X/qI;JZ)Z

    goto :goto_2

    .line 4533
    .end local v10
    .local v2, "presentationTimeUs":J
    :cond_7
    const/16 v5, 0x15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 4534
    :cond_8
    const/4 v14, 0x0

    goto :goto_0

    .line 4535
    .end local v1    # "notifyFrameMetaDataListener":Z
    :cond_9
    const/16 v21, 0x1

    .line 4536
    .local v19, "notifyFrameMetaDataListener":Z
    sget v4, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-lt v4, v5, :cond_b

    .line 4537
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    .line 4538
    move-object/from16 v14, p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "earlyUs":J
    .local v24, "earlyUs":J
    :try_start_1
    move/from16 v16, v13

    move-wide/from16 v17, v0

    move-object v15, v15

    invoke-direct/range {v14 .. v21}, Lcom/facebook/ads/redexgen/X/10;->A0b(Lcom/facebook/ads/redexgen/X/B0;IJJZ)V

    goto :goto_4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4539
    :catch_0
    move-exception v1

    goto :goto_3

    .end local v24    # "earlyUs":J
    .restart local v4    # "earlyUs":J
    :catch_1
    move-exception v1

    .line 4540
    .end local v4    # "earlyUs":J
    .restart local v0
    .restart local v24    # "earlyUs":J
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/10;->A0g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4541
    return v22

    .line 4542
    :cond_a
    throw v1

    .line 4543
    .end local v4
    .restart local v24    # "earlyUs":J
    :cond_b
    :try_start_2
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/10;->A0X(Lcom/facebook/ads/redexgen/X/B0;IJ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4544
    :goto_4
    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 4545
    const/4 v0, 0x1

    return v0

    .line 4546
    :catch_2
    move-exception v1

    .line 4547
    .restart local v0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/10;->A0g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4548
    return v22

    .line 4549
    :cond_c
    throw v1

    .line 4550
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4551
    .end local v2    # "presentationTimeUs":J
    .restart local v24    # "earlyUs":J
    :cond_e
    if-eqz v14, :cond_f

    iget-wide v9, v8, Lcom/facebook/ads/redexgen/X/10;->A0L:J

    cmp-long v11, v4, v9

    if-nez v11, :cond_10

    .line 4552
    .end local v24    # "earlyUs":J
    .restart local v10
    :cond_f
    return v22

    .line 4553
    :cond_10
    move-wide/from16 v9, p3

    sub-long v16, v16, v9

    .line 4554
    .local v26, "elapsedSinceStartOfLoopUs":J
    sub-long v6, v6, v16

    .line 4555
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 4556
    .local v28, "systemTimeNs":J
    mul-long v16, v6, v20

    add-long v11, v18, v16

    .line 4557
    .local v2, "unadjustedFrameReleaseTimeNs":J
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/10;->A0t:Lcom/facebook/ads/redexgen/X/GA;

    .line 4558
    invoke-virtual {v14, v2, v3, v11, v12}, Lcom/facebook/ads/redexgen/X/GA;->A07(JJ)J

    move-result-wide v28

    .line 4559
    .local v30, "adjustedReleaseTimeNs":J
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v11

    if-nez v11, :cond_11

    .line 4560
    sub-long v6, v28, v18

    sget-object v12, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v12, v12, v11

    const/16 v11, 0x14

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v11, 0x73

    if-eq v12, v11, :cond_13

    sget-object v14, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v12, "i4qTewa8ZWbDA8s4kXcKcwjveHudTAS9"

    const/4 v11, 0x6

    aput-object v12, v14, v11

    div-long v6, v6, v20

    .line 4561
    :cond_11
    :goto_5
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/10;->A0n(JJ)Z

    move-result v16

    sget-object v14, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v12, v14, v11

    const/4 v11, 0x0

    aget-object v11, v14, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v12, v11, :cond_14

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    sget-object v14, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v12, "gEfAYqDTponyW9gbewcXscS7fdpN1mCh"

    const/4 v11, 0x1

    aput-object v12, v14, v11

    div-long v6, v6, v20

    goto :goto_5

    :cond_14
    sget-object v14, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v12, "x3sCqHu2x6JsDcuqwdAUHQ0k2SaVNxNE"

    const/4 v11, 0x4

    aput-object v12, v14, v11

    const-string v12, "ynqO8npVIpgyPmtNsd5sQ1b1Keqzobw0"

    const/4 v11, 0x7

    aput-object v12, v14, v11

    if-eqz v16, :cond_16

    .line 4562
    const/16 v12, 0x15

    sget-object v14, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v11, v14, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v11, 0x15

    if-eq v14, v11, :cond_15

    sget-object v16, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v14, "Im0K8TG4eXiLHobEoWn7h9VZsIuUdU0F"

    const/4 v11, 0x2

    aput-object v14, v16, v11

    move-object/from16 v30, p0

    .end local v2    # "unadjustedFrameReleaseTimeNs":J
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .local v32, "presentationTimeUs":J
    move-object/from16 v31, v15

    move/from16 v32, v13

    .end local v4
    .local v10, "earlyUs":J
    move-wide/from16 v33, v0

    move-wide/from16 v35, v4

    invoke-direct/range {v30 .. v36}, Lcom/facebook/ads/redexgen/X/10;->A0q(Lcom/facebook/ads/redexgen/X/B0;IJJ)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 4563
    :goto_6
    return v22

    :cond_15
    sget-object v16, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v14, "TqRORNfXADShgAM6oQQosmDa9t1KVXi2"

    const/4 v11, 0x1

    aput-object v14, v16, v11

    move-object/from16 v30, p0

    .end local v2
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .local v32, "presentationTimeUs":J
    move-object/from16 v31, v15

    move/from16 v32, v13

    .end local v4
    .local v10, "earlyUs":J
    move-wide/from16 v33, v0

    move-wide/from16 v35, v4

    invoke-direct/range {v30 .. v36}, Lcom/facebook/ads/redexgen/X/10;->A0q(Lcom/facebook/ads/redexgen/X/B0;IJJ)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_6

    .line 4564
    .end local v10    # "earlyUs":J
    .end local v32    # "presentationTimeUs":J
    .restart local v2    # "unadjustedFrameReleaseTimeNs":J
    .restart local v4    # "earlyUs":J
    .local v24, "presentationTimeUs":J
    :cond_16
    const/16 v12, 0x15

    .line 4565
    .end local v2    # "unadjustedFrameReleaseTimeNs":J
    .end local v4    # "earlyUs":J
    .restart local v10    # "earlyUs":J
    .local v24, "unadjustedFrameReleaseTimeNs":J
    .restart local v32    # "presentationTimeUs":J
    :cond_17
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/facebook/ads/redexgen/X/10;->A0o(JJ)Z

    move-result v17

    sget-object v14, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v14, v14, v11

    const/16 v11, 0x14

    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v11, 0x73

    if-eq v14, v11, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    sget-object v16, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v14, "PbABcFTeATAG8BdJ5MobsRcJEcYTdsNJ"

    const/4 v11, 0x1

    aput-object v14, v16, v11

    if-eqz v17, :cond_19

    .line 4566
    .end local v32    # "presentationTimeUs":J
    .local v5, "presentationTimeUs":J
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/10;->A0W(Lcom/facebook/ads/redexgen/X/B0;IJ)V

    .line 4567
    const/4 v0, 0x1

    return v0

    .line 4568
    .end local v5    # "presentationTimeUs":J
    .restart local v32    # "presentationTimeUs":J
    .end local v32    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    :cond_19
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 4569
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    sget-object v3, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x73

    if-eq v3, v2, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    sget-object v6, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v3, "xPxknUi3OsFzLFKEvylwNjXsMhIdmdKw"

    const/4 v2, 0x6

    aput-object v3, v6, v2

    .end local v10    # "earlyUs":J
    .local v21, "earlyUs":J
    invoke-virtual {v7, v4, v5, v9, v10}, Lcom/facebook/ads/redexgen/X/Fo;->A0B(JJ)V

    .line 4570
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    move/from16 v2, v23

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Fo;->A0K(Lcom/facebook/ads/redexgen/X/qI;JZ)Z

    const/4 v0, 0x0

    throw v0

    .line 4571
    .end local v21    # "earlyUs":J
    .restart local v10    # "earlyUs":J
    .end local v5    # "presentationTimeUs":J
    .end local v10    # "earlyUs":J
    .restart local v21    # "earlyUs":J
    .restart local v32    # "presentationTimeUs":J
    :cond_1b
    sget v9, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-lt v9, v12, :cond_1e

    .line 4572
    const-wide/32 v11, 0xc350

    cmp-long v10, v6, v11

    sget-object v9, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v7, v9, v6

    const/4 v6, 0x7

    aget-object v9, v9, v6

    const/16 v6, 0x17

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v7, v6, :cond_1c

    sget-object v9, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v7, "ZYuml2WQS49YsB2SRefxlPdxR9rLTqpk"

    const/4 v6, 0x6

    aput-object v7, v9, v6

    if-gez v10, :cond_21

    .line 4573
    :goto_7
    move-object/from16 v23, p0

    goto :goto_8

    :cond_1c
    if-gez v10, :cond_21

    goto :goto_7

    :goto_8
    :try_start_3
    move/from16 v25, v13

    move-wide/from16 v26, v0

    move-object/from16 v24, v15

    invoke-direct/range {v23 .. v29}, Lcom/facebook/ads/redexgen/X/10;->A0a(Lcom/facebook/ads/redexgen/X/B0;IJJ)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4574
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 4575
    const/4 v0, 0x1

    return v0

    .line 4576
    :catch_3
    move-exception v1

    .line 4577
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/10;->A0g()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4578
    return v22

    .line 4579
    :cond_1d
    throw v1

    .line 4580
    :cond_1e
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v16, 0x7530

    cmp-long v11, v6, v16

    if-gez v11, :cond_21

    .line 4581
    const-wide/16 v3, 0x2af8

    cmp-long v2, v6, v3

    if-lez v2, :cond_1f

    .line 4582
    const-wide/16 v2, 0x2710

    sub-long/2addr v6, v2

    :try_start_4
    div-long v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_9
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4583
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4584
    return v22

    .line 4585
    .end local v32    # "presentationTimeUs":J
    .local v4, "presentationTimeUs":J
    :cond_1f
    :goto_9
    :try_start_5
    invoke-direct {v8, v15, v13, v0, v1}, Lcom/facebook/ads/redexgen/X/10;->A0X(Lcom/facebook/ads/redexgen/X/B0;IJ)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4586
    iput-wide v9, v8, Lcom/facebook/ads/redexgen/X/10;->A0K:J

    .line 4587
    const/4 v0, 0x1

    return v0

    .line 4588
    :catch_5
    move-exception v1

    .line 4589
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/10;->A0g()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4590
    return v22

    .line 4591
    :cond_20
    throw v1

    .line 4592
    .end local v32
    .restart local v4    # "presentationTimeUs":J
    :cond_21
    sub-long/2addr v2, v4

    .line 4593
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    const/high16 v9, -0x40800000    # -1.0f

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_22

    sget-object v6, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "GJYVSkrq4PYvrBUDuc6fvsIBQLmbbZax"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    cmpl-float v0, v7, v9

    if-eqz v0, :cond_23

    :goto_a
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    .line 4594
    :goto_b
    move-object/from16 v6, p0

    .end local v4    # "presentationTimeUs":J
    .local v10, "presentationTimeUs":J
    move-wide v7, v4

    move-wide v9, v2

    move v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/10;->A0R(JJF)V

    .line 4595
    return v22

    :cond_22
    sget-object v6, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "FfF70zljYTd7nA7n6wc9JJE9WyzKMeyw"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    cmpl-float v0, v7, v9

    if-eqz v0, :cond_23

    goto :goto_a

    .line 4596
    :cond_23
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_b
.end method

.method public final A25(Lcom/facebook/ads/redexgen/X/B3;)Z
    .locals 1

    .line 4597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0Z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4598
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/10;->A0r(Lcom/facebook/ads/redexgen/X/B3;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 4599
    :goto_0
    return v0

    .line 4600
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A26(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation

    .line 4601
    invoke-static {p1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4602
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A09:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 4603
    :cond_0
    iget v1, p1, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    .line 4604
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A0A()Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v1

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->A02(I)Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    .line 4605
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 4606
    :cond_1
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A27()V
    .locals 2

    .line 4607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0j:Z

    .line 4608
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    if-nez v0, :cond_0

    .line 4609
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    .line 4610
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0u:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->A0D(Ljava/lang/Object;)V

    .line 4611
    :cond_0
    return-void
.end method

.method public final A28(JJZ)Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Required for VideoProcessorManager migration"
    .end annotation

    .line 4612
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/10;->A0k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9i(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4613
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4614
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/10;->A0U(Landroid/view/Surface;)V

    .line 4615
    :cond_0
    :goto_0
    return-void

    .line 4616
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 4617
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0H:I

    .line 4618
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v1

    .line 4619
    .local v0, "codec":Lcom/facebook/ads/redexgen/X/B0;
    if-eqz v1, :cond_0

    .line 4620
    iget v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0H:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/B0;->AJs(I)V

    goto :goto_0

    .line 4621
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 4622
    check-cast p2, Lcom/facebook/ads/redexgen/X/G2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/10;->A0X:Lcom/facebook/ads/redexgen/X/G2;

    goto :goto_0

    .line 4623
    :cond_3
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_4

    .line 4624
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/10;->A0f(Ljava/lang/Object;)V

    goto :goto_0

    .line 4625
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 4626
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4627
    .local v0, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Fo;->A0F(Ljava/util/List;)V

    .line 4628
    .end local v0    # "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    goto :goto_0

    :cond_5
    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "MccsEzjpf2F4QgbfkxLUs5z2ugRdHbCL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_8

    .line 4629
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4z;

    .line 4630
    .local v0, "outputResolution":Lcom/facebook/ads/redexgen/X/4z;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4z;->A03()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4631
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4z;->A02()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "OmulH2jEP4hpWDROHXWwsVVsUaMV65qL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 4632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Fo;->A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/4z;)V

    goto/16 :goto_0

    .line 4633
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AE;->A9i(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final AAP()Z
    .locals 2

    .line 4634
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->AAP()Z

    move-result v1

    .line 4635
    .local v0, "isEnded":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0I()Z

    move-result v0

    and-int/2addr v1, v0

    .line 4637
    :cond_0
    return v1
.end method

.method public final AAe()Z
    .locals 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomizations;
        value = {
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                value = "D18870411: Adding start stall debug reason"
            .end subannotation,
            .subannotation Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
                type = {
                    "FEATURE_LOGIC"
                }
                value = "D69547806: Only become ready once we have a surface"
            .end subannotation
        }
    .end annotation

    .line 4638
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->AAe()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eq v1, v0, :cond_1

    .line 4639
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    if-nez v0, :cond_1

    .line 4640
    sget-object v0, Lcom/facebook/ads/redexgen/X/ir;->A08:Lcom/facebook/ads/redexgen/X/ir;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0B:Lcom/facebook/ads/redexgen/X/ir;

    .line 4641
    :cond_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->AAe()Z

    move-result v0

    const/4 v8, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    .line 4642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0H()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0h:Z

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/10;->A12:[Ljava/lang/String;

    const-string v1, "iOSBWWk"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "3hctIGW"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v5, :cond_7

    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0i:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/10;->A0U:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0T:Landroid/view/Surface;

    if-eq v1, v0, :cond_6

    .line 4643
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1j()Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0k:Z

    if-eqz v0, :cond_7

    .line 4644
    :cond_6
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    .line 4645
    return v8

    .line 4646
    :cond_7
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    const/4 v1, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    .line 4647
    return v1

    .line 4648
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_9

    .line 4649
    return v8

    .line 4650
    :cond_9
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/10;->A0M:J

    .line 4651
    return v1
.end method

.method public final AIX(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4652
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/1g;->AIX(JJ)V

    .line 4653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/10;->A0r:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Fo;->A0B(JJ)V

    .line 4655
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 4656
    const/16 v2, 0x2aa

    const/16 v1, 0x17

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A0B(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
