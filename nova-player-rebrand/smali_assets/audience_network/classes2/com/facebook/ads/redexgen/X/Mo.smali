.class public final Lcom/facebook/ads/redexgen/X/Mo;
.super Ljava/io/BufferedOutputStream;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Exo does not declare this as public but we need to as Hero\'s CacheDataSink refers to this"
.end annotation


# instance fields
.field public A00:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 52535
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52536
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 52537
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 52538
    return-void
.end method


# virtual methods
.method public final A00(Ljava/io/OutputStream;)V
    .locals 1

    .line 52539
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 52540
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mo;->out:Ljava/io/OutputStream;

    .line 52541
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->count:I

    .line 52542
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:Z

    .line 52543
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:Z

    .line 52545
    const/4 v1, 0x0

    .line 52546
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mo;->flush()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52547
    :catchall_0
    move-exception v1

    .line 52548
    .local v1, "e":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52549
    :catchall_1
    move-exception v0

    .line 52550
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 52551
    move-object v1, v0

    .line 52552
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 52553
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5C;->A11(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0

    .line 52554
    :cond_1
    return-void
.end method
