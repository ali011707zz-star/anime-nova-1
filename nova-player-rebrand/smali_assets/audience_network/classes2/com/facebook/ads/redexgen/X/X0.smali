.class public final Lcom/facebook/ads/redexgen/X/X0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wz;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/X0;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Wz;

.field public final A03:Lcom/facebook/ads/redexgen/X/Y0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2257
    new-instance v2, Lcom/facebook/ads/redexgen/X/Qz;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Qz;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Qv;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Qv;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/X0;-><init>(Lcom/facebook/ads/redexgen/X/Y0;Lcom/facebook/ads/redexgen/X/Wz;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/X0;->A04:Lcom/facebook/ads/redexgen/X/X0;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y0;Lcom/facebook/ads/redexgen/X/Wz;)V
    .locals 2

    .line 71811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X0;->A03:Lcom/facebook/ads/redexgen/X/Y0;

    .line 71813
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/Wz;

    .line 71814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Z

    .line 71815
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J

    .line 71816
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/X0;
    .locals 1

    .line 71817
    sget-object v0, Lcom/facebook/ads/redexgen/X/X0;->A04:Lcom/facebook/ads/redexgen/X/X0;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 71818
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Z

    .line 71819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A03:Lcom/facebook/ads/redexgen/X/Y0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Y0;->A5n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71820
    monitor-exit p0

    return-void

    .line 71821
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/X0;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .locals 2

    monitor-enter p0

    .line 71822
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71823
    monitor-exit p0

    return-void

    .line 71824
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/X0;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .locals 7

    .line 71825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A02:Lcom/facebook/ads/redexgen/X/Wz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wz;->A8M()Landroid/app/Activity;

    move-result-object v0

    .line 71826
    .local v0, "lastResumedActivity":Landroid/app/Activity;
    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 71827
    return v6

    .line 71828
    :cond_0
    const-class v5, Lcom/facebook/ads/redexgen/X/X0;

    monitor-enter v5

    .line 71829
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A01:Z

    if-eqz v0, :cond_1

    .line 71830
    monitor-exit v5

    return v6

    .line 71831
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A03:Lcom/facebook/ads/redexgen/X/Y0;

    .line 71832
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Y0;->A5n()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/X0;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x3e8

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    monitor-exit v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 71833
    :goto_1
    return v6

    .line 71834
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
