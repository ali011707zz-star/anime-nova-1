.class final Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

.field final synthetic this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;


# direct methods
.method public static synthetic $r8$lambda$9nupiABAlEk0F78aRKQbD7VCdDk(Landroidx/media3/extractor/metadata/id3/TextInformationFrame;)Z
    .locals 1

    .line 1030
    iget-object p0, p0, Landroidx/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v0, "TXXX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jjRDUzKnqRhEJ7y6heDqRJMCTyk(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1067
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1067
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 0

    .line 940
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 1

    .line 1060
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    return-void
.end method

.method public onAdPlaybackStateUpdateRequested(Landroidx/media3/common/Timeline;)Z
    .locals 2

    .line 1067
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2700(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;Landroidx/media3/common/Timeline;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2800(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getFormat()Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    move-result-object p1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

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
    .locals 4

    .line 1025
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2500(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1029
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/Metadata;->getMatchingEntries(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 1031
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    move-result-object v2

    iget-object v1, v1, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->access$2600(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_1
    const-class v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->getEntriesOfType(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 1034
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->access$2600(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
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
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1040
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1041
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2500(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1042
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->onContentCompleted()V

    :cond_0
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
    .locals 8

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    .line 951
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 952
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    .line 957
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 958
    iget-object v2, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->onContentCompleted()V

    .line 963
    :cond_1
    iget-object v2, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p2, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 964
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 965
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 966
    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v2

    .line 967
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    iget-object v3, p2, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 968
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    .line 969
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v2

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 974
    :cond_2
    iget v1, p1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 976
    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 977
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    .line 978
    iget v5, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    new-instance v6, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v6}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 979
    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    .line 980
    iget v6, v5, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v7, v5, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-le v6, v7, :cond_5

    if-ne p3, v0, :cond_3

    .line 982
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 984
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object p2

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result p2

    iget-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p3

    .line 983
    invoke-static {p2, v4, p3}, Landroidx/media3/exoplayer/ima/ImaUtil;->handleAdPeriodRemovedFromTimeline(ILandroidx/media3/common/Timeline;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    .line 982
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2300(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    return-void

    .line 988
    :cond_3
    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    sub-int/2addr p1, v7

    .line 990
    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 991
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 992
    invoke-static {p3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p3

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2400(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline;

    .line 991
    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->getAdGroupAndIndexInLiveMultiPeriodTimeline(ILandroidx/media3/common/AdPlaybackState;Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_0

    .line 993
    :cond_4
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 994
    invoke-static {p3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p3

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2400(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline;

    .line 993
    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->getAdGroupAndIndexInVodMultiPeriodTimeline(ILandroidx/media3/common/AdPlaybackState;Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object p1

    .line 995
    :goto_0
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 996
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 999
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 1000
    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget p1, p1, v3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_6

    if-nez p1, :cond_8

    .line 1002
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1003
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/AdPlaybackState;->withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 1004
    invoke-virtual {p1, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 1005
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget p2, p2, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne p2, v2, :cond_7

    iget-object p2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, p2

    sub-int/2addr v2, p3

    if-ge v3, v2, :cond_7

    add-int/2addr v3, p3

    aget p2, p2, v3

    if-ne p2, p3, :cond_7

    .line 1010
    const-string p2, "ImaSSAIMediaSource"

    const-string p3, "Detected late ad event. Regrouping trailing ads into separate ad group."

    invoke-static {p2, p3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-static {v0, v1, v3, p1}, Landroidx/media3/exoplayer/ima/ImaUtil;->splitAdGroup(Landroidx/media3/common/AdPlaybackState$AdGroup;IILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    .line 1018
    :cond_7
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2300(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    :cond_8
    :goto_1
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

.method public synthetic onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onTimelineChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V

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

.method public onVolumeChanged(F)V
    .locals 3

    .line 1048
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2500(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 1051
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 1052
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;->this$0:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$2000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->onContentVolumeChanged(I)V

    return-void
.end method
