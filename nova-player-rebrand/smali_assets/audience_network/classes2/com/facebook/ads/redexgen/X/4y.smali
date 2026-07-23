.class public abstract Lcom/facebook/ads/redexgen/X/4y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public A00:Ljava/lang/Exception;

.field public A01:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public A02:Ljava/lang/Thread;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/48;

.field public final A05:Lcom/facebook/ads/redexgen/X/48;

.field public final A06:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12941
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12942
    new-instance v0, Lcom/facebook/ads/redexgen/X/48;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A05:Lcom/facebook/ads/redexgen/X/48;

    .line 12943
    new-instance v0, Lcom/facebook/ads/redexgen/X/48;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 12944
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A06:Ljava/lang/Object;

    .line 12945
    return-void
.end method

.method private A00()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 12946
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A03:Z

    if-nez v0, :cond_1

    .line 12947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 12948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A01:Ljava/lang/Object;

    return-object v0

    .line 12949
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Ljava/lang/Exception;

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 12950
    :cond_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract A01()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final A02()V
    .locals 1

    .line 12951
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A01()V

    .line 12952
    return-void
.end method

.method public abstract A03()V
.end method

.method public final cancel(Z)Z
    .locals 3

    .line 12953
    .local p1, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4y;->A06:Ljava/lang/Object;

    monitor-enter v2

    .line 12954
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A03:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12955
    .end local v2
    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 12956
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/4y;->A03:Z

    .line 12957
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4y;->A03()V

    .line 12958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A02:Ljava/lang/Thread;

    .line 12959
    .local v2, "workThread":Ljava/lang/Thread;
    if-eqz v0, :cond_2

    .line 12960
    if-eqz p1, :cond_3

    .line 12961
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 12962
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A05:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 12963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 12964
    :cond_3
    :goto_0
    monitor-exit v2

    return v1

    .line 12965
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12966
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A00()V

    .line 12967
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4y;->A00()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 12968
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 12969
    .local v0, "timeoutMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/48;->A05(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12970
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4y;->A00()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 12971
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 12972
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A03:Z

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 12973
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A03()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 12974
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :try_start_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4y;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 12975
    :try_start_1
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A03:Z

    if-eqz v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 12976
    :try_start_2
    monitor-exit v1

    goto :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12977
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 12978
    :goto_0
    return-void

    .line 12979
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A02:Ljava/lang/Thread;

    .line 12980
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 12981
    :try_start_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A05:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 12982
    const/4 v3, 0x0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4y;->A01()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A01:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 12983
    :try_start_6
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4y;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 12984
    :try_start_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 12985
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/4y;->A02:Ljava/lang/Thread;

    .line 12986
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 12987
    monitor-exit v1

    goto :goto_2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_8
    monitor-exit v1

    goto :goto_4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 12988
    :catch_0
    move-exception v0

    .line 12989
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A00:Ljava/lang/Exception;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 12990
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_a
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4y;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 12991
    :try_start_b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 12992
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/4y;->A02:Ljava/lang/Thread;

    .line 12993
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 12994
    monitor-exit v1

    .line 12995
    :goto_2
    return-void
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 12996
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :catchall_3
    move-exception v0

    :goto_3
    :try_start_c
    monitor-exit v1

    goto :goto_4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/4y;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :catchall_4
    move-exception v0

    goto :goto_3

    :goto_4
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 12997
    :catchall_5
    move-exception v2

    :try_start_e
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4y;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 12998
    :try_start_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4y;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 12999
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/4y;->A02:Ljava/lang/Thread;

    .line 13000
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 13001
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 13002
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 13003
    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 13004
    :catchall_7
    move-exception v0

    :goto_5
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 13005
    :catchall_8
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
