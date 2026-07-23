.class public final Lcom/facebook/ads/redexgen/X/Vk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Vi;,
        Lcom/facebook/ads/redexgen/X/Vj;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Vi;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Vj;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Vi;)V
    .locals 7

    .line 69636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69637
    const-class v0, Lcom/facebook/ads/redexgen/X/Vk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0C:Ljava/lang/String;

    .line 69638
    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A07:I

    .line 69639
    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0A:I

    .line 69640
    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:I

    .line 69641
    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    .line 69642
    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A09:I

    .line 69643
    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:I

    .line 69644
    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:I

    .line 69645
    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:I

    .line 69646
    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:I

    .line 69647
    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 69648
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Z

    .line 69649
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    .line 69650
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Ljava/util/List;

    .line 69651
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ur;->A0D(Landroid/content/Context;)I

    move-result v1

    .line 69652
    .local v1, "nativeViewabilityHistorySamplingRate":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 69653
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    .line 69654
    .end local v3
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/Vi;

    .line 69655
    return-void

    .line 69656
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U7;->A00()D

    move-result-wide v4

    .line 69657
    .local v3, "sessionRandom":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 69658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/Vi;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vi;->A7d()I

    move-result v0

    return v0
.end method

.method private A01()I
    .locals 5

    .line 69659
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 69660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 69661
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Vk;)Ljava/util/List;
    .locals 0

    .line 69662
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Vj;)V
    .locals 2

    .line 69663
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Ljava/util/List;

    monitor-enter v1

    .line 69664
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69665
    monitor-exit v1

    .line 69666
    return-void

    .line 69667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 69668
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69669
    return-void

    .line 69670
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    .line 69671
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69672
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 69673
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69674
    return-void

    .line 69675
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6a

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69676
    return-void
.end method

.method public final A06()V
    .locals 5

    .line 69677
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69678
    return-void

    .line 69679
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x68

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69680
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 69681
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69682
    return-void

    .line 69683
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x6d

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69684
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 69685
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69686
    return-void

    .line 69687
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6c

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69688
    return-void
.end method

.method public final A09()V
    .locals 5

    .line 69689
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69690
    return-void

    .line 69691
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    .line 69692
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x65

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69693
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 69694
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69695
    return-void

    .line 69696
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x69

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    .line 69697
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69698
    return-void
.end method

.method public final A0B()V
    .locals 5

    .line 69699
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69700
    return-void

    .line 69701
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x66

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69702
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
    .locals 5

    .line 69703
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Z

    if-nez v0, :cond_0

    .line 69704
    return-void

    .line 69705
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x67

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(IIILcom/facebook/ads/redexgen/X/Vh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vj;)V

    .line 69706
    sget-object v1, Lcom/facebook/ads/redexgen/X/YG;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Vk;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/T8;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69707
    return-void
.end method
