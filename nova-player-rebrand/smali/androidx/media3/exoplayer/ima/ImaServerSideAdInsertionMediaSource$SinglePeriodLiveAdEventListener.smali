.class Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinglePeriodLiveAdEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V
    .locals 0

    .line 1514
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1517
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v1

    .line 1518
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1519
    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    iget-object v4, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2500(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1523
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 1524
    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v3

    .line 1525
    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1526
    iget-object v5, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1527
    invoke-static {v5}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget-wide v5, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 1529
    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1530
    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    goto :goto_0

    .line 1531
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 1532
    :goto_0
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v7

    sub-long v8, v3, v5

    .line 1536
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToUsRounded(D)J

    move-result-wide v10

    .line 1537
    invoke-interface {v7}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v12

    .line 1538
    invoke-interface {v7}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getMaxDuration()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToUsRounded(D)J

    move-result-wide v13

    .line 1539
    invoke-interface {v7}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v15

    .line 1540
    sget-object v1, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2, v1}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1541
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v1, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-direct {v2, v1, v3}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    :cond_2
    move-object/from16 v16, v2

    .line 1534
    invoke-static/range {v8 .. v16}, Landroidx/media3/exoplayer/ima/ImaUtil;->addLiveAdBreak(JJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 1543
    iget-object v2, v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2, v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2300(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    :cond_3
    :goto_1
    return-void
.end method
