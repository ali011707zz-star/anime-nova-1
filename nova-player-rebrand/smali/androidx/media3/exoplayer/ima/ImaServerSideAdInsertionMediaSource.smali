.class public final Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "ImaServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$VodAdEventListener;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;,
        Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImaSSAIMediaSource"


# instance fields
.field private adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field private final adsId:Ljava/lang/String;

.field private final adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

.field private final applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

.field private final applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

.field private final componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

.field private final contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private contentTimeline:Landroidx/media3/common/Timeline;

.field private final isLiveStream:Z

.field private loadError:Ljava/io/IOException;

.field private final loadVideoTimeoutMs:I

.field private loader:Landroidx/media3/exoplayer/upstream/Loader;

.field private final mainHandler:Landroid/os/Handler;

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private final player:Landroidx/media3/common/Player;

.field private final sdkAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

.field private final streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

.field private streamId:Ljava/lang/String;

.field private streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

.field private final streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

.field private final streamRequest:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;


# direct methods
.method public static synthetic $r8$lambda$8WsAeUmAaLCp1GTeVjb-mg0t4Qc(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V
    .locals 0

    .line 668
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->player:Landroidx/media3/common/Player;

    .line 668
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Player;

    invoke-static {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->assertSingleInstanceInPlaylist(Landroidx/media3/common/Player;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lj-FNKNv0fXbjGnhT_lJAiLcsvo(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V
    .locals 2

    .line 737
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->player:Landroidx/media3/common/Player;

    .line 737
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    const/4 v0, 0x0

    .line 738
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setStreamManager(Lcom/google/ads/interactivemedia/v3/api/StreamManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcPiXzudFZj5pAbL4qgPcf5Bb7E(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsId:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    const/4 v1, 0x1

    .line 863
    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->withLivePostrollPlaceholderAppended(Z)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 861
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 610
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->player:Landroidx/media3/common/Player;

    .line 611
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 612
    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamRequest:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 613
    iput-object p4, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    .line 614
    iput-object p5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->sdkAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 615
    iput-object p6, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    .line 616
    iput-object p7, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 617
    invoke-static {p4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    move-result-object p3

    iget-object p3, p3, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    .line 618
    invoke-static {p4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    move-result-object p3

    iget-object p3, p3, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 619
    invoke-static {p4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    move-result-object p3

    iget-object p3, p3, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    .line 620
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 621
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mainHandler:Landroid/os/Handler;

    .line 622
    iget-object p1, p2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 623
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->isLiveStream(Landroid/net/Uri;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->isLiveStream:Z

    .line 624
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->getAdsId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsId:Ljava/lang/String;

    .line 625
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->getLoadVideoTimeoutMs(Landroid/net/Uri;)I

    move-result p5

    iput p5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loadVideoTimeoutMs:I

    .line 626
    invoke-static {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->createStreamRequest(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object p1

    .line 627
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getFormat()Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    move-result-object p1

    sget-object p5, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    invoke-static {p1, p5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 628
    new-instance p5, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    const/4 p6, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 632
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;

    invoke-direct {p1, p0, p6}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$MultiPeriodLiveAdEventListener;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    goto :goto_1

    .line 633
    :cond_1
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;

    invoke-direct {p1, p0, p6}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$SinglePeriodLiveAdEventListener;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    goto :goto_1

    .line 634
    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$VodAdEventListener;

    invoke-direct {p1, p0, p6}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$VodAdEventListener;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    :goto_1
    invoke-direct {p5, p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    iput-object p5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    .line 635
    invoke-static {p4, p3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$1500(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Ljava/lang/String;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V
    .locals 0

    .line 114
    invoke-direct/range {p0 .. p7}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;-><init>(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->isLiveStream:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 0

    .line 114
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->createStreamDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Player;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/AdPlaybackState;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    return-object p0
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/AdPlaybackState;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$2400(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroidx/media3/common/Timeline;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z
    .locals 0

    .line 114
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->isCurrentlyPlayingMediaPeriodFromThisSource(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamRequest:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setContentTimeline(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method static synthetic access$3000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroid/net/Uri;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setContentUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3102(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 114
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loadError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$3200(Ljava/util/List;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 0

    .line 114
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setVodAdGroupPlaceholders(Ljava/util/List;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/google/ads/interactivemedia/v3/api/Ad;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 0

    .line 114
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setVodAdInPlaceholder(Lcom/google/ads/interactivemedia/v3/api/Ad;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/google/ads/interactivemedia/v3/api/Ad;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 0

    .line 114
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->skipAd(Lcom/google/ads/interactivemedia/v3/api/Ad;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)Lcom/google/ads/interactivemedia/v3/api/StreamManager;
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/StreamManager;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->setStreamManager(Lcom/google/ads/interactivemedia/v3/api/StreamManager;)V

    return-void
.end method

.method private static assertSingleInstanceInPlaylist(Landroidx/media3/common/Player;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1469
    :goto_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getMediaItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1470
    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v2

    .line 1471
    iget-object v3, v2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 1472
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ssai"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 1474
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1473
    const-string v3, "dai.google.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 1476
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple IMA server side ad insertion sources not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static createStreamDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 1

    .line 1445
    iget-object v0, p1, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    .line 1447
    invoke-interface {v0}, Landroidx/media3/common/AdViewProvider;->getAdViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1446
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createStreamDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object p2

    .line 1448
    iget-object v0, p1, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->companionAdSlots:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->setCompanionSlots(Ljava/util/Collection;)V

    .line 1449
    iget-object p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    invoke-static {p0, p2, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->registerFriendlyObstructions(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Landroidx/media3/common/AdViewProvider;)V

    return-object p2
.end method

.method private static getAdGroupIndexFromAdPodInfo(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;Landroidx/media3/common/AdPlaybackState;)I
    .locals 4

    .line 921
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 924
    iget p0, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 926
    invoke-virtual {p1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    iget-wide v0, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private invalidateServerSideAdInsertionAdPlaybackState()V
    .locals 4

    .line 813
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    sget-object v1, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    if-eqz v1, :cond_1

    .line 816
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline;

    .line 818
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamRequest:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getFormat()Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->splitAdPlaybackStateForPeriods(Landroidx/media3/common/AdPlaybackState;Landroidx/media3/common/Timeline;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    .line 823
    :cond_0
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    .line 824
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 825
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v3, 0x1

    .line 827
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 826
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 830
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 832
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->setAdPlaybackStates(Ljava/lang/Object;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/common/Timeline;)V

    .line 833
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    .line 834
    invoke-virtual {v2, v1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->setAdPlaybackStates(Lcom/google/common/collect/ImmutableMap;Landroidx/media3/common/Timeline;)V

    .line 835
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->isLiveStream:Z

    if-nez v0, :cond_1

    .line 836
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$1800(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Ljava/lang/String;Landroidx/media3/common/AdPlaybackState;)V

    :cond_1
    return-void
.end method

.method private static isCurrentlyPlayingMediaPeriodFromThisSource(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Ljava/lang/Object;)Z
    .locals 5

    .line 1432
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1435
    :cond_0
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1436
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1437
    iget-boolean v3, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v3, :cond_1

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 1438
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private static registerFriendlyObstructions(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Landroidx/media3/common/AdViewProvider;)V
    .locals 4

    const/4 v0, 0x0

    .line 1457
    :goto_0
    invoke-interface {p2}, Landroidx/media3/common/AdViewProvider;->getAdOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1458
    invoke-interface {p2}, Landroidx/media3/common/AdViewProvider;->getAdOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/AdOverlayInfo;

    .line 1459
    iget-object v2, v1, Landroidx/media3/common/AdOverlayInfo;->view:Landroid/view/View;

    iget v3, v1, Landroidx/media3/common/AdOverlayInfo;->purpose:I

    .line 1462
    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaUtil;->getFriendlyObstructionPurpose(I)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v3

    .line 1463
    iget-object v1, v1, Landroidx/media3/common/AdOverlayInfo;->reasonDetail:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Unknown reason"

    .line 1460
    :goto_1
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createFriendlyObstruction(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    move-result-object v1

    .line 1459
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->registerFriendlyObstruction(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V
    .locals 1

    .line 789
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p1, v0}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 792
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 793
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->invalidateServerSideAdInsertionAdPlaybackState()V

    return-void
.end method

.method private setContentTimeline(Landroidx/media3/common/Timeline;)V
    .locals 2

    .line 798
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 801
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->isLiveStream:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamRequest:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getFormat()Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->maybeCorrectPreviouslyUnknownAdDurations(Landroidx/media3/common/Timeline;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 807
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    .line 808
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->invalidateServerSideAdInsertionAdPlaybackState()V

    return-void
.end method

.method private setContentUri(Landroid/net/Uri;)V
    .locals 2

    .line 844
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    if-nez v0, :cond_1

    .line 845
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 846
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 848
    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    iget-object v1, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 849
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaItem$Builder;->setDrmConfiguration(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    iget-object v1, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 850
    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaItem$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    iget-object v1, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 851
    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 852
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 853
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 854
    new-instance v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 856
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;)V

    .line 857
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    .line 858
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->isLiveStream:Z

    if-eqz p1, :cond_0

    .line 859
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    .line 865
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    :cond_1
    return-void
.end method

.method private setStreamManager(Lcom/google/ads/interactivemedia/v3/api/StreamManager;)V
    .locals 3

    .line 750
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 754
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    if-eqz v1, :cond_1

    .line 755
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 757
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v0, :cond_2

    .line 758
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 760
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 761
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->destroy()V

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamId:Ljava/lang/String;

    .line 764
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    if-eqz p1, :cond_7

    .line 766
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 767
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamId:Ljava/lang/String;

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 768
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamId:Ljava/lang/String;

    .line 769
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;->onStreamIdChanged(Landroidx/media3/common/MediaItem;Ljava/lang/String;)V

    .line 771
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 772
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    if-eqz v0, :cond_5

    .line 773
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 775
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v0, :cond_6

    .line 776
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 779
    :cond_6
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    .line 780
    iget v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loadVideoTimeoutMs:I

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setLoadVideoTimeout(I)V

    .line 781
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    .line 782
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->focusSkipButtonWhenAvailable:Z

    .line 781
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setFocusSkipButtonWhenAvailable(Z)V

    .line 783
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private static setVodAdGroupPlaceholders(Ljava/util/List;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;",
            "Landroidx/media3/common/AdPlaybackState;",
            ")",
            "Landroidx/media3/common/AdPlaybackState;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p1

    move p1, v0

    .line 873
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 874
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 875
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTimeMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 881
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTimeMs()J

    move-result-wide v5

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTimeMs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    const/4 v2, 0x1

    new-array v2, v2, [J

    aput-wide v5, v2, v0

    move-object v6, v2

    move-wide v2, v3

    const-wide/16 v4, 0x0

    .line 877
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->addAdGroupToAdPlaybackState(Landroidx/media3/common/AdPlaybackState;JJ[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static setVodAdInPlaceholder(Lcom/google/ads/interactivemedia/v3/api/Ad;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 9

    .line 887
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    .line 888
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getAdGroupIndexFromAdPodInfo(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;Landroidx/media3/common/AdPlaybackState;)I

    move-result v1

    .line 889
    invoke-virtual {p1, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 890
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 891
    iget v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 895
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getMaxDuration()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToMsRounded(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    .line 897
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToMsRounded(D)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 898
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v7

    move-object v8, p1

    .line 893
    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/ima/ImaUtil;->expandAdGroupPlaceholder(IJIJILandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v8, p1

    .line 900
    iget p1, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    add-int/lit8 p1, p1, -0x1

    if-ge v4, p1, :cond_1

    .line 905
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaUtil;->secToMsRounded(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p0

    .line 902
    invoke-static {v1, v4, p0, p1, v8}, Landroidx/media3/exoplayer/ima/ImaUtil;->updateAdDurationInAdGroup(IIJLandroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v8
.end method

.method private static skipAd(Lcom/google/ads/interactivemedia/v3/api/Ad;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 1

    .line 912
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object p0

    .line 913
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getAdGroupIndexFromAdPodInfo(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;Landroidx/media3/common/AdPlaybackState;)I

    move-result v0

    .line 915
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 916
    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 5
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 647
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 648
    iget-object v1, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 649
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 650
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v2, :cond_0

    .line 651
    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 652
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 653
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 654
    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    .line 655
    invoke-static {v2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 656
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 708
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    .line 709
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    monitor-enter p0

    .line 641
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 721
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 722
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loadError:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 724
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loadError:Ljava/io/IOException;

    .line 725
    throw v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 114
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 692
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 693
    new-instance p2, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;

    invoke-direct {p2, p0, p3, p3, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 9
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 668
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 670
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    if-nez p1, :cond_0

    .line 671
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string v0, "ImaServerSideAdInsertionMediaSource"

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->player:Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->componentListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$ComponentListener;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 673
    new-instance v2, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->sdkAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamRequest:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v6, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    iget-object v7, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    .line 680
    new-instance v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadableCallback;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 684
    iput-object p1, v4, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    return-void

    :cond_0
    move-object v4, p0

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 715
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 732
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 733
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->release()V

    .line 735
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 742
    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    .line 743
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->serverSideAdInsertionMediaSource:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    return-void
.end method

.method public declared-synchronized updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    monitor-enter p0

    .line 662
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
