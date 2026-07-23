.class final Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;
.super Ljava/lang/Object;
.source "AdTagLoader.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/AdTagLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/exoplayer/ima/AdTagLoader$1;)V
    .locals 0

    .line 1419
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 4

    .line 1476
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    .line 1477
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "onAdError"

    if-eqz v0, :cond_0

    .line 1478
    const-string v0, "AdTagLoader"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1480
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1100(Landroidx/media3/exoplayer/ima/AdTagLoader;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1482
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1002(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1202(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    .line 1484
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1400(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    goto :goto_0

    .line 1485
    :cond_1
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaUtil;->isAdGroupLoadError(Lcom/google/ads/interactivemedia/v3/api/AdError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1487
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1489
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v2, v1, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1492
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1700(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1493
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->createForAllAds(Ljava/lang/Exception;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1702(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    .line 1495
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$600(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 3

    .line 1461
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, v1, :cond_0

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdTagLoader"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1600(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1468
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const-string v1, "onAdEvent"

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 3

    .line 1426
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1434
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1000(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1435
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->destroy()V

    return-void

    .line 1438
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1002(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1102(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 1440
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1441
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz p1, :cond_2

    .line 1442
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1444
    :cond_2
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1445
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    if-eqz p1, :cond_3

    .line 1446
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1449
    :cond_3
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 1450
    invoke-static {v2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->getAdGroupTimesUsForCuePoints(Ljava/util/List;)[J

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    .line 1449
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1202(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    .line 1451
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1400(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1453
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/AdTagLoader;

    const-string v1, "onAdsManagerLoaded"

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
