.class public final Lcom/facebook/ads/redexgen/X/Xl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xk;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Xk;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Xj;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    .line 73016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73017
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Xj;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A02:Lcom/facebook/ads/redexgen/X/Xj;

    .line 73018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A02:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A02()V

    .line 73019
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xl;->A03:Ljava/lang/Runnable;

    .line 73020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A01:Z

    .line 73021
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Xl;)Lcom/facebook/ads/redexgen/X/Xj;
    .locals 0

    .line 73022
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A02:Lcom/facebook/ads/redexgen/X/Xj;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Xl;Lcom/facebook/ads/redexgen/X/Xk;)Lcom/facebook/ads/redexgen/X/Xk;
    .locals 0

    .line 73023
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Xl;)Ljava/lang/Runnable;
    .locals 0

    .line 73024
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 73025
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A01:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73026
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xk;-><init>(Lcom/facebook/ads/redexgen/X/Xl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73027
    monitor-exit p0

    return-void

    .line 73028
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Xl;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 73029
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Xj;
    .locals 1

    .line 73030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A02:Lcom/facebook/ads/redexgen/X/Xj;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .locals 1

    monitor-enter p0

    .line 73031
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A01:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73032
    monitor-exit p0

    return-void

    .line 73033
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    if-nez v0, :cond_1

    .line 73034
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xk;-><init>(Lcom/facebook/ads/redexgen/X/Xl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    .line 73035
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Xl;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xk;->A00()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73036
    monitor-exit p0

    return-void

    .line 73037
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .locals 1

    monitor-enter p0

    .line 73038
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A02:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A01:Z

    if-nez v0, :cond_0

    .line 73039
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xl;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73040
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Xl;
    :cond_0
    monitor-exit p0

    return-void

    .line 73041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73042
    monitor-enter p0

    .line 73043
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A01:Z

    .line 73044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    .line 73045
    .local v0, "executing":Lcom/facebook/ads/redexgen/X/Xk;
    monitor-exit p0

    .line 73046
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xk;->close()V

    .line 73048
    :cond_0
    return-void

    .line 73049
    .end local v0    # "executing":Lcom/facebook/ads/redexgen/X/Xk;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
