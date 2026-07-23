.class public final Lcom/facebook/ads/redexgen/X/48;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/45;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11233
    sget-object v0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/48;-><init>(Lcom/facebook/ads/redexgen/X/45;)V

    .line 11234
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/45;)V
    .locals 0

    .line 11235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/48;->A01:Lcom/facebook/ads/redexgen/X/45;

    .line 11237
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 11238
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    if-nez v0, :cond_0

    .line 11239
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11240
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/48;
    :cond_0
    monitor-exit p0

    return-void

    .line 11241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 11242
    const/4 v1, 0x0

    .line 11243
    .local v0, "wasInterrupted":Z
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11244
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11245
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/48;
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v1, 0x1

    .line 11246
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 11247
    :cond_0
    if-eqz v1, :cond_1

    .line 11248
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11249
    :cond_1
    monitor-exit p0

    return-void

    .line 11250
    .end local v0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Z
    .locals 2

    monitor-enter p0

    .line 11251
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    .line 11252
    .local v0, "wasOpen":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11253
    monitor-exit p0

    return v1

    .line 11254
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/48;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()Z
    .locals 1

    monitor-enter p0

    .line 11255
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/48;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04()Z
    .locals 1

    monitor-enter p0

    .line 11256
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11257
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 11258
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    .line 11259
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11260
    monitor-exit p0

    return v0

    .line 11261
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/48;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 11262
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 11263
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 11264
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/48;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/48;->A01:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v0

    .line 11265
    .local v0, "nowMs":J
    add-long v4, v0, p1

    .line 11266
    .local v2, "endMs":J
    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    .line 11267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/48;->A00()V

    .line 11268
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    goto :goto_1

    .line 11269
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/48;->A00:Z

    if-nez v2, :cond_1

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 11270
    sub-long v2, v4, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 11271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/48;->A01:Lcom/facebook/ads/redexgen/X/45;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/45;->A6J()J

    move-result-wide v0

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11272
    :goto_1
    monitor-exit p0

    return v0

    .line 11273
    .end local v0    # "nowMs":J
    .end local v2    # "endMs":J
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
