.class public final Lcom/facebook/ads/redexgen/X/na;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Hd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DN;,
        Lcom/facebook/ads/redexgen/X/DO;,
        Lcom/facebook/ads/redexgen/X/DP;
    }
.end annotation


# static fields
.field public static A0Y:[B

.field public static A0Z:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:Landroid/net/Uri;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D14652852 for LiveTrace"
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/qI;

.field public A0C:Lcom/facebook/ads/redexgen/X/qI;

.field public A0D:Lcom/facebook/ads/redexgen/X/qI;

.field public A0E:Lcom/facebook/ads/redexgen/X/9s;

.field public A0F:Lcom/facebook/ads/redexgen/X/DP;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:[I

.field public A0O:[I

.field public A0P:[I

.field public A0Q:[J

.field public A0R:[J

.field public A0S:[Lcom/facebook/ads/redexgen/X/Hb;

.field public final A0T:Lcom/facebook/ads/redexgen/X/A1;

.field public final A0U:Lcom/facebook/ads/redexgen/X/A6;

.field public final A0V:Lcom/facebook/ads/redexgen/X/DL;

.field public final A0W:Lcom/facebook/ads/redexgen/X/DN;

.field public final A0X:Lcom/facebook/ads/redexgen/X/De;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/De<",
            "Lcom/facebook/ads/redexgen/X/DO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3303
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "85R60pw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bhfqNyhgsMMcgxDZV18ZYvPWnAETveJ8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tBTQ49uE8lCvjdowyQOxeOaVlddkkQsD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cRYvTCVhA9B6pxggP4HMUODB0FrVm2He"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qWsUB7mYWdY8z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PljQg4leV4XdGi9pMhsrxdm25IT3iHNc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UH2NGYtrpmiPe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fmnhpkR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/na;->A0E()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/A1;)V
    .locals 2

    .line 100783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100784
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    .line 100785
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/na;->A0T:Lcom/facebook/ads/redexgen/X/A1;

    .line 100786
    new-instance v0, Lcom/facebook/ads/redexgen/X/DL;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;-><init>(Lcom/facebook/ads/redexgen/X/F0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    .line 100787
    new-instance v0, Lcom/facebook/ads/redexgen/X/DN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0W:Lcom/facebook/ads/redexgen/X/DN;

    .line 100788
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    .line 100789
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0P:[I

    .line 100790
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    .line 100791
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    .line 100792
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    .line 100793
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    .line 100794
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Hb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0S:[Lcom/facebook/ads/redexgen/X/Hb;

    .line 100795
    new-instance v1, Lcom/facebook/ads/redexgen/X/nb;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/nb;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/De;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/De;-><init>(Lcom/facebook/ads/redexgen/X/49;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    .line 100796
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A09:J

    .line 100797
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    .line 100798
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A07:J

    .line 100799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0L:Z

    .line 100800
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0M:Z

    .line 100801
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 100802
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    add-int/2addr v1, p1

    .line 100803
    .local v0, "relativeIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private A01(IIJZ)I
    .locals 5

    .line 100804
    const/4 v4, -0x1

    .line 100805
    .local v0, "sampleCountToTarget":I
    .local v1, "searchIndex":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v3, p2, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_1

    .line 100806
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 100807
    :cond_0
    move v4, v3

    .line 100808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p3

    if-nez v0, :cond_2

    .line 100809
    .end local v2    # "i":I
    :cond_1
    return v4

    .line 100810
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 100811
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    if-ne p1, v0, :cond_3

    .line 100812
    const/4 p1, 0x0

    .line 100813
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private A02(J)I
    .locals 5

    .line 100814
    iget v4, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    .line 100815
    .local v0, "count":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v3

    .line 100816
    .local v1, "relativeSampleIndex":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    if-le v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-ltz v0, :cond_2

    .line 100817
    add-int/lit8 v4, v4, -0x1

    .line 100818
    add-int/lit8 v3, v3, -0x1

    .line 100819
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 100820
    iget v3, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const-string v1, "AmG8zl9kQR5zaFQB0ENdPerRnzM6g9Ua"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 100821
    :cond_2
    return v4
.end method

.method private declared-synchronized A03(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;ZZLcom/facebook/ads/redexgen/X/DN;)I
    .locals 7

    monitor-enter p0

    .line 100822
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/p0;->A04:Z

    .line 100823
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0K()Z

    move-result v0

    const/4 v3, -0x5

    const/4 v2, -0x3

    const/4 v6, -0x4

    if-nez v0, :cond_4

    .line 100824
    if-nez p4, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100825
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    if-eq v1, v0, :cond_2

    .line 100826
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/6z;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/na;->A0H(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100827
    monitor-exit p0

    return v3

    .line 100828
    :cond_2
    monitor-exit p0

    return v2

    .line 100829
    :cond_3
    :goto_0
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A02(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100830
    monitor-exit p0

    return v6

    .line 100831
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/na;->A0O()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A01(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DO;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 100832
    .local v0, "format":Lcom/facebook/ads/redexgen/X/qI;
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    if-eq v1, v0, :cond_6

    .line 100833
    .end local v1
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/na;->A0H(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6z;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100834
    monitor-exit p0

    return v3

    .line 100835
    :cond_6
    :try_start_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v5

    .line 100836
    .local v1, "relativeReadIndex":I
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/na;->A0L(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 100837
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/p0;->A04:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100838
    monitor-exit p0

    return v2

    .line 100839
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    aget v0, v0, v5

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A02(I)V

    .line 100840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v0, v0, v5

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    .line 100841
    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/na;->A09:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_8

    .line 100842
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A00(I)V

    .line 100843
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    aget v0, v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 100844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    aget-wide v0, v0, v5

    iput-wide v0, p5, Lcom/facebook/ads/redexgen/X/DN;->A01:J

    .line 100845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0S:[Lcom/facebook/ads/redexgen/X/Hb;

    aget-object v0, v0, v5

    iput-object v0, p5, Lcom/facebook/ads/redexgen/X/DN;->A02:Lcom/facebook/ads/redexgen/X/Hb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100846
    monitor-exit p0

    return v6

    .line 100847
    .end local v0    # "format":Lcom/facebook/ads/redexgen/X/qI;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/p0;
    .end local p3    # null:Z
    .end local p4    # null:Z
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/DN;
    .end local p6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A04()J
    .locals 2

    monitor-enter p0

    .line 100848
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100849
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 100850
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A06(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 100851
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A05()J
    .locals 4

    monitor-enter p0

    .line 100852
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A08(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A06(I)J
    .locals 4

    .line 100853
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    .line 100854
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/na;->A08(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    .line 100855
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    .line 100856
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    .line 100857
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    .line 100858
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    if-lt v1, v0, :cond_0

    .line 100859
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    .line 100860
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    .line 100861
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    if-gez v0, :cond_1

    .line 100862
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    .line 100863
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A04(I)V

    .line 100864
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-nez v0, :cond_3

    .line 100865
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 100866
    .local v0, "relativeLastDiscardIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 100867
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    goto :goto_0

    .line 100868
    .end local v0    # "relativeLastDiscardIndex":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    aget-wide v0, v1, v0

    return-wide v0
.end method

.method private A07(I)J
    .locals 7

    .line 100869
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/na;->A0P()I

    move-result v6

    sub-int/2addr v6, p1

    .line 100870
    .local v0, "discardCount":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v6, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    sub-int/2addr v1, v0

    if-gt v6, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 100871
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    .line 100872
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A08(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A07:J

    .line 100873
    if-nez v6, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/na;->A0G:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100874
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const-string v1, "9q2py6RZjKVKU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "N5i42TN5jvK54"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 100875
    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/na;->A0G:Z

    .line 100876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A03(I)V

    .line 100877
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-eqz v0, :cond_3

    .line 100878
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v1

    .line 100879
    .local v1, "relativeLastWriteIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 100880
    .end local v1    # "relativeLastWriteIndex":I
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private A08(I)J
    .locals 6

    .line 100881
    if-nez p1, :cond_0

    .line 100882
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 100883
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 100884
    .local v0, "largestTimestampUs":J
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v0

    .line 100885
    .local v2, "relativeSampleIndex":I
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 100886
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v3, v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 100887
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    aget v3, v3, v0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 100888
    .end local v3    # "i":I
    :cond_1
    return-wide v1

    .line 100889
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 100890
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 100891
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A01:I

    add-int/lit8 v0, v0, -0x1

    .line 100892
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private declared-synchronized A09(JZZ)J
    .locals 11

    monitor-enter p0

    .line 100893
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    aget-wide v1, v1, v0

    move-wide v8, p1

    cmp-long v0, v8, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 100894
    :cond_0
    if-eqz p4, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    .end local v9
    :cond_1
    iget v7, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    .line 100895
    .local v5, "searchLength":I
    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    move-object v5, p0

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/na;->A01(IIJZ)I

    move-result v1

    .line 100896
    .local v0, "discardCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100897
    monitor-exit p0

    return-wide v3

    .line 100898
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/na;->A06(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 100899
    .end local v0    # "discardCount":I
    .end local v5    # "searchLength":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 100900
    .end local v10
    .end local p1    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 5

    .line 100901
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/na;->A08:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 100902
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v4

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A08:J

    add-long/2addr v2, v0

    .line 100903
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0s(J)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 100904
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object p1

    .line 100905
    :cond_0
    return-object p1
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/A1;)Lcom/facebook/ads/redexgen/X/na;
    .locals 3

    .line 100906
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A6;

    .line 100907
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/na;-><init>(Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/A1;)V

    .line 100908
    return-object v0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/na;->A0Y:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0D()V
    .locals 2

    .line 100909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    if-eqz v0, :cond_0

    .line 100910
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0T:Lcom/facebook/ads/redexgen/X/A1;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9s;->AHc(Lcom/facebook/ads/redexgen/X/A1;)V

    .line 100911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    .line 100912
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    .line 100913
    :cond_0
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/na;->A0Y:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x4at
        0x39t
        0x46t
        0x46t
        0x3dt
        0x38t
        0x3dt
        0x42t
        0x3bt
        -0xct
        0x49t
        0x42t
        0x39t
        0x4ct
        0x44t
        0x39t
        0x37t
        0x48t
        0x39t
        0x38t
        -0xct
        0x42t
        0x43t
        0x42t
        0x1t
        0x47t
        0x4dt
        0x42t
        0x37t
        -0xct
        0x47t
        0x35t
        0x41t
        0x44t
        0x40t
        0x39t
        -0xct
        0x3at
        0x43t
        0x46t
        -0xct
        0x3at
        0x43t
        0x46t
        0x41t
        0x35t
        0x48t
        0xet
        -0xct
        -0x3et
        -0x30t
        -0x24t
        -0x21t
        -0x25t
        -0x2ct
        -0x40t
        -0x1ct
        -0x2ct
        -0x1ct
        -0x2ct
    .end array-data
.end method

.method private declared-synchronized A0F()V
    .locals 1

    monitor-enter p0

    .line 100914
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    .line 100915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100916
    monitor-exit p0

    return-void

    .line 100917
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0G(JIJILcom/facebook/ads/redexgen/X/Hb;)V
    .locals 12

    move-object v3, p0

    monitor-enter p0

    .line 100918
    :try_start_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A02:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 100919
    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A02:I

    sub-int/2addr v0, v8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v1

    .line 100920
    .local v0, "previousSampleRelativeIndex":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    aget-wide v4, v0, v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 100921
    .end local v0    # "previousSampleRelativeIndex":I
    .end local p3    # null:I
    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0G:Z

    .line 100922
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/na;->A07:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/na;->A07:J

    .line 100923
    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v4

    .line 100924
    .local v0, "relativeEndIndex":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aput-wide p1, v0, v4

    .line 100925
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    aput-wide p4, v0, v4

    .line 100926
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    aput p6, v0, v4

    .line 100927
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    aput p3, v0, v4

    .line 100928
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0S:[Lcom/facebook/ads/redexgen/X/Hb;

    aput-object p7, v0, v4

    .line 100929
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0P:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A05:I

    aput v0, v1, v4

    .line 100930
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A06()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    .line 100931
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DO;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/qI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100932
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    if-eqz v0, :cond_5

    .line 100933
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0T:Lcom/facebook/ads/redexgen/X/A1;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/A6;->AH3(Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/A5;

    move-result-object v7

    .line 100934
    .local v6, "drmSessionReference":Lcom/facebook/ads/redexgen/X/A5;
    :goto_2
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    .line 100935
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/na;->A0P()I

    move-result v5

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    .line 100936
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/qI;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {v0, v4, v7, v1}, Lcom/facebook/ads/redexgen/X/DO;-><init>(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/A5;Lcom/facebook/ads/redexgen/X/DM;)V

    .line 100937
    invoke-virtual {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/De;->A05(ILjava/lang/Object;)V

    .line 100938
    .end local v6    # "drmSessionReference":Lcom/facebook/ads/redexgen/X/A5;
    :cond_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A02:I

    add-int/2addr v0, v8

    iput v0, v3, Lcom/facebook/ads/redexgen/X/na;->A02:I

    .line 100939
    iget v1, v3, Lcom/facebook/ads/redexgen/X/na;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A01:I

    if-ne v1, v0, :cond_6

    .line 100940
    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A01:I

    add-int/lit16 v11, v0, 0x3e8

    .line 100941
    .local v4, "newCapacity":I
    new-array v10, v11, [I

    .line 100942
    .local v6, "newSourceIds":[I
    new-array v9, v11, [J

    .line 100943
    .local v7, "newOffsets":[J
    new-array v8, v11, [J

    .line 100944
    .local v8, "newTimesUs":[J
    new-array v7, v11, [I

    .line 100945
    .local v9, "newFlags":[I
    new-array v6, v11, [I

    .line 100946
    .local v10, "newSizes":[I
    new-array v5, v11, [Lcom/facebook/ads/redexgen/X/Hb;

    .line 100947
    .local v11, "newCryptoDatas":[Lcom/facebook/ads/redexgen/X/Hb;
    iget v4, v3, Lcom/facebook/ads/redexgen/X/na;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    sub-int/2addr v4, v0

    .line 100948
    .local p0, "beforeWrap":I
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    invoke-static {v1, v0, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100949
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    invoke-static {v1, v0, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100950
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    invoke-static {v1, v0, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100951
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    invoke-static {v1, v0, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100952
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0S:[Lcom/facebook/ads/redexgen/X/Hb;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    invoke-static {v1, v0, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100953
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/na;->A0P:[I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    invoke-static {v1, v0, v10, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100954
    iget v1, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    .line 100955
    .local p1, "afterWrap":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    invoke-static {v0, v2, v9, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100956
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    invoke-static {v0, v2, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100957
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    invoke-static {v0, v2, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100958
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    invoke-static {v0, v2, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100959
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0S:[Lcom/facebook/ads/redexgen/X/Hb;

    invoke-static {v0, v2, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100960
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/na;->A0P:[I

    invoke-static {v0, v2, v10, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100961
    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/na;->A0Q:[J

    .line 100962
    iput-object v8, v3, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    .line 100963
    iput-object v7, v3, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    .line 100964
    iput-object v6, v3, Lcom/facebook/ads/redexgen/X/na;->A0O:[I

    .line 100965
    iput-object v5, v3, Lcom/facebook/ads/redexgen/X/na;->A0S:[Lcom/facebook/ads/redexgen/X/Hb;

    .line 100966
    iput-object v10, v3, Lcom/facebook/ads/redexgen/X/na;->A0P:[I

    .line 100967
    iput v2, v3, Lcom/facebook/ads/redexgen/X/na;->A04:I

    .line 100968
    iput v11, v3, Lcom/facebook/ads/redexgen/X/na;->A01:I

    goto :goto_3

    .line 100969
    :cond_5
    sget-object v7, Lcom/facebook/ads/redexgen/X/A5;->A00:Lcom/facebook/ads/redexgen/X/A5;

    goto/16 :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100970
    .end local v4    # "newCapacity":I
    .end local v6    # "newSourceIds":[I
    .end local v7    # "newOffsets":[J
    .end local v8    # "newTimesUs":[J
    .end local v9    # "newFlags":[I
    .end local v10    # "newSizes":[I
    .end local v11    # "newCryptoDatas":[Lcom/facebook/ads/redexgen/X/Hb;
    .end local p0    # "beforeWrap":I
    .end local p1    # "afterWrap":I
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 100971
    .end local v0    # "relativeEndIndex":I
    .end local p4    # null:J
    .end local p6    # null:I
    .end local p7    # null:Lcom/facebook/ads/redexgen/X/Hb;
    .end local p9
    .end local p10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6z;)V
    .locals 4

    .line 100972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 100973
    .local v0, "isFirstFormat":Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 100974
    .local v1, "oldDrmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    .line 100975
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 100976
    .local v2, "newDrmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    if-eqz v0, :cond_0

    .line 100977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/A6;->A7W(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/qI;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 100978
    :goto_2
    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 100979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/9s;

    .line 100980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    if-nez v0, :cond_3

    .line 100981
    return-void

    .line 100982
    :cond_0
    move-object v0, p1

    goto :goto_2

    .line 100983
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/qI;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    goto :goto_1

    .line 100984
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 100985
    :cond_3
    if-nez v3, :cond_5

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const-string v1, "kvzQNhfSOapIkFZHH0bucpMR2mlOE4Ro"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pNWQqJuQrvmashmvXYzFnQ0x9nljUjVN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 100986
    return-void

    .line 100987
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 100988
    .local v3, "playbackLooper":Landroid/os/Looper;
    if-nez v0, :cond_6

    .line 100989
    return-void

    .line 100990
    :cond_6
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    .line 100991
    .local p0, "previousSession":Lcom/facebook/ads/redexgen/X/9s;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0U:Lcom/facebook/ads/redexgen/X/A6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0T:Lcom/facebook/ads/redexgen/X/A1;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/A6;->A3C(Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    .line 100992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/9s;

    .line 100993
    if-eqz v2, :cond_7

    .line 100994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0T:Lcom/facebook/ads/redexgen/X/A1;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/9s;->AHc(Lcom/facebook/ads/redexgen/X/A1;)V

    .line 100995
    :cond_7
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 0

    .line 100996
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DO;->A01:Lcom/facebook/ads/redexgen/X/A5;

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/A5;->AHb()V

    return-void
.end method

.method private final A0J(Z)V
    .locals 4

    .line 100997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0A()V

    .line 100998
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    .line 100999
    iput v3, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    .line 101000
    iput v3, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    .line 101001
    iput v3, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    .line 101002
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0M:Z

    .line 101003
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A09:J

    .line 101004
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    .line 101005
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A07:J

    .line 101006
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/na;->A0G:Z

    .line 101007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A02()V

    .line 101008
    if-eqz p1, :cond_0

    .line 101009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0C:Lcom/facebook/ads/redexgen/X/qI;

    .line 101010
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    .line 101011
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0L:Z

    .line 101012
    :cond_0
    return-void
.end method

.method private A0K()Z
    .locals 2

    .line 101013
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0L(I)Z
    .locals 2

    .line 101014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    .line 101015
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A9A()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0N:[I

    aget v1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    .line 101016
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->AH1()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 101017
    :goto_0
    return v0

    .line 101018
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized A0M(J)Z
    .locals 5

    monitor-enter p0

    .line 101019
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 101020
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/na;->A06:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v4

    .line 101021
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A05()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-ltz v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101022
    monitor-exit p0

    return v3

    .line 101023
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/na;->A02(J)I

    move-result v1

    .line 101024
    .local v0, "retainCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A07(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101025
    monitor-exit p0

    return v4

    .line 101026
    .end local v0    # "retainCount":I
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0N(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 3

    monitor-enter p0

    .line 101027
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0L:Z

    .line 101028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101029
    monitor-exit p0

    return v2

    .line 101030
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    .line 101031
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DO;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DO;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    .line 101033
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    .line 101034
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A0G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0J:Z

    .line 101035
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0H:Z

    goto :goto_1

    .line 101036
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101037
    :goto_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 101038
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/qI;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A0O()I
    .locals 2

    .line 101039
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0P()I
    .locals 2

    .line 101040
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final declared-synchronized A0Q(JZ)I
    .locals 10

    monitor-enter p0

    .line 101041
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v5

    .line 101042
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0K()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 101043
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/na;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    .line 101044
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 101045
    .end local v8
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    sub-int/2addr v6, v0

    .line 101046
    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/na;->A01(IIJZ)I

    move-result v1

    .line 101047
    .local v1, "offset":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101048
    monitor-exit p0

    return v3

    .line 101049
    :cond_2
    monitor-exit p0

    return v1

    .line 101050
    .end local v1    # "offset":I
    :cond_3
    :goto_0
    monitor-exit p0

    return v3

    .line 101051
    .end local v0    # "relativeReadIndex":I
    .end local v9
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;IZ)I
    .locals 11

    .line 101052
    and-int/lit8 v0, p3, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_0
    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/na;->A0W:Lcom/facebook/ads/redexgen/X/DN;

    .line 101053
    move-object v5, p0

    move v9, p4

    move-object v7, p2

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/na;->A03(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;ZZLcom/facebook/ads/redexgen/X/DN;)I

    move-result v2

    .line 101054
    .local v0, "result":I
    const/4 v0, -0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101055
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 101056
    .local v1, "peek":Z
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_1

    .line 101057
    if-eqz v4, :cond_3

    .line 101058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0W:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0E(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;)V

    .line 101059
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 101060
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    .line 101061
    .end local v1    # "peek":Z
    :cond_2
    return v2

    .line 101062
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0W:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0F(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/DN;)V

    goto :goto_1

    .line 101063
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized A0S()J
    .locals 2

    monitor-enter p0

    .line 101064
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A04:I

    aget-wide v0, v1, v0

    goto :goto_1

    :goto_0
    const-wide/high16 v0, -0x8000000000000000L
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0T()J
    .locals 2

    monitor-enter p0

    .line 101065
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/na;->A07:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0U()Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    monitor-enter p0

    .line 101066
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0L:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    goto :goto_1

    :goto_0
    const/4 v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0V()V
    .locals 3

    .line 101067
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A0C(J)V

    .line 101068
    return-void
.end method

.method public final A0W()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A9A()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 101070
    :cond_0
    return-void

    .line 101071
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0E:Lcom/facebook/ads/redexgen/X/9s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A80()Lcom/facebook/ads/redexgen/X/9q;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9q;

    throw v0
.end method

.method public final A0X()V
    .locals 0

    .line 101072
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/na;->A0V()V

    .line 101073
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0D()V

    .line 101074
    return-void
.end method

.method public final A0Y()V
    .locals 1

    .line 101075
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A0J(Z)V

    .line 101076
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0D()V

    .line 101077
    return-void
.end method

.method public final A0Z()V
    .locals 1

    .line 101078
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A0J(Z)V

    .line 101079
    return-void
.end method

.method public final declared-synchronized A0a(I)V
    .locals 2

    monitor-enter p0

    .line 101080
    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    add-int/2addr v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .restart local p1    # null:I
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 101081
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101082
    monitor-exit p0

    return-void

    .line 101083
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    .end local p1
    monitor-exit p0

    throw v0
.end method

.method public final A0b(J)V
    .locals 0

    .line 101084
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/na;->A09:J

    .line 101085
    return-void
.end method

.method public final A0c(JZZ)V
    .locals 3

    .line 101086
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    .line 101087
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/na;->A09(JZZ)J

    move-result-wide v0

    .line 101088
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A0C(J)V

    .line 101089
    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/DP;)V
    .locals 0

    .line 101090
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/na;->A0F:Lcom/facebook/ads/redexgen/X/DP;

    .line 101091
    return-void
.end method

.method public final declared-synchronized A0e()Z
    .locals 1

    monitor-enter p0

    .line 101092
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0f(JZ)Z
    .locals 10

    monitor-enter p0

    .line 101093
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0F()V

    .line 101094
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v5

    .line 101095
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0K()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0R:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/na;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_1

    if-nez p3, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101096
    .end local v1
    .end local v8
    :cond_0
    monitor-exit p0

    return v3

    .line 101097
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/facebook/ads/redexgen/X/na;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    sub-int/2addr v6, v0

    .line 101098
    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/na;->A01(IIJZ)I

    move-result v1

    .line 101099
    .local v1, "offset":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101100
    monitor-exit p0

    return v3

    .line 101101
    :cond_2
    :try_start_2
    iput-wide v7, p0, Lcom/facebook/ads/redexgen/X/na;->A09:J

    .line 101102
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101103
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 101104
    .end local v0    # "relativeReadIndex":I
    .end local v9
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0g(Z)Z
    .locals 3

    monitor-enter p0

    .line 101105
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/na;->A0K()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 101106
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    if-eq v1, v0, :cond_0

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/na;
    :cond_0
    const/4 v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 101107
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/na;->A0X:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/na;->A0O()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A01(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DO;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0B:Lcom/facebook/ads/redexgen/X/qI;

    if-eq v1, v0, :cond_3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101108
    monitor-exit p0

    return v2

    .line 101109
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/na;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A00(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/na;->A0L(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 101110
    .end local p1    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6e(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3

    .line 101111
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/na;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v2

    .line 101112
    .local v0, "adjustedUpstreamFormat":Lcom/facebook/ads/redexgen/X/qI;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0K:Z

    .line 101113
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/na;->A0C:Lcom/facebook/ads/redexgen/X/qI;

    .line 101114
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/na;->A0N(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v1

    .line 101115
    .local v1, "upstreamFormatChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0F:Lcom/facebook/ads/redexgen/X/DP;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 101116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0F:Lcom/facebook/ads/redexgen/X/DP;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/DP;->AGL(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 101117
    :cond_0
    return-void
.end method

.method public final synthetic AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ha;->A00(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v0

    return v0
.end method

.method public final AIq(Lcom/facebook/ads/redexgen/X/2c;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DL;->A08(Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v0

    return v0
.end method

.method public final synthetic AIr(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ha;->A01(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/4v;I)V

    return-void
.end method

.method public final AIs(Lcom/facebook/ads/redexgen/X/4v;II)V
    .locals 1

    .line 101119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 101120
    return-void
.end method

.method public final AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V
    .locals 15

    .line 101121
    move/from16 v10, p3

    move-wide/from16 v8, p1

    move-object v5, p0

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0K:Z

    if-eqz v0, :cond_0

    .line 101122
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0C:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/na;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 101123
    :cond_0
    and-int/lit8 v0, v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 101124
    .local v9, "isKeyframe":Z
    :goto_0
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0M:Z

    if-eqz v0, :cond_3

    .line 101125
    if-nez v7, :cond_2

    .line 101126
    return-void

    .line 101127
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 101128
    :cond_2
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/na;->A0M:Z

    .line 101129
    :cond_3
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/na;->A08:J

    add-long/2addr v8, v0

    .line 101130
    .end local p3    # null:I
    .local v10, "timeUs":J
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0J:Z

    if-eqz v0, :cond_6

    .line 101131
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/na;->A09:J

    cmp-long v2, v8, v0

    if-gez v2, :cond_4

    .line 101132
    return-void

    .line 101133
    :cond_4
    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_6

    .line 101134
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0H:Z

    if-nez v0, :cond_5

    .line 101135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/na;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0D:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0xb

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/na;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 101136
    iput-boolean v6, v5, Lcom/facebook/ads/redexgen/X/na;->A0H:Z

    .line 101137
    :cond_5
    or-int/lit8 v10, v10, 0x1

    .line 101138
    .end local p5    # null:I
    .local v0, "flags":I
    .end local p5
    .local v12, "flags":I
    :cond_6
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0I:Z

    if-eqz v0, :cond_a

    .line 101139
    if-eqz v7, :cond_8

    invoke-direct {v5, v8, v9}, Lcom/facebook/ads/redexgen/X/na;->A0M(J)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const-string v1, "Q9ljdKDjpshc47nqlMYBFO0YDotnOqX8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_9

    .line 101140
    :cond_8
    return-void

    .line 101141
    :cond_9
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/na;->A0I:Z

    .line 101142
    :cond_a
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/na;->A0V:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A09()J

    move-result-wide v11

    sget-object v1, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_b

    goto :goto_1

    .line 101143
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/na;->A0Z:[Ljava/lang/String;

    const-string v1, "281h4YOhy96mUgaRFHojQOWi7hgLUzVm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move/from16 v13, p4

    int-to-long v0, v13

    sub-long/2addr v11, v0

    move/from16 v0, p5

    int-to-long v0, v0

    sub-long/2addr v11, v0

    .line 101144
    .local p0, "absoluteOffset":J
    move-object v7, p0

    move-object/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/na;->A0G(JIJILcom/facebook/ads/redexgen/X/Hb;)V

    .line 101145
    return-void
.end method

.method public final AKf(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D14652852 for LiveTrace"
    .end annotation

    .line 101146
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/na;->A0A:Landroid/net/Uri;

    .line 101147
    return-void
.end method
