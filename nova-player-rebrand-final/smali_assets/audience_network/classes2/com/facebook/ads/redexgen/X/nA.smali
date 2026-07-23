.class public final Lcom/facebook/ads/redexgen/X/nA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/F6;
.implements Lcom/facebook/ads/redexgen/X/5t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field public static final A0G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Needed for Meta Custom getAvailableSamples"
    .end annotation
.end field

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/45;

.field public final A0C:Lcom/facebook/ads/redexgen/X/F4;

.field public final A0D:Lcom/facebook/ads/redexgen/X/FW;

.field public final A0E:Ljava/util/Map;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Upstream uses Map. Oculus doesn\'t play well with these collections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 3276
    const-wide/32 v0, 0x432380

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v0, 0x30d400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x231860

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/32 v0, 0x186a00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0xc5c10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Long;

    const/4 v13, 0x0

    aput-object v4, v0, v13

    const/4 v12, 0x1

    aput-object v3, v0, v12

    const/4 v11, 0x2

    aput-object v14, v0, v11

    const/4 v10, 0x3

    aput-object v2, v0, v10

    const/4 v9, 0x4

    aput-object v1, v0, v9

    .line 3277
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nA;->A0L:Ljava/util/List;

    .line 3278
    const-wide/32 v0, 0x155cc0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/32 v0, 0xf1b30

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/32 v0, 0xb2390

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x7c830

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0x38270

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v8, v0, v13

    aput-object v7, v0, v12

    aput-object v3, v0, v11

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    .line 3279
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nA;->A0G:Ljava/util/List;

    .line 3280
    const-wide/32 v0, 0x200b20

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v0, 0xd9490

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0x9c400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v3, v0, v13

    aput-object v8, v0, v12

    aput-object v6, v0, v11

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    .line 3281
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nA;->A0H:Ljava/util/List;

    .line 3282
    const-wide/32 v0, 0x27ac40

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v0, 0x19f0a0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x13d620

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0xaae60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v4, v0, v13

    aput-object v3, v0, v12

    aput-object v2, v0, v11

    aput-object v6, v0, v10

    aput-object v1, v0, v9

    .line 3283
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nA;->A0I:Ljava/util/List;

    .line 3284
    const-wide/32 v0, 0x56f9a0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0x387520

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v2, v0, v13

    aput-object v1, v0, v12

    aput-object v14, v0, v11

    aput-object v3, v0, v10

    aput-object v7, v0, v9

    .line 3285
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nA;->A0J:Ljava/util/List;

    .line 3286
    const-wide/32 v0, 0x2ab980

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x10c8e0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0xd4670

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v4, v0, v13

    aput-object v3, v0, v12

    aput-object v8, v0, v11

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    .line 3287
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nA;->A0K:Ljava/util/List;

    .line 3288
    return-void
.end method

.method public constructor <init>()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99879
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v4, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/45;

    .line 99880
    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/nA;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/facebook/ads/redexgen/X/45;Z)V

    .line 99881
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ILcom/facebook/ads/redexgen/X/45;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/45;",
            "Z)V"
        }
    .end annotation

    .line 99882
    .local p2, "initialBitrateEstimates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99883
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/jW;->A04(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0E:Ljava/util/Map;

    .line 99884
    new-instance v0, Lcom/facebook/ads/redexgen/X/F4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F4;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0C:Lcom/facebook/ads/redexgen/X/F4;

    .line 99885
    new-instance v0, Lcom/facebook/ads/redexgen/X/FW;

    invoke-direct {v0, p3}, Lcom/facebook/ads/redexgen/X/FW;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0D:Lcom/facebook/ads/redexgen/X/FW;

    .line 99886
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/nA;->A0B:Lcom/facebook/ads/redexgen/X/45;

    .line 99887
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/nA;->A0F:Z

    .line 99888
    if-eqz p1, :cond_0

    .line 99889
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4p;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4p;

    move-result-object v2

    .line 99890
    .local v0, "networkTypeObserver":Lcom/facebook/ads/redexgen/X/4p;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4p;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A00:I

    .line 99891
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nA;->A00(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A04:J

    .line 99892
    new-instance v0, Lcom/facebook/ads/redexgen/X/nB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/nB;-><init>(Lcom/facebook/ads/redexgen/X/nA;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4p;->A0A(Lcom/facebook/ads/redexgen/X/4n;)V

    .line 99893
    .end local v0    # "networkTypeObserver":Lcom/facebook/ads/redexgen/X/4p;
    :goto_0
    return-void

    .line 99894
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A00:I

    .line 99895
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nA;->A00(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A04:J

    goto :goto_0
.end method

.method private A00(I)J
    .locals 2

    .line 99896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nA;->A0E:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 99897
    .local v0, "initialBitrateEstimate":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 99898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nA;->A0E:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 99899
    :cond_0
    if-nez v0, :cond_1

    .line 99900
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 99901
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized A01(I)V
    .locals 10

    monitor-enter p0

    .line 99902
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A00:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0F:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99903
    monitor-exit p0

    return-void

    .line 99904
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nA;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0A:Z

    if-eqz v0, :cond_1

    .line 99905
    iget p1, p0, Lcom/facebook/ads/redexgen/X/nA;->A01:I

    .line 99906
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A00:I

    if-ne v0, p1, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99907
    monitor-exit p0

    return-void

    .line 99908
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/nA;->A00:I

    .line 99909
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99910
    .end local v0
    .end local v5
    :cond_3
    monitor-exit p0

    return-void

    .line 99911
    :cond_4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nA;->A00(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A04:J

    .line 99912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0B:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v2

    .line 99913
    .local v0, "nowMs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A03:I

    if-lez v0, :cond_5

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/nA;->A07:J

    sub-long v0, v2, v4

    long-to-int v5, v0

    .line 99914
    .local v5, "sampleElapsedTimeMs":I
    :goto_0
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/nA;->A04:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/nA;->A02(IJJ)V

    .line 99915
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/nA;->A07:J

    .line 99916
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    .line 99917
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A08:J

    .line 99918
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A09:J

    .line 99919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0D:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A06()V

    goto :goto_1

    .line 99920
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99921
    :goto_1
    monitor-exit p0

    return-void

    .line 99922
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A02(IJJ)V
    .locals 8

    .line 99923
    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    if-nez v3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/nA;->A05:J

    cmp-long v0, v6, v1

    if-nez v0, :cond_0

    .line 99924
    return-void

    .line 99925
    :cond_0
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/nA;->A05:J

    .line 99926
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nA;->A0C:Lcom/facebook/ads/redexgen/X/F4;

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/F4;->A00(IJJ)V

    .line 99927
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/nA;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nA;->A01(I)V

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/5i;Z)Z
    .locals 1

    .line 99928
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5i;->A06(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized ADK(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5i;ZI)V
    .locals 4

    monitor-enter p0

    .line 99929
    :try_start_0
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/nA;->A04(Lcom/facebook/ads/redexgen/X/5i;Z)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99930
    monitor-exit p0

    return-void

    .line 99931
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    int-to-long v0, p4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/nA;->A06:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99932
    monitor-exit p0

    return-void

    .line 99933
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nA;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/pF;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/5i;
    .end local p3    # null:Z
    .end local p4    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AGG(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5i;Z)V
    .locals 16

    move-object/from16 v4, p0

    monitor-enter v4

    .line 99934
    :try_start_0
    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nA;->A04(Lcom/facebook/ads/redexgen/X/5i;Z)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99935
    monitor-exit v4

    return-void

    .line 99936
    :cond_0
    :try_start_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A03:I

    const/4 v9, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 99937
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A0B:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v2

    .line 99938
    .local v2, "nowMs":J
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/nA;->A07:J

    sub-long v0, v2, v5

    long-to-int v11, v0

    .line 99939
    .local v0, "sampleElapsedTimeMs":I
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/nA;->A09:J

    int-to-long v0, v11

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/nA;->A09:J

    .line 99940
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/nA;->A08:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/nA;->A08:J

    .line 99941
    if-lez v11, :cond_4

    .line 99942
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    long-to-float v8, v0

    const/high16 v0, 0x45fa0000    # 8000.0f

    mul-float/2addr v8, v0

    int-to-float v0, v11

    div-float/2addr v8, v0

    .line 99943
    .local v4, "bitsPerSecond":F
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/nA;->A0D:Lcom/facebook/ads/redexgen/X/FW;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    long-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    invoke-virtual {v7, v0, v8}, Lcom/facebook/ads/redexgen/X/FW;->A07(IF)V

    .line 99944
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/nA;->A09:J

    const-wide/16 v5, 0x7d0

    cmp-long v0, v7, v5

    if-gez v0, :cond_2

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/nA;->A08:J

    const-wide/32 v5, 0x80000

    cmp-long v0, v7, v5

    if-ltz v0, :cond_3

    .line 99945
    .end local v12
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/nA;->A0D:Lcom/facebook/ads/redexgen/X/FW;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FW;->A05(F)F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A04:J

    .line 99946
    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A02:I

    add-int/2addr v0, v9

    iput v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A02:I

    .line 99947
    iget-wide v12, v4, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    iget-wide v14, v4, Lcom/facebook/ads/redexgen/X/nA;->A04:J

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/nA;->A02(IJJ)V

    .line 99948
    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/nA;->A07:J

    .line 99949
    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A06:J

    .line 99950
    .end local v4    # "bitsPerSecond":F
    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A03:I

    sub-int/2addr v0, v9

    iput v0, v4, Lcom/facebook/ads/redexgen/X/nA;->A03:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99951
    monitor-exit v4

    return-void

    .line 99952
    .end local v0    # "sampleElapsedTimeMs":I
    .end local v2    # "nowMs":J
    .end local v13
    .end local v14
    .end local v15
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final declared-synchronized AGH(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5i;ZZ)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/pF;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    monitor-enter p0

    .line 99953
    :try_start_0
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/nA;->A04(Lcom/facebook/ads/redexgen/X/5i;Z)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99954
    monitor-exit p0

    return-void

    .line 99955
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A03:I

    if-nez v0, :cond_1

    .line 99956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A0B:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A07:J

    .line 99957
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/nA;
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nA;->A03:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99958
    monitor-exit p0

    return-void

    .line 99959
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/pF;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/5i;
    .end local p3    # null:Z
    .end local p4    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
