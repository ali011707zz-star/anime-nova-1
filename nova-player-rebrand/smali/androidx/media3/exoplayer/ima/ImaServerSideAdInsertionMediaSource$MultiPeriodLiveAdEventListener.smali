.class Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;
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
    name = "MultiPeriodLiveAdEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V
    .locals 0

    .line 1547
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 14

    .line 1550
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    .line 1551
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object p1

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1552
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2500(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_2

    .line 1556
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object p1

    .line 1557
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 1558
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 1559
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1562
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1566
    invoke-static {v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v4

    .line 1563
    invoke-static {v1, p1, v4, v2, v3}, Landroidx/media3/exoplayer/ima/ImaUtil;->getAdGroupDurationUsForLiveAdPeriodIndex(Landroidx/media3/common/Timeline;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;ILandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v10

    .line 1569
    iget-wide v4, v2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v1, v2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 1570
    invoke-static {v4, v5, v1, v2}, Landroidx/media3/exoplayer/ima/ImaUtil;->getWindowStartTimeUs(JJ)J

    move-result-wide v1

    iget-wide v4, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v1, v4

    .line 1573
    iget-wide v3, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    :goto_0
    move-wide v7, v3

    goto :goto_1

    .line 1575
    :cond_1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToUsRounded(D)J

    move-result-wide v3

    goto :goto_0

    .line 1576
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1580
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v9

    .line 1582
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v12

    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1583
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v13

    move-wide v5, v1

    .line 1577
    invoke-static/range {v5 .. v13}, Landroidx/media3/exoplayer/ima/ImaUtil;->addLiveAdBreak(JJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 1576
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2300(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    :cond_2
    :goto_2
    return-void
.end method
