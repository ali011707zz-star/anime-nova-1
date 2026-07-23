.class Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;
.super Ljava/lang/Object;
.source "AdTagLoader.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/AdTagLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoAdPlayerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    .line 1503
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1800(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 2

    .line 1513
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to getAdProgress when using preloading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .line 1518
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1900(Landroidx/media3/exoplayer/ima/AdTagLoader;)I

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 1

    .line 1524
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$2000(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1526
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const-string v0, "loadAd"

    invoke-static {p2, v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1542
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$2200(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1544
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const-string v1, "pauseAd"

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1533
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$2100(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1535
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const-string v1, "playAd"

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    .line 1508
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1800(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1551
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$2300(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1553
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const-string v1, "stopAd"

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
