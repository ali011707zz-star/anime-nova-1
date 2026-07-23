.class Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;
.super Ljava/lang/Object;
.source "HlsInterstitialsAdsLoader.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerListener"
.end annotation


# instance fields
.field private final period:Landroidx/media3/common/Timeline$Period;

.field final synthetic this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;


# direct methods
.method public static synthetic $r8$lambda$1oCFG7xPeE9-qTmUHaoUyyYEScs(Landroidx/media3/common/Player$PositionInfo;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 2

    .line 1700
    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1701
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 1700
    invoke-interface {p2, v0, p1, v1, p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAdStarted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$9TtUlt5whehLG7G5sIOmq7EKqG8(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 1772
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAdCompleted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fh1xiJ1EDEQEWABirZz5Hn54RtU(Landroidx/media3/common/Player$PositionInfo;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 2

    .line 1734
    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1735
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 1734
    invoke-interface {p2, v0, p1, v1, p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAdSkipped(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ho79HNsYSRnx6MDPVYmexLmOP8c(Landroidx/media3/common/Player;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 2

    .line 1755
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    .line 1757
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v1

    .line 1758
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result p0

    .line 1754
    invoke-interface {p2, v0, p1, v1, p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAdStarted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SKP7RGOAo1jSroZIcK2S2Y9sLFI(Landroidx/media3/common/Player$PositionInfo;Ljava/lang/Object;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 2

    .line 1725
    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1726
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 1725
    invoke-interface {p2, v0, p1, v1, p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAdStarted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpLRDVO4rfyBJQbW5mrbrasRKxs(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, v0

    .line 1657
    invoke-interface/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onMetadata(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$1;)V
    .locals 0

    .line 1637
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V

    return-void
.end method

.method private markAdAsPlayedAndNotifyListeners(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V
    .locals 3

    .line 1765
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0, p3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, p4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1769
    invoke-virtual {v0, p3, p4}, Landroidx/media3/common/AdPlaybackState;->withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1770
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1, p2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$1100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Z

    .line 1771
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onAudioAttributesChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onCues(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onCues(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onDeviceInfoChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Landroidx/media3/common/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onEvents(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onIsLoadingChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onIsPlayingChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onLoadingChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMediaItemTransition(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMediaMetadataChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 8

    .line 1643
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$500(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1644
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1647
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1648
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, v1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v4, v1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1649
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isManagedContentSource(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1652
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/media3/common/MediaItem;

    .line 1653
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v5

    .line 1654
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v6

    .line 1655
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda5;

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;)V

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    .line 1744
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$500(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 1745
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1749
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p1, p1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 1750
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->awaitingFirstAdToStartFor(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1751
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->notifyAdStarted(Ljava/lang/Object;)V

    .line 1752
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/common/Player;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayerError(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayerErrorChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayerStateChanged(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPositionDiscontinuity(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1673
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$500(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz v4, :cond_9

    iget-object v4, v2, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz v4, :cond_9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    const/4 v4, 0x6

    if-eq v3, v4, :cond_9

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    goto/16 :goto_4

    .line 1682
    :cond_0
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$500(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v7

    .line 1683
    iget v4, v2, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v7, v4, v5}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1684
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v4, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1685
    iget-object v6, v4, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 1686
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->isManagedContentSource(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v4, -0x1

    if-nez v3, :cond_3

    .line 1692
    iget v3, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-eq v3, v4, :cond_2

    .line 1693
    iget-object v5, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-direct {v0, v5, v6, v3, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->markAdAsPlayedAndNotifyListeners(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    .line 1696
    :cond_2
    iget v1, v2, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-eq v1, v4, :cond_7

    .line 1697
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$600(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->notifyAdStarted(Ljava/lang/Object;)V

    .line 1698
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/Player$PositionInfo;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    return-void

    :cond_3
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    goto :goto_0

    .line 1731
    :cond_4
    iget v2, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-eq v2, v4, :cond_7

    const/4 v2, 0x3

    if-ne v3, v2, :cond_7

    .line 1732
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/Player$PositionInfo;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    return-void

    .line 1708
    :cond_5
    :goto_0
    iget-wide v8, v2, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 1709
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    iget v5, v2, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 1710
    invoke-static {v3, v8, v9, v7, v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$900(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;JLandroidx/media3/common/Timeline;I)J

    move-result-wide v10

    .line 1712
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    move-wide v12, v8

    iget v8, v2, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v14, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    neg-long v14, v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v16

    if-eqz v3, :cond_6

    move-wide v11, v10

    :goto_1
    move-wide v9, v14

    goto :goto_2

    :cond_6
    move-wide v11, v12

    goto :goto_1

    :goto_2
    invoke-static/range {v5 .. v12}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$1000(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;Landroidx/media3/common/Timeline;IJJ)V

    .line 1720
    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v1, v4, :cond_7

    iget v1, v2, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-eq v1, v4, :cond_7

    .line 1723
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v3, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/Player$PositionInfo;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$700(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    :cond_7
    return-void

    .line 1688
    :cond_8
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$800(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V

    return-void

    .line 1679
    :cond_9
    :goto_4
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$800(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/media3/common/Player$Listener$-CC;->$default$onRenderedFirstFrame(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onRepeatModeChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Landroidx/media3/common/Player$Listener;II)V

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 1663
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1664
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$800(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V

    :cond_0
    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onTracksChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onVideoSizeChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onVolumeChanged(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method
