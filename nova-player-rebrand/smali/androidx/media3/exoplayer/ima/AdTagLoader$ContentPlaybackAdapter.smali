.class final Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;
.super Ljava/lang/Object;
.source "AdTagLoader.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/AdTagLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentPlaybackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/exoplayer/ima/AdTagLoader$1;)V
    .locals 0

    .line 1386
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    return-void
.end method


# virtual methods
.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 7

    .line 1390
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$200(Landroidx/media3/exoplayer/ima/AdTagLoader;)Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 1391
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_0

    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->getStringForVideoProgressUpdate(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    const-string v2, "AdTagLoader"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$400(Landroidx/media3/exoplayer/ima/AdTagLoader;)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v5}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$400(Landroidx/media3/exoplayer/ima/AdTagLoader;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 1402
    iget-object v5, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v5}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object v5

    iget-wide v5, v5, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->adPreloadTimeoutMs:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_2

    .line 1403
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1, v3, v4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$402(Landroidx/media3/exoplayer/ima/AdTagLoader;J)J

    .line 1404
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Ad preloading timed out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/Exception;)V

    .line 1405
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$600(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    return-object v0

    .line 1407
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$700(Landroidx/media3/exoplayer/ima/AdTagLoader;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 1408
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$800(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/common/Player;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 1409
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$800(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 1410
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$900(Landroidx/media3/exoplayer/ima/AdTagLoader;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1412
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$402(Landroidx/media3/exoplayer/ima/AdTagLoader;J)J

    :cond_2
    return-object v0
.end method
