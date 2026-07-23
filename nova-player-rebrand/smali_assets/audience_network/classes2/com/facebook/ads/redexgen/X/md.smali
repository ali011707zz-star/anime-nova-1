.class public final Lcom/facebook/ads/redexgen/X/md;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/HA;

.field public A07:Lcom/facebook/ads/redexgen/X/mf;

.field public A08:Lcom/facebook/ads/redexgen/X/ma;

.field public A09:Z

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0C:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0D:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0E:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0F:Lcom/facebook/ads/redexgen/X/mc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3258
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "imixVRybNrgJBpwbrV4yrZtrfnRN6CnJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WtIdTgOpLr9NKs5TxCGGWraEed8Ae14z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nvE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WSn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ErTHk7eYnTgSookYOy4dYMthSURbPHEq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4jyr3GyUtTi8KljoItgNNDucP2AqNlsy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x6x5cMRZdfdA3RZcYJIixT0Q9ac0Pw6j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1jBqwsY8y2xmCvig0OcgZP2KEis0q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/me;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/me;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/md;->A0H:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 99041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99042
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    .line 99043
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    .line 99044
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    .line 99045
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    .line 99046
    new-instance v0, Lcom/facebook/ads/redexgen/X/mc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    .line 99047
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    .line 99048
    return-void
.end method

.method private A00()J
    .locals 5

    .line 99049
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/md;->A09:Z

    if-eqz v0, :cond_0

    .line 99050
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/md;->A04:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v4, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "BRg"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "MUb"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/md;->A05:J

    add-long/2addr v2, v0

    .line 99051
    :goto_0
    return-wide v2

    .line 99052
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mc;->A0D()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/md;->A05:J

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/4v;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99053
    iget v1, p0, Lcom/facebook/ads/redexgen/X/md;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    .line 99054
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/md;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 99055
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/md;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 99056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/md;->A02:I

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 99057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    return-object v0

    .line 99058
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    goto :goto_0
.end method

.method private A02()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 99059
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0A:Z

    if-nez v0, :cond_0

    .line 99060
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 99061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0A:Z

    .line 99062
    :cond_0
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99063
    iget v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 99064
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:I

    .line 99065
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    .line 99066
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 99067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/ms;->AHR([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99068
    return v5

    .line 99069
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99070
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/md;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v6, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "nuvUOUbepbklYX7VO8aNhI2QGU1lTbhE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "EarG3ISTV8IaVYTIGtUgI942SJk0uODJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 99071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 99072
    .local v0, "flags":I
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 99073
    .local v5, "hasAudio":Z
    :goto_0
    and-int/lit8 v7, v1, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99074
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "imt3Psvl5i5WkMBxXJw1tYAVhho8FT7n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_3

    .line 99075
    const/4 v5, 0x1

    .line 99076
    .local v1, "hasVideo":Z
    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A07:Lcom/facebook/ads/redexgen/X/mf;

    if-nez v0, :cond_4

    .line 99077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    .line 99078
    const/16 v0, 0x8

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mf;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A07:Lcom/facebook/ads/redexgen/X/mf;

    .line 99079
    :cond_4
    const/4 v2, 0x2

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A08:Lcom/facebook/ads/redexgen/X/ma;

    if-nez v0, :cond_5

    .line 99080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    .line 99081
    invoke-interface {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ma;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ma;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A08:Lcom/facebook/ads/redexgen/X/ma;

    .line 99082
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 99083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:I

    .line 99084
    iput v2, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    .line 99085
    return v3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 99086
    const/4 v10, 0x1

    .line 99087
    .local v0, "wasConsumed":Z
    const/4 v9, 0x0

    .line 99088
    .local v1, "wasSampleOutput":Z
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/md;->A00()J

    move-result-wide v1

    .line 99089
    .local v2, "timestampUs":J
    iget v3, p0, Lcom/facebook/ads/redexgen/X/md;->A03:I

    const/16 v0, 0x8

    const/4 v6, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A07:Lcom/facebook/ads/redexgen/X/mf;

    if-eqz v0, :cond_3

    .line 99090
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/md;->A02()V

    .line 99091
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/md;->A07:Lcom/facebook/ads/redexgen/X/mf;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A01(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hu;->A00(Lcom/facebook/ads/redexgen/X/4v;J)Z

    move-result v9

    .line 99092
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/md;->A09:Z

    if-nez v0, :cond_1

    if-eqz v9, :cond_1

    .line 99093
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/md;->A09:Z

    .line 99094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mc;->A0D()J

    move-result-wide v1

    cmp-long v0, v1, v7

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/md;->A05:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "qsMwkk9xIwtWzz8Y8bf9D9RZC3dmDCSF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    neg-long v0, v3

    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/md;->A04:J

    .line 99095
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:I

    .line 99096
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    .line 99097
    return v10

    .line 99098
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 99099
    :cond_3
    iget v3, p0, Lcom/facebook/ads/redexgen/X/md;->A03:I

    const/16 v0, 0x9

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A08:Lcom/facebook/ads/redexgen/X/ma;

    if-eqz v0, :cond_4

    .line 99100
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/md;->A02()V

    .line 99101
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/md;->A08:Lcom/facebook/ads/redexgen/X/ma;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A01(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hu;->A00(Lcom/facebook/ads/redexgen/X/4v;J)Z

    move-result v9

    goto :goto_0

    .line 99102
    :cond_4
    iget v3, p0, Lcom/facebook/ads/redexgen/X/md;->A03:I

    const/16 v0, 0x12

    if-ne v3, v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0A:Z

    if-nez v0, :cond_5

    .line 99103
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A01(Lcom/facebook/ads/redexgen/X/ms;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hu;->A00(Lcom/facebook/ads/redexgen/X/4v;J)Z

    move-result v9

    .line 99104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mc;->A0D()J

    move-result-wide v2

    .line 99105
    .local v4, "durationUs":J
    cmp-long v0, v2, v7

    if-eqz v0, :cond_0

    .line 99106
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    .line 99107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mc;->A0E()[J

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0F:Lcom/facebook/ads/redexgen/X/mc;

    .line 99108
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mc;->A0F()[J

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mo;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/mo;-><init>([J[JJ)V

    .line 99109
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 99110
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/md;->A0A:Z

    goto/16 :goto_0

    .line 99111
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/md;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 99112
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    const/4 v1, 0x0

    const/16 v0, 0xb

    const/4 v4, 0x1

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/ms;->AHR([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99114
    return v1

    .line 99115
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A03:I

    .line 99117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A02:I

    .line 99118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/md;->A05:J

    .line 99119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "4ZAub2Q05bEVVYNgLvK28njcI37CKeIt"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    const-string v1, "aUQSwXMZXC0bGVhjCWvBp2fyGyckkl15"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/md;->A05:J

    or-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/md;->A05:J

    .line 99120
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/md;->A0E:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 99121
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    .line 99122
    return v4
.end method

.method public static synthetic A07()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 99123
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/md;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/md;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 0

    .line 99124
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    .line 99125
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A06:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99127
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    .line 99128
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99129
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A05(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "hEtErmVw2pGEM2VKW7DPZ3jvJ8JWR8Qp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "qL5KjU5Lqv7wAr3B2PcEEy6NtzLZKXIh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 99130
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_3

    goto :goto_1

    .line 99131
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A06(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "tWexpPkMi4voS1yCEJ5KNGfvnIQwX6NI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 99132
    return v4

    .line 99133
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A03(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99134
    goto :goto_0

    .line 99135
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;->A04(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99136
    return v4

    .line 99137
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "EltTpHvyDDt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AHb()V
    .locals 0

    .line 99138
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 4

    .line 99139
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 99140
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    .line 99141
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/md;->A09:Z

    .line 99142
    :goto_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/md;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99143
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/md;->A01:I

    goto :goto_0

    .line 99144
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/md;->A0G:[Ljava/lang/String;

    const-string v1, "RsgGxkOp5mo19RRr3aJo3NcocokVUXQ7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v1

    const v0, 0x464c56

    if-eq v1, v0, :cond_0

    .line 99148
    return v2

    .line 99149
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 99152
    return v2

    .line 99153
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 99156
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 99157
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 99158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A0C:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
