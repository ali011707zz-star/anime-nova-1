.class public final Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;
.super Ljava/lang/Object;
.source "HlsInterstitialsAdsLoader.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ads/AdsLoader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsMediaSourceFactory;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Asset;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HlsInterstitiaAdsLoader"

.field private static final TARGET_DURATION_MULTIPLIER:I = 0x3


# instance fields
.field private final contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private isReleased:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Landroidx/media3/exoplayer/upstream/Loader;

.field private pendingAssetListResolutionMessage:Landroidx/media3/exoplayer/PlayerMessage;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

.field private final resumptionStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7PPZkThxqGjQlTnoYiyQkfSdpQk(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 928
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onStart(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQEHO-MOdOeaymvzxqVJ0dmIa-E(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/AdPlaybackState;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 1083
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 1084
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object p0

    .line 1085
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    .line 1082
    invoke-interface {p2, v0, p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onStop(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P5iexfxYt8qAhcdmtwVIupbF43Y(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 1034
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    .line 1033
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onPrepareCompleted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RGbL5vyELvRiULjBx1Q9pHiNbpQ(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;ILjava/lang/Object;)V
    .locals 0

    .line 1188
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$UtrtXqew7JKHXdXYVinV36lVmzs(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILjava/io/IOException;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 1053
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, v0

    .line 1052
    invoke-interface/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onPrepareError(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILjava/io/IOException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elELrk0_zTJjbMtOMBXI674ouZc(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 3

    .line 1136
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->access$1600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 1137
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->access$1200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)Ljava/lang/Object;

    move-result-object v1

    .line 1138
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->access$1300(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)I

    move-result v2

    .line 1139
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->access$1400(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)I

    move-result p0

    .line 1135
    invoke-interface {p1, v0, v1, v2, p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAssetListLoadStarted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWOUgidLGDGyviZ_b41xamVh-Y4(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/util/Map;Ljava/lang/Long;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1208
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->startLoadingAssetList(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$lcPX3xmG84NFgODdyNXngsbbDH4(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 1021
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onContentTimelineChanged(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 558
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 568
    new-instance p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    .line 569
    new-instance p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 570
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    .line 571
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;Landroidx/media3/common/Timeline;IJJ)V
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->maybeExecuteOrSetNextAssetListResolutionMessage(Ljava/lang/Object;Landroidx/media3/common/Timeline;IJJ)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;II)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyAssetResolutionFailed(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->cancelPendingAssetListResolutionMessage()V

    return-void
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;JLandroidx/media3/common/Timeline;I)J
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getUnresolvedAssetListWindowPositionForContentPositionUs(JLandroidx/media3/common/Timeline;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private cancelPendingAssetListResolutionMessage()V
    .locals 1

    .line 1217
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->pendingAssetListResolutionMessage:Landroidx/media3/exoplayer/PlayerMessage;

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->cancel()Landroidx/media3/exoplayer/PlayerMessage;

    const/4 v0, 0x0

    .line 1219
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->pendingAssetListResolutionMessage:Landroidx/media3/exoplayer/PlayerMessage;

    :cond_0
    return-void
.end method

.method private filterAndSortWithResolvedStartPositions(Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JZ)Landroid/util/LongSparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList;",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JZ)",
            "Landroid/util/LongSparseArray<",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;",
            ">;>;"
        }
    .end annotation

    .line 1382
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    .line 1383
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1384
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 1385
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->id:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isInsertedInterstitialId(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p6, :cond_0

    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string v4, "POST"

    .line 1386
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 1390
    :cond_0
    invoke-static {v2, p3, p4, p5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resolveInterstitialStartTimeUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v3

    .line 1392
    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-gez v5, :cond_1

    .line 1393
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 1394
    :cond_1
    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1395
    :goto_1
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1396
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getAdPlaybackState()Landroidx/media3/common/AdPlaybackState;
    .locals 4

    .line 881
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 885
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    .line 886
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 889
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v0

    .line 890
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    .line 891
    iget-object v0, v0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 892
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method static getClosestSegmentBoundaryUs(JLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J
    .locals 8

    .line 1599
    iget-wide v0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_6

    .line 1600
    iget-object v0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1602
    :cond_0
    iget-wide v0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    .line 1603
    iget-wide p0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    :goto_0
    add-long/2addr p0, v0

    return-wide p0

    .line 1608
    :cond_1
    iget-object v0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-gt v1, v0, :cond_4

    sub-int v2, v0, v1

    .line 1612
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 1613
    iget-object v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 1614
    iget-wide v4, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 1615
    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v6, v4

    cmp-long v3, p0, v4

    if-ltz v3, :cond_2

    cmp-long v4, p0, v6

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    if-gez v3, :cond_3

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 1630
    :cond_4
    :goto_2
    iget-object v0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 1632
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    sub-long v3, p0, v1

    iget-wide v5, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v1, v5

    sub-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_5

    .line 1633
    iget-wide p0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    goto :goto_0

    .line 1634
    :cond_5
    iget-wide p0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr p0, v1

    iget-wide v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    goto :goto_0

    .line 1601
    :cond_6
    :goto_3
    iget-wide p0, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    return-wide p0
.end method

.method private getLoader()Landroidx/media3/exoplayer/upstream/Loader;
    .locals 2

    .line 1252
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    if-nez v0, :cond_0

    .line 1253
    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader;

    const-string v1, "HLS-interstitials"

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 1255
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    return-object v0
.end method

.method private static getLowestValidAdGroupInsertionIndex(Landroidx/media3/common/AdPlaybackState;)I
    .locals 5

    .line 1548
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1549
    :goto_0
    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-lt v0, v1, :cond_2

    .line 1551
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getNextAssetResolution(Ljava/lang/Object;J)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;
    .locals 8

    .line 1198
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 1199
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getUnresolvedAssetLists(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1200
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1201
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    .line 1202
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    .line 1203
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;

    .line 1204
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1205
    invoke-static {p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->access$400(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)J

    move-result-wide v5

    new-instance v7, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1, v1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/util/Map;Ljava/lang/Long;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;-><init>(JJLjava/lang/Runnable;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getUnresolvedAssetListWindowPositionForContentPositionUs(JLandroidx/media3/common/Timeline;I)J
    .locals 4

    .line 1225
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {p3, p4, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p4

    .line 1226
    iget-wide v0, p4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr p1, v0

    .line 1227
    iget-object v0, p4, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1228
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    return-wide v2

    .line 1231
    :cond_0
    invoke-virtual {v0, p1, p2, v2, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 1234
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 1235
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 1236
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getUnresolvedAssetLists(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1237
    iget-wide v0, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1238
    iget p2, p4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    new-instance p4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    .line 1239
    iget-wide p3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide p1, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long/2addr p3, p1

    return-wide p3

    :cond_1
    return-wide v2
.end method

.method private insertOrUpdateInterstitialInAdGroup(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;Landroidx/media3/common/AdPlaybackState;IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 14

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v4, p4

    .line 1475
    invoke-virtual/range {p3 .. p4}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 1476
    iget-object v2, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getIndexOfAdId(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    return-object v0

    .line 1483
    :cond_0
    iget v2, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1486
    invoke-static {v3, v6, v7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resolveInterstitialDurationUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;J)J

    move-result-wide v8

    const/4 v10, 0x1

    if-nez v2, :cond_1

    .line 1489
    new-array v5, v10, [J

    goto :goto_0

    .line 1491
    :cond_1
    iget-object v11, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 1492
    array-length v12, v11

    add-int/2addr v12, v10

    new-array v12, v12, [J

    .line 1493
    array-length v13, v11

    invoke-static {v11, v5, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v12

    .line 1495
    :goto_0
    array-length v11, v5

    sub-int/2addr v11, v10

    aput-wide v8, v5, v11

    .line 1497
    iget-wide v10, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->resumeOffsetUs:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_2

    move-wide v8, v10

    goto :goto_1

    :cond_2
    cmp-long v10, v8, v6

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0x0

    .line 1500
    :goto_1
    iget-wide v10, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v10, v8

    add-int/lit8 v8, v2, 0x1

    .line 1503
    invoke-virtual {v0, v4, v8}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iget-object v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->id:Ljava/lang/String;

    .line 1504
    invoke-virtual {v0, v4, v2, v8}, Landroidx/media3/common/AdPlaybackState;->withAdId(IILjava/lang/String;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1505
    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1506
    invoke-virtual {v0, v4, v10, v11}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1507
    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->skipControlDurationUs:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_5

    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->skipControlOffsetUs:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_5

    iget-object v5, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->skipControlLabelId:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object v8, v0

    goto :goto_4

    .line 1512
    :cond_5
    :goto_3
    new-instance v6, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-wide v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->skipControlOffsetUs:J

    iget-wide v9, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->skipControlDurationUs:J

    iget-object v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->skipControlLabelId:Ljava/lang/String;

    invoke-direct/range {v6 .. v11}, Landroidx/media3/common/AdPlaybackState$SkipInfo;-><init>(JJLjava/lang/String;)V

    .line 1513
    invoke-virtual {v0, v4, v2, v6}, Landroidx/media3/common/AdPlaybackState;->withAdSkipInfo(IILandroidx/media3/common/AdPlaybackState$SkipInfo;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    goto :goto_2

    .line 1522
    :goto_4
    iget-object v0, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->assetUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 1523
    new-instance p1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v0, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->assetUri:Landroid/net/Uri;

    .line 1528
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    const-string v0, "application/x-mpegURL"

    .line 1529
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 1530
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 1524
    invoke-virtual {v8, v4, v2, p1}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    return-object p1

    .line 1532
    :cond_6
    iget-object v0, v8, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1533
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getUnresolvedAssetLists(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/util/Map;

    .line 1535
    iget-wide v5, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v1, v5, v10

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const-wide v5, 0x7fffffffffffffffL

    :goto_5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move v5, v2

    move-object v2, v0

    new-instance v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;

    move-object v1, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;IIJ)V

    .line 1534
    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8
.end method

.method private static isHlsMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 2

    .line 1300
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 1301
    iget-object v0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string v1, "application/x-mpegURL"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 1302
    invoke-static {p0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isLiveMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Timeline;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1285
    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    .line 1286
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1288
    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 1289
    iget-object v3, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v3, p0}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1290
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p0

    return p0

    .line 1293
    :cond_0
    invoke-virtual {p1, v1, v0, v0}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private mapInterstitialsForLive(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/common/AdPlaybackState;JJ)Landroidx/media3/common/AdPlaybackState;
    .locals 19

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    .line 1311
    iget-object v0, v7, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1312
    iget-object v1, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->interstitials:Lcom/google/common/collect/ImmutableList;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, p6

    .line 1313
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->filterAndSortWithResolvedStartPositions(Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JZ)Landroid/util/LongSparseArray;

    move-result-object v1

    move-object v0, v3

    const/4 v11, 0x0

    .line 1319
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v11, v3, :cond_8

    .line 1320
    invoke-virtual {v1, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    .line 1321
    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    .line 1322
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_7

    .line 1323
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 1324
    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    sub-long v3, v12, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-ltz v6, :cond_6

    .line 1325
    iget-wide v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const-wide/16 v16, 0x3

    move/from16 p3, v11

    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    mul-long v10, v10, v16

    add-long/2addr v8, v10

    cmp-long v6, v8, v3

    if-gez v6, :cond_0

    :goto_2
    move-object/from16 v3, p0

    goto :goto_6

    :cond_0
    add-long v3, p4, v3

    .line 1334
    iget v6, v7, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v6, v6, -0x2

    :goto_3
    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    .line 1337
    iget v9, v7, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-lt v8, v9, :cond_3

    .line 1339
    invoke-virtual {v7, v8}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    .line 1340
    iget-wide v10, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v10, v3

    if-nez v6, :cond_1

    const/4 v10, 0x0

    goto :goto_5

    :cond_1
    cmp-long v6, v10, v3

    if-gez v6, :cond_2

    add-int/lit8 v8, v8, 0x1

    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v6, v8, -0x1

    goto :goto_3

    :cond_3
    move v8, v6

    goto :goto_4

    :goto_5
    if-eqz v10, :cond_5

    .line 1354
    invoke-static {v7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getLowestValidAdGroupInsertionIndex(Landroidx/media3/common/AdPlaybackState;)I

    move-result v6

    if-ge v8, v6, :cond_4

    .line 1355
    const-string v3, "HlsInterstitiaAdsLoader"

    const-string v4, "Skipping insertion of interstitial attempted to be inserted behind an already initialized ad group."

    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1361
    :cond_4
    invoke-virtual {v7, v8, v3, v4}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v7

    :cond_5
    move-object v6, v7

    move v7, v8

    .line 1363
    iget-wide v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1364
    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->insertOrUpdateInterstitialInAdGroup(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;Landroidx/media3/common/AdPlaybackState;IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v7

    .line 1370
    iget-object v4, v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->id:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->addInsertedInterstitialId(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 p3, v11

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v11, p3

    goto/16 :goto_1

    :cond_7
    move-object/from16 v3, p0

    move/from16 p3, v11

    add-int/lit8 v11, p3, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v3, p0

    return-object v7
.end method

.method private mapInterstitialsForVod(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/common/AdPlaybackState;JJJ)Landroidx/media3/common/AdPlaybackState;
    .locals 18

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    .line 1408
    iget v0, v7, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v1, v7, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1409
    iget-object v1, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->interstitials:Lcom/google/common/collect/ImmutableList;

    iget-object v0, v7, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 1412
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v4, p6

    .line 1410
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->filterAndSortWithResolvedStartPositions(Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JZ)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1416
    iget-wide v4, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    add-long v4, v4, p6

    add-long v16, v4, p4

    const/4 v0, 0x0

    .line 1418
    :goto_1
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1419
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    .line 1420
    invoke-virtual {v1, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v6, 0x0

    .line 1421
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_8

    .line 1422
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    move-wide/from16 v9, p8

    .line 1424
    invoke-static {v11, v3, v9, v10}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resolveInterstitialStartTimeUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v12

    cmp-long v14, v12, v4

    if-gez v14, :cond_1

    .line 1425
    iget-object v15, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string v8, "PRE"

    .line 1426
    invoke-interface {v15, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-wide v12, v4

    goto :goto_3

    :cond_1
    cmp-long v8, v12, v16

    if-lez v8, :cond_2

    .line 1429
    iget-object v8, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string v15, "POST"

    .line 1430
    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-wide/from16 v12, v16

    goto :goto_3

    :cond_2
    if-ltz v14, :cond_3

    cmp-long v8, v16, v12

    if-gez v8, :cond_4

    :cond_3
    move-object/from16 v9, p0

    goto :goto_7

    :cond_4
    :goto_3
    cmp-long v8, v16, v12

    if-nez v8, :cond_5

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_4

    .line 1442
    :cond_5
    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    sub-long/2addr v12, v14

    .line 1443
    :goto_4
    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 1444
    invoke-virtual {v7, v12, v13, v14, v15}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v8

    const/4 v14, -0x1

    if-ne v8, v14, :cond_7

    .line 1447
    iget v8, v7, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 1449
    invoke-virtual {v7, v8, v12, v13}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v7

    :cond_6
    :goto_5
    move-object v12, v7

    move v13, v8

    goto :goto_6

    .line 1450
    :cond_7
    invoke-virtual {v7, v8}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v14

    iget-wide v14, v14, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v14, v14, v12

    if-eqz v14, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 1453
    invoke-virtual {v7, v8, v12, v13}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v7

    goto :goto_5

    .line 1455
    :goto_6
    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1456
    invoke-direct/range {v9 .. v15}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->insertOrUpdateInterstitialInAdGroup(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;Landroidx/media3/common/AdPlaybackState;IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v7

    .line 1462
    iget-object v8, v9, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    iget-object v10, v7, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 1463
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->id:Ljava/lang/String;

    .line 1462
    invoke-virtual {v8, v10, v11}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->addInsertedInterstitialId(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v9, p0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v9, p0

    return-object v7
.end method

.method private maybeExecuteOrSetNextAssetListResolutionMessage(Ljava/lang/Object;Landroidx/media3/common/Timeline;IJJ)V
    .locals 7

    .line 1148
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1151
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->cancelPendingAssetListResolutionMessage()V

    .line 1152
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p2, p3, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p3

    add-long/2addr p6, p4

    .line 1154
    invoke-direct {p0, p1, p6, p7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getNextAssetResolution(Ljava/lang/Object;J)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;->adStartTimeUs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1162
    :cond_2
    iget-wide v1, p3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    :goto_1
    const-wide/16 v3, 0x3

    .line 1168
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;->access$300(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1165
    invoke-static {p6, p7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sub-long p6, v1, p6

    const-wide/32 v3, 0x30d40

    cmp-long p6, p6, v3

    if-gez p6, :cond_3

    .line 1171
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;->run()V

    return-void

    :cond_3
    sub-long p6, v1, p4

    .line 1174
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 1175
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    .line 1176
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    .line 1177
    iget-wide v3, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 1178
    invoke-virtual {p1, v1, v2, v3, v4}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 1180
    invoke-virtual {p1, p2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 1181
    iget-wide v1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v1, p1

    sub-long/2addr v1, p4

    .line 1184
    invoke-static {p6, p7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p6

    .line 1186
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1187
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayer;

    new-instance p2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda7;

    invoke-direct {p2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$RunnableAtPosition;)V

    .line 1188
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->createMessage(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object p1

    iget-object p2, p3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1189
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object p1

    .line 1190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/PlayerMessage;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object p1

    .line 1191
    invoke-static {p6, p7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/PlayerMessage;->setPosition(J)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->pendingAssetListResolutionMessage:Landroidx/media3/exoplayer/PlayerMessage;

    .line 1192
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    return-void
.end method

.method private notifyAssetResolutionFailed(Ljava/lang/Object;II)V
    .locals 1

    .line 1276
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1280
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    .line 1281
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    return-void
.end method

.method private notifyListeners(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1246
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1247
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z
    .locals 1

    .line 1260
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 1261
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->putAdPlaybackState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1262
    invoke-virtual {p2, v0}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1264
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getEventListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    const/4 p1, 0x1

    return p1

    .line 1269
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->stopContentSource(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private removeUnresolvedAssetListOfAdGroup(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/AdPlaybackState$AdGroup;)V
    .locals 4

    .line 869
    iget-object v0, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 870
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 871
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getUnresolvedAssetLists(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 875
    iget-wide v0, p2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 874
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static resolveInterstitialDurationUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;J)J
    .locals 5

    .line 1563
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->playoutLimitUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 1565
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->durationUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    .line 1567
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->endDateUnixUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 1568
    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->startDateUnixUs:J

    sub-long/2addr v0, p0

    return-wide v0

    .line 1569
    :cond_2
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->plannedDurationUs:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    return-wide v0

    :cond_3
    return-wide p1
.end method

.method private static resolveInterstitialStartTimeUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J
    .locals 2

    .line 1577
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string v1, "PRE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    iget-wide p0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    add-long/2addr p0, p2

    return-wide p0

    .line 1579
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string p3, "POST"

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1580
    iget-wide p2, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide p0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr p2, p0

    return-wide p2

    .line 1581
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->snapTypes:Lcom/google/common/collect/ImmutableList;

    const-string p3, "OUT"

    invoke-virtual {p2, p3}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1582
    iget-wide p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->startDateUnixUs:J

    invoke-static {p2, p3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getClosestSegmentBoundaryUs(JLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide p0

    return-wide p0

    .line 1583
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->snapTypes:Lcom/google/common/collect/ImmutableList;

    const-string p3, "IN"

    invoke-virtual {p2, p3}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1585
    iget-wide p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->resumeOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 p2, 0x0

    .line 1587
    invoke-static {p0, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resolveInterstitialDurationUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;J)J

    move-result-wide p2

    .line 1588
    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->startDateUnixUs:J

    add-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getClosestSegmentBoundaryUs(JLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide p0

    sub-long/2addr p0, p2

    return-wide p0

    .line 1592
    :cond_4
    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->startDateUnixUs:J

    return-wide p0
.end method

.method private startLoadingAssetList(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V
    .locals 6

    .line 1123
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->cancelPendingAssetListResolutionMessage()V

    .line 1124
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getLoader()Landroidx/media3/exoplayer/upstream/Loader;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 1127
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    .line 1128
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;->access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->assetListUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    new-instance v4, Landroidx/media3/exoplayer/hls/AssetListParser;

    invoke-direct {v4}, Landroidx/media3/exoplayer/hls/AssetListParser;-><init>()V

    const/4 v5, 0x6

    invoke-direct {v1, v2, v3, v5, v4}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILandroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    new-instance v2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$LoaderCallback;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V

    const/4 v3, 0x1

    .line 1125
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 1133
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method


# virtual methods
.method public addAdResumptionState(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;)V
    .locals 1

    .line 668
    iget-object v0, p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;->adsId:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;->access$100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->addAdResumptionState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method public addAdResumptionState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V
    .locals 1

    .line 686
    invoke-virtual {p2}, Landroidx/media3/common/AdPlaybackState;->endsWithLivePostrollPlaceHolder()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 687
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isStartedContentMediaSource(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    invoke-virtual {p2}, Landroidx/media3/common/AdPlaybackState;->copy()Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/AdPlaybackState;->withAdsId(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 690
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to add an ad resumption state for an adsId that is currently active. adsId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HlsInterstitiaAdsLoader"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addListener(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 576
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllAdResumptionStates()V
    .locals 1

    .line 710
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAdsResumptionStates()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation

    .line 633
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 634
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AdPlaybackState;

    .line 635
    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState;->endsWithLivePostrollPlaceHolder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 637
    new-instance v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 638
    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState;->copy()Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsResumptionState;-><init>(Ljava/lang/String;Landroidx/media3/common/AdPlaybackState;)V

    .line 637
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdsResumptionStates(): ignoring active ad playback state of live stream. adsId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 648
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdsResumptionStates(): ignoring active ad playback state when creating resumption states. `adsId` is not of type String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    :goto_1
    const-string v3, "HlsInterstitiaAdsLoader"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public handleContentTimelineChanged(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/Timeline;)Z
    .locals 13

    .line 938
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object v1

    .line 939
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 940
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getEventListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 942
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 943
    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->stopContentSource(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/AdPlaybackState;

    .line 944
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p2, v0}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 946
    new-instance p2, Landroidx/media3/common/AdPlaybackState;

    new-array v0, v2, [J

    invoke-direct {p2, v1, v0}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    :cond_0
    return v2

    .line 952
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 953
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 954
    sget-object v3, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, v3}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 955
    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState;->endsWithLivePostrollPlaceHolder()Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 960
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 962
    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    new-array v3, v2, [J

    invoke-direct {v0, v1, v3}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    .line 963
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    invoke-static {v3, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isLiveMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Timeline;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 965
    invoke-virtual {v0, v2}, Landroidx/media3/common/AdPlaybackState;->withLivePostrollPlaceholderAppended(Z)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    :cond_3
    move-object v6, v0

    .line 969
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p2, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 970
    iget-object v2, v0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    instance-of v3, v2, Landroidx/media3/exoplayer/hls/HlsManifest;

    if-eqz v3, :cond_b

    .line 971
    check-cast v2, Landroidx/media3/exoplayer/hls/HlsManifest;

    iget-object v5, v2, Landroidx/media3/exoplayer/hls/HlsManifest;->mediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 972
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getUnresolvedAssetListCount(Ljava/lang/Object;)I

    move-result v2

    .line 974
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 975
    iget-object v4, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-wide v7, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v9, v0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->mapInterstitialsForLive(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/common/AdPlaybackState;JJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v4

    :goto_0
    move-object v8, v4

    goto :goto_1

    .line 981
    :cond_4
    iget-object v4, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-wide v7, v0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget-wide v9, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v11, v0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->mapInterstitialsForVod(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/common/AdPlaybackState;JJJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v4

    goto :goto_0

    .line 988
    :goto_1
    iget-object v4, v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 989
    iget-object v5, v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getUnresolvedAssetListCount(Ljava/lang/Object;)I

    move-result v5

    if-eq v2, v5, :cond_a

    if-eqz v4, :cond_a

    iget-object v2, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 991
    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v5

    invoke-static {v2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 993
    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    .line 994
    invoke-interface {v4}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 996
    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    new-instance v7, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v7}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v4, v2, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    .line 997
    iget-wide v9, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    neg-long v9, v9

    .line 998
    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_9

    .line 999
    iget-wide v9, v0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v2, v5, v9

    if-ltz v2, :cond_5

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    move-wide v5, v4

    .line 1002
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v5, v0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 1005
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_7
    iget-wide v9, v0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 1004
    :goto_2
    invoke-virtual {v8, v5, v6, v9, v10}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 1009
    invoke-virtual {v8, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    iget-wide v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    move-wide v5, v4

    .line 1011
    :cond_8
    iget-wide v9, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    :cond_9
    move-wide v6, v5

    move-wide v4, v9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    .line 1013
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->maybeExecuteOrSetNextAssetListResolutionMessage(Ljava/lang/Object;Landroidx/media3/common/Timeline;IJJ)V

    move-object v3, v0

    goto :goto_3

    :cond_a
    move-object v2, p2

    :goto_3
    move-object v6, v8

    goto :goto_4

    :cond_b
    move-object v3, p0

    move-object v2, p2

    .line 1017
    :goto_4
    invoke-direct {p0, v1, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    move-result p2

    .line 1018
    iget-object v0, v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isUnsupportedContentMediaSource(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1019
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    :cond_c
    return p2
.end method

.method public handlePrepareComplete(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;II)V
    .locals 2

    .line 1029
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object v0

    .line 1030
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isUnsupportedContentMediaSource(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, v0, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;II)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public handlePrepareError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;IILjava/io/IOException;)V
    .locals 6

    .line 1044
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object v2

    .line 1045
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 1046
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 1047
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1048
    invoke-direct {p0, v2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 1049
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isUnsupportedContentMediaSource(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda0;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILjava/io/IOException;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public isReleased()Z
    .locals 1

    .line 1117
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    return v0
.end method

.method public release()V
    .locals 2

    .line 1099
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isIdle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1100
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1102
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->clearAllAdResumptionStates()V

    .line 1103
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->cancelPendingAssetListResolutionMessage()V

    .line 1104
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->release()V

    .line 1106
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    :cond_1
    const/4 v0, 0x1

    .line 1108
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    return-void
.end method

.method public removeAdResumptionState(Ljava/lang/Object;)Z
    .locals 1

    .line 705
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeListener(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 581
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    .line 597
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 598
    instance-of v2, p1, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 599
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 602
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v2, :cond_3

    .line 603
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isIdle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 604
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 606
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 607
    check-cast p1, Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-void
.end method

.method public varargs setSupportedContentTypes([I)V
    .locals 4

    .line 612
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setWithAvailableAdGroup(I)V
    .locals 7

    .line 847
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 848
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getAdPlaybackState()Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 850
    iget v3, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 851
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    move v4, v1

    .line 852
    :goto_2
    iget-object v5, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 853
    aget v5, v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    :cond_2
    iget-object v5, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    if-eqz v5, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    .line 857
    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 859
    invoke-virtual {v0, p1, v4, v5}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 862
    :cond_5
    iget-object p1, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 863
    invoke-direct {p0, v0, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->removeUnresolvedAssetListOfAdGroup(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/AdPlaybackState$AdGroup;)V

    :cond_6
    return-void
.end method

.method public setWithAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)V
    .locals 5

    .line 814
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz p3, :cond_1

    .line 816
    invoke-static {p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isHlsMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 818
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getAdPlaybackState()Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 820
    iget v3, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p1, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 821
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 822
    iget v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge p2, v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-nez p3, :cond_5

    .line 824
    iget-object p3, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    aget-object p3, p3, p2

    if-eqz p3, :cond_4

    move v1, v2

    .line 825
    :cond_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 827
    :cond_5
    iget-object v1, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, p2

    if-eq v1, v2, :cond_6

    .line 829
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 830
    iget-object p2, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 831
    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->removeUnresolvedAssetListOfAdGroup(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/AdPlaybackState$AdGroup;)V

    :cond_6
    return-void
.end method

.method public setWithSkippedAd(II)V
    .locals 5

    .line 752
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 753
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getAdPlaybackState()Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 755
    iget v3, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 756
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 757
    iget v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge p2, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 758
    iget-object v1, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 770
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 771
    iget-object p2, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 772
    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->removeUnresolvedAssetListOfAdGroup(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/AdPlaybackState$AdGroup;)V

    return-void

    .line 760
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring request to set ad for state AD_STATE_SKIPPED for played or failed ad at adGroupIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adIndexInAgGroup="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HlsInterstitiaAdsLoader"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setWithSkippedAdGroup(I)V
    .locals 4

    .line 789
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 790
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getAdPlaybackState()Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 792
    iget v3, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 793
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 794
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 795
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 796
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->removeUnresolvedAssetListOfAdGroup(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/AdPlaybackState$AdGroup;)V

    :cond_2
    return-void
.end method

.method public skipCurrentAd()V
    .locals 2

    .line 719
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->setWithSkippedAd(II)V

    return-void
.end method

.method public skipCurrentAdGroup()V
    .locals 1

    .line 732
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->setWithSkippedAdGroup(I)V

    return-void
.end method

.method public start(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 2

    .line 903
    iget-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 905
    new-instance p1, Landroidx/media3/common/AdPlaybackState;

    new-array p2, v0, [J

    invoke-direct {p1, p3, p2}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-interface {p5, p1}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    return-void

    .line 908
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isStartedContentMediaSource(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 914
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isIdle()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 916
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-string v1, "setPlayer(Player) needs to be called"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    invoke-interface {p2, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 918
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {p2, p3, p5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->startContentSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    .line 919
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 920
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isHlsMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 921
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 923
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/AdPlaybackState;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/AdPlaybackState;

    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    goto :goto_0

    .line 926
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    sget-object p5, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p2, p3, p5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->putAdPlaybackState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    .line 928
    :goto_0
    new-instance p2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p3, p4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;)V

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    return-void

    .line 930
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported media item. Playing without ads for adsId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HlsInterstitiaAdsLoader"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    new-instance p1, Landroidx/media3/common/AdPlaybackState;

    new-array p2, v0, [J

    invoke-direct {p1, p3, p2}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-direct {p0, p3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 932
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->addUnsupportedContentMediaSource(Ljava/lang/Object;)V

    return-void

    .line 909
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "media item with adsId=\'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' already started. Make sure adsIds are unique within the same playlist."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 4

    .line 1059
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object p2

    .line 1060
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isStartedContentMediaSource(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1062
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    .line 1063
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isUnsupportedContentMediaSource(Ljava/lang/Object;)Z

    move-result v0

    .line 1065
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->stopContentSource(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 1066
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v2, :cond_2

    .line 1067
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->contentMediaSourceAdDataHolder:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 1069
    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 1070
    iput-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1073
    :cond_2
    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 1074
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    .line 1076
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->resumptionStates:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_3
    new-instance p2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 1087
    :cond_4
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->pendingAssetListResolutionMessage:Landroidx/media3/exoplayer/PlayerMessage;

    if-eqz p2, :cond_5

    .line 1089
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->pendingAssetListResolutionMessage:Landroidx/media3/exoplayer/PlayerMessage;

    .line 1090
    invoke-static {p2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1091
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->cancelPendingAssetListResolutionMessage()V

    :cond_5
    return-void
.end method
