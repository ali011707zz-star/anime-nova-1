.class public final Lcom/facebook/ads/redexgen/X/7d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7b;,
        Lcom/facebook/ads/redexgen/X/7c;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Landroid/os/Looper;

.field public A04:Ljava/lang/Object;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public final A0B:Lcom/facebook/ads/redexgen/X/45;

.field public final A0C:Lcom/facebook/ads/redexgen/X/7b;

.field public final A0D:Lcom/facebook/ads/redexgen/X/7c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7b;Lcom/facebook/ads/redexgen/X/7c;Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/45;Landroid/os/Looper;)V
    .locals 2

    .line 21376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21377
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7d;->A0C:Lcom/facebook/ads/redexgen/X/7b;

    .line 21378
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7d;->A0D:Lcom/facebook/ads/redexgen/X/7c;

    .line 21379
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7d;->A0A:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 21380
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/7d;->A03:Landroid/os/Looper;

    .line 21381
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7d;->A0B:Lcom/facebook/ads/redexgen/X/45;

    .line 21382
    iput p4, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:I

    .line 21383
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A02:J

    .line 21384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A05:Z

    .line 21385
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 21386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 21387
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A01:I

    return v0
.end method

.method public final A02()J
    .locals 2

    .line 21388
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A02:J

    return-wide v0
.end method

.method public final A03()Landroid/os/Looper;
    .locals 1

    .line 21389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A03:Landroid/os/Looper;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 1

    .line 21390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A0A:Lcom/facebook/ads/androidx/media3/common/Timeline;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/7c;
    .locals 1

    .line 21391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A0D:Lcom/facebook/ads/redexgen/X/7c;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/7d;
    .locals 6

    .line 21392
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A09:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 21393
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/7d;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 21394
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 21395
    :cond_0
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/7d;->A09:Z

    .line 21396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A0C:Lcom/facebook/ads/redexgen/X/7b;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7b;->AJC(Lcom/facebook/ads/redexgen/X/7d;)V

    .line 21397
    return-object p0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/7d;
    .locals 1

    .line 21398
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 21399
    iput p1, p0, Lcom/facebook/ads/redexgen/X/7d;->A01:I

    .line 21400
    return-object p0
.end method

.method public final A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/7d;
    .locals 1

    .line 21401
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 21402
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7d;->A04:Ljava/lang/Object;

    .line 21403
    return-object p0
.end method

.method public final A09()Ljava/lang/Object;
    .locals 1

    .line 21404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A04:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized A0A(Z)V
    .locals 1

    monitor-enter p0

    .line 21405
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A07:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A07:Z

    .line 21406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A08:Z

    .line 21407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21408
    monitor-exit p0

    return-void

    .line 21409
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/7d;
    .end local p1    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0B()Z
    .locals 1

    .line 21410
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A05:Z

    return v0
.end method

.method public final declared-synchronized A0C()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 21411
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A09:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 21412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A03:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 21413
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A08:Z

    if-nez v0, :cond_1

    .line 21414
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 21415
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/7d;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A07:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 21416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Z
    .locals 1

    monitor-enter p0

    .line 21417
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A06:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/7d;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
