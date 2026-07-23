.class final Landroidx/media3/exoplayer/ima/AdTagLoader;
.super Ljava/lang/Object;
.source "AdTagLoader.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;,
        Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;,
        Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;,
        Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;
    }
.end annotation


# static fields
.field private static final AD_PROGRESS_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final IMA_AD_STATE_NONE:I = 0x0

.field private static final IMA_AD_STATE_PAUSED:I = 0x2

.field private static final IMA_AD_STATE_PLAYING:I = 0x1

.field private static final IMA_DURATION_UNSET:J = -0x1L

.field private static final IMA_SDK_SETTINGS_PLAYER_TYPE:Ljava/lang/String; = "google/exo.ext.ima"

.field private static final IMA_SDK_SETTINGS_PLAYER_VERSION:Ljava/lang/String; = "1.9.2"

.field private static final TAG:Ljava/lang/String; = "AdTagLoader"

.field private static final THRESHOLD_AD_MATCH_US:J = 0x3e8L

.field private static final THRESHOLD_END_OF_CONTENT_MS:J = 0x1388L


# instance fields
.field private final adCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private final adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap;"
        }
    .end annotation
.end field

.field private final adLoadTimeoutRunnable:Ljava/lang/Runnable;

.field private adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field private final adTagDataSpec:Landroidx/media3/datasource/DataSpec;

.field private final adsId:Ljava/lang/Object;

.field private final adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private bufferingAd:Z

.field private final componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

.field private final configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

.field private contentDurationMs:J

.field private final contentPlaybackAdapter:Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;

.field private final eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private fakeContentProgressElapsedRealtimeMs:J

.field private fakeContentProgressOffsetMs:J

.field private final handler:Landroid/os/Handler;

.field private imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

.field private imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

.field private imaAdState:I

.field private final imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

.field private imaPausedContent:Z

.field private isAdsManagerInitialized:Z

.field private lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

.field private lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

.field private lastVolumePercent:I

.field private final mimeTypeByAdInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

.field private pendingAdPrepareErrorAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

.field private pendingAdRequestContext:Ljava/lang/Object;

.field private pendingContentPositionMs:J

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private player:Landroidx/media3/common/Player;

.field private playingAd:Z

.field private playingAdIndexInAdGroup:I

.field private released:Z

.field private sentContentComplete:Z

.field private sentPendingContentPositionMs:Z

.field private final supportedMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Landroidx/media3/common/Timeline;

.field private final updateAdProgressRunnable:Ljava/lang/Runnable;

.field private waitingForPreloadElapsedRealtimeMs:J


# direct methods
.method public static synthetic $r8$lambda$BPMkSQMvScj7N_N1aGvFR4mN8sQ(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgress()V

    return-void
.end method

.method public static synthetic $r8$lambda$eFwD9ucqxQz4Ki4JVR24DuCgMKU(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleAdLoadTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$iCv0zxbBbDnNyA-unHxT7aAZybA(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/common/Player;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->deactivateInternal(Landroidx/media3/common/Player;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;Ljava/util/List;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;",
            "Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/datasource/DataSpec;",
            "Ljava/lang/Object;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    .line 247
    iput-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    .line 248
    iget-object v0, p2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 250
    invoke-interface {p3}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    .line 251
    iget-boolean v2, p2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setDebugMode(Z)V

    .line 255
    :cond_0
    const-string v2, "google/exo.ext.ima"

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerType(Ljava/lang/String;)V

    .line 256
    const-string v2, "1.9.2"

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerVersion(Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->mimeTypeByAdInfo:Ljava/util/Map;

    .line 258
    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->supportedMimeTypes:Ljava/util/List;

    .line 259
    iput-object p5, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adTagDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 260
    iput-object p6, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsId:Ljava/lang/Object;

    .line 261
    new-instance p4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    .line 262
    invoke-static {}, Landroidx/media3/exoplayer/ima/ImaUtil;->getImaLooper()Landroid/os/Looper;

    move-result-object p4

    const/4 p5, 0x0

    invoke-static {p4, p5}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p4

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    .line 263
    new-instance p4, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-direct {p4, p0, p5}, Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/exoplayer/ima/AdTagLoader$1;)V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    .line 264
    new-instance p4, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;

    invoke-direct {p4, p0, p5}, Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/exoplayer/ima/AdTagLoader$1;)V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentPlaybackAdapter:Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;

    .line 265
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    .line 266
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    .line 267
    iget-object p5, p2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationVideoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    if-eqz p5, :cond_1

    .line 268
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    new-instance p4, Landroidx/media3/exoplayer/ima/AdTagLoader$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Landroidx/media3/exoplayer/ima/AdTagLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    .line 271
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object p4

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    .line 272
    sget-object p4, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 273
    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 274
    iput-wide p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 275
    iput-wide p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    .line 276
    iput-wide p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    .line 277
    iput-wide p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->waitingForPreloadElapsedRealtimeMs:J

    .line 278
    iput-wide p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    .line 279
    sget-object p4, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    .line 280
    sget-object p4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 281
    new-instance p4, Landroidx/media3/exoplayer/ima/AdTagLoader$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Landroidx/media3/exoplayer/ima/AdTagLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    iput-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adLoadTimeoutRunnable:Ljava/lang/Runnable;

    .line 282
    new-instance p4, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;

    invoke-direct {p4, p0}, Landroidx/media3/exoplayer/ima/AdTagLoader$VideoAdPlayerImpl;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;)V

    if-eqz p7, :cond_2

    .line 285
    invoke-interface {p3, p7, p4}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createAdDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    goto :goto_0

    .line 288
    :cond_2
    invoke-interface {p3, p1, p4}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createAudioAdDisplayContainer(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 290
    :goto_0
    iget-object p2, p2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->companionAdSlots:Ljava/util/Collection;

    if-eqz p2, :cond_3

    .line 291
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {p3, p2}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->setCompanionSlots(Ljava/util/Collection;)V

    .line 293
    :cond_3
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->requestAds(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdRequestContext:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdRequestContext:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/ima/AdTagLoader;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p0
.end method

.method static synthetic access$1102(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .line 84
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic access$1202(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 0

    .line 84
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    return-object p1
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsId:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    return-void
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeNotifyInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    return-object p0
.end method

.method static synthetic access$1702(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .locals 0

    .line 84
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    return-object p1
.end method

.method static synthetic access$1800(Landroidx/media3/exoplayer/ima/AdTagLoader;)Ljava/util/List;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media3/exoplayer/ima/AdTagLoader;)I
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getPlayerVolumePercent()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/ima/AdTagLoader;)Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->loadAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->playAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->pauseAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/ima/AdTagLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->stopAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/ima/AdTagLoader;)J
    .locals 2

    .line 84
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->waitingForPreloadElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$402(Landroidx/media3/exoplayer/ima/AdTagLoader;J)J
    .locals 0

    .line 84
    iput-wide p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->waitingForPreloadElapsedRealtimeMs:J

    return-wide p1
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/ima/AdTagLoader;Ljava/lang/Exception;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleAdGroupLoadError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/ima/AdTagLoader;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeNotifyPendingAdLoadError()V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/ima/AdTagLoader;)J
    .locals 2

    .line 84
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    return-wide v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/ima/AdTagLoader;)Landroidx/media3/common/Player;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/ima/AdTagLoader;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->isWaitingForFirstAdToPreload()Z

    move-result p0

    return p0
.end method

.method private deactivateInternal(Landroidx/media3/common/Player;)V
    .locals 3

    .line 409
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    sget-object v1, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaPausedContent:Z

    if-eqz v0, :cond_2

    .line 411
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    .line 416
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 418
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 417
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/AdPlaybackState;->withAdResumePositionUs(J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 420
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getPlayerVolumePercent()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastVolumePercent:I

    .line 421
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 422
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 423
    invoke-interface {p1, p0}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    const/4 p1, 0x0

    .line 424
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    return-void
.end method

.method private destroyAdsManager()V
    .locals 2

    .line 1372
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_2

    .line 1373
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1374
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1377
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1378
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1381
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->destroy()V

    const/4 v0, 0x0

    .line 1382
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    :cond_2
    return-void
.end method

.method private ensureSentContentCompleteIfAtEndOfStream()V
    .locals 6

    .line 1215
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentContentComplete:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    .line 1221
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    .line 1222
    iget-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    .line 1225
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1227
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 1226
    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1228
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1229
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1230
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->shouldPlayAdGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1234
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->sendContentComplete()V

    :cond_3
    :goto_0
    return-void
.end method

.method private getAdGroupIndexForAdPod(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)I
    .locals 2

    .line 1293
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1295
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget p1, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 1299
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTimeOffset()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdGroupIndexForCuePointTimeSeconds(D)I

    move-result p1

    return p1
.end method

.method private getAdGroupIndexForCuePointTimeSeconds(D)I
    .locals 5

    double-to-float p1, p1

    float-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p1, v0

    .line 1326
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const/4 v0, 0x0

    .line 1327
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v2, v1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v0, v2, :cond_1

    .line 1328
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    sub-long/2addr v1, p1

    .line 1330
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to find cue point"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;
    .locals 3

    .line 1338
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMediaInfo["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    .line 1340
    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAdVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 5

    .line 708
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 710
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    if-eqz v1, :cond_2

    .line 711
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 713
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 714
    :cond_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v2

    .line 716
    :cond_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method

.method private static getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J
    .locals 3

    .line 1348
    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v0

    .line 1349
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1353
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private getContentVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 7

    .line 688
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 690
    :goto_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 691
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentPendingContentPositionMs:Z

    goto :goto_1

    .line 693
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-nez v1, :cond_2

    .line 694
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 695
    :cond_2
    iget-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    sub-long/2addr v1, v3

    .line 697
    iget-wide v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    add-long/2addr v1, v3

    move-wide v4, v1

    goto :goto_1

    .line 698
    :cond_3
    iget v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 699
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v4

    :goto_1
    if-eqz v0, :cond_4

    .line 703
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    goto :goto_2

    :cond_4
    const-wide/16 v0, -0x1

    .line 704
    :goto_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v2

    .line 701
    :cond_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method

.method private getLoadingAdGroupIndex()I
    .locals 6

    .line 1307
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1310
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v2, v3}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    .line 1311
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    .line 1312
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1314
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    .line 1316
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    .line 1315
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result v0

    :cond_1
    return v0
.end method

.method private getPlayerVolumePercent()I
    .locals 2

    .line 739
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    .line 741
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastVolumePercent:I

    return v0

    :cond_0
    const/16 v1, 0x16

    .line 744
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    invoke-interface {v0}, Landroidx/media3/common/Player;->getVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 749
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private handleAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 6

    .line 753
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 757
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/ima/AdTagLoader$1;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "AdTagLoader"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 796
    :pswitch_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 798
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 801
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->setAdMimeType(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;Ljava/lang/String;)V

    return-void

    .line 791
    :pswitch_1
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 793
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 787
    :pswitch_2
    iput-boolean v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaPausedContent:Z

    .line 788
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->resumeContentInternal()V

    return-void

    .line 782
    :goto_0
    :pswitch_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 783
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdClicked()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 777
    :goto_1
    :pswitch_4
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 778
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdTapped()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    .line 773
    :pswitch_5
    iput-boolean v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaPausedContent:Z

    .line 774
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->pauseContentInternal()V

    return-void

    .line 759
    :pswitch_6
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "adBreakTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 760
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_2

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch error for ad at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v4

    if-nez p1, :cond_3

    .line 766
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget p1, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    sub-int/2addr p1, v3

    goto :goto_3

    .line 767
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdGroupIndexForCuePointTimeSeconds(D)I

    move-result p1

    .line 768
    :goto_3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->markAdGroupInErrorStateAndClearPendingContentPosition(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAdGroupLoadError(Ljava/lang/Exception;)V
    .locals 2

    .line 1134
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getLoadingAdGroupIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1136
    const-string v0, "AdTagLoader"

    const-string v1, "Unable to determine ad group index for ad group load error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1139
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->markAdGroupInErrorStateAndClearPendingContentPosition(I)V

    .line 1140
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    if-nez v1, :cond_1

    .line 1141
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->createForAdGroup(Ljava/lang/Exception;I)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    :cond_1
    return-void
.end method

.method private handleAdLoadTimeout()V
    .locals 2

    .line 1148
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->isWaitingForCurrentAdToLoad()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1152
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ad loading timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleAdGroupLoadError(Ljava/lang/Exception;)V

    .line 1153
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeNotifyPendingAdLoadError()V

    return-void
.end method

.method private handleAdPrepareError(IILjava/lang/Exception;)V
    .locals 4

    .line 1178
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "AdTagLoader"

    if-eqz v0, :cond_0

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare error for ad "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in group "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1182
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez p3, :cond_1

    .line 1183
    const-string p1, "Ignoring ad prepare error after release"

    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1186
    :cond_1
    iget p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-nez p3, :cond_3

    .line 1189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 1190
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p3, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p3

    iget-wide v0, p3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p3, v0, v2

    if-nez p3, :cond_2

    .line 1192
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    .line 1194
    :cond_2
    new-instance p3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-direct {p3, p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;-><init>(II)V

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdPrepareErrorAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    goto :goto_2

    .line 1196
    :cond_3
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1198
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAdIndexInAdGroup:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_4

    move v0, v1

    .line 1201
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1202
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v2, p3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1205
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAdIndexInAdGroup:I

    .line 1206
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1207
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1210
    :cond_5
    :goto_2
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1211
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private handlePlayerStateChanged(ZI)V
    .locals 5

    .line 875
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 876
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->bufferingAd:Z

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 877
    iput-boolean v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->bufferingAd:Z

    .line 878
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move v3, v2

    .line 879
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 880
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v4, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onBuffering(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 882
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->stopUpdatingAdProgress()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 884
    iput-boolean v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->bufferingAd:Z

    .line 885
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgress()V

    .line 889
    :cond_2
    :goto_1
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    const/4 v3, 0x4

    if-nez v0, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v3, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 892
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->ensureSentContentCompleteIfAtEndOfStream()V

    return-void

    :cond_4
    if-eqz v0, :cond_7

    if-ne p2, v3, :cond_7

    .line 894
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 895
    const-string p2, "AdTagLoader"

    if-nez p1, :cond_5

    .line 896
    const-string p1, "onEnded without ad media info"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 898
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 899
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 902
    :cond_6
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz p1, :cond_7

    .line 903
    const-string p1, "VideoAdPlayerCallback.onEnded in onPlaybackStateChanged"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private handleTimelineOrPositionChanged()V
    .locals 8

    .line 909
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    .line 910
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 913
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 914
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->ensureSentContentCompleteIfAtEndOfStream()V

    .line 915
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentContentComplete:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 916
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v4

    .line 917
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v6

    iget-object v7, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v6, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 918
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 920
    iput-boolean v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentPendingContentPositionMs:Z

    .line 921
    iput-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    .line 926
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    .line 927
    iget v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAdIndexInAdGroup:I

    .line 928
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    if-eqz v5, :cond_2

    .line 929
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iput v5, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAdIndexInAdGroup:I

    if-eqz v1, :cond_6

    if-eq v5, v4, :cond_6

    .line 934
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 935
    const-string v5, "AdTagLoader"

    if-nez v4, :cond_3

    .line 936
    const-string v2, "onEnded without ad media info"

    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 938
    :cond_3
    iget-object v6, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    .line 939
    iget v7, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAdIndexInAdGroup:I

    if-eq v7, v3, :cond_4

    if-eqz v6, :cond_6

    iget v3, v6, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    if-ge v3, v7, :cond_6

    .line 941
    :cond_4
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 942
    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 944
    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v2, :cond_6

    .line 945
    const-string v2, "VideoAdPlayerCallback.onEnded in onTimelineChanged/onPositionDiscontinuity"

    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_6
    :goto_2
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentContentComplete:Z

    if-nez v2, :cond_8

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    if-eqz v1, :cond_8

    iget v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-nez v1, :cond_8

    .line 952
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 953
    iget-wide v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 954
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->sendContentComplete()V

    goto :goto_3

    .line 957
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 958
    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    .line 960
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    .line 964
    :cond_8
    :goto_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->isWaitingForCurrentAdToLoad()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 965
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adLoadTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 966
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adLoadTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-wide v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->adPreloadTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_4
    return-void
.end method

.method private static hasMidrollAdGroups(Landroidx/media3/common/AdPlaybackState;)Z
    .locals 9

    .line 1358
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const-wide/high16 v1, -0x8000000000000000L

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 1360
    invoke-virtual {p0, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p0, v7, v3

    if-eqz p0, :cond_0

    cmp-long p0, v7, v1

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :cond_1
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 1363
    invoke-virtual {p0, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_3

    .line 1364
    invoke-virtual {p0, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    :goto_0
    return v6
.end method

.method private isWaitingForCurrentAdToLoad()Z
    .locals 7

    .line 855
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 859
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 863
    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v5, v4, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v6, 0x1

    if-lt v2, v5, :cond_2

    return v6

    .line 866
    :cond_2
    invoke-virtual {v4, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 867
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v0

    .line 868
    iget v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-eq v4, v3, :cond_5

    if-gt v4, v0, :cond_3

    goto :goto_0

    .line 871
    :cond_3
    iget-object v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v0, v2, v0

    if-nez v0, :cond_4

    return v6

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v6
.end method

.method private isWaitingForFirstAdToPreload()Z
    .locals 6

    .line 833
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 837
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getLoadingAdGroupIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 841
    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v4, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 842
    iget v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-eq v4, v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    return v1

    .line 848
    :cond_2
    iget-wide v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    .line 849
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v4, v5}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 851
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-wide v4, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->adPreloadTimeoutMs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private loadAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 6

    .line 971
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    const-string v1, "AdTagLoader"

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_2

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd after release "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ad pod "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 974
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 981
    :cond_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdGroupIndexForAdPod(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)I

    move-result v0

    .line 982
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 983
    new-instance v3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-direct {v3, v0, v2}, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;-><init>(II)V

    .line 985
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v4, p1, v3}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v4, :cond_1

    .line 987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return-void

    .line 998
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v4, v3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    invoke-virtual {v1, v4}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 999
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v5, v3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    .line 1001
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result p2

    iget-object v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1000
    invoke-virtual {v4, v5, p2}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1002
    iget v1, v3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    invoke-virtual {p2, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    .line 1005
    iget-object v4, p2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v1

    if-nez v4, :cond_4

    .line 1006
    iget-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_5
    new-instance p2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 1011
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->mimeTypeByAdInfo:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 1013
    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 1016
    :cond_6
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v0, v3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    iget v1, v3, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    .line 1018
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 1017
    invoke-virtual {p2, v0, v1, p1}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1019
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private markAdGroupInErrorStateAndClearPendingContentPosition(I)V
    .locals 4

    .line 1158
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 1159
    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1160
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v0, v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1161
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1163
    :goto_0
    iget v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v1, v2, :cond_3

    .line 1164
    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v2, v2, v1

    if-nez v2, :cond_2

    .line 1165
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v2, :cond_1

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in ad group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdTagLoader"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2, p1, v1}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1173
    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    .line 1174
    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    return-void
.end method

.method private maybeInitializeAdsManager(JJ)V
    .locals 2

    .line 600
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 601
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->isAdsManagerInitialized:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 602
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->isAdsManagerInitialized:Z

    .line 605
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->setupAdsRendering(JJ)Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object p1

    if-nez p1, :cond_0

    .line 608
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->destroyAdsManager()V

    goto :goto_0

    .line 610
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 611
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 612
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean p2, p2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz p2, :cond_1

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Initialized with ads rendering settings: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdTagLoader"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    :cond_2
    return-void
.end method

.method private maybeNotifyInternalError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1270
    const-string v0, "AdTagLoader"

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1272
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v3, v2, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v1, v3, :cond_0

    .line 1273
    invoke-virtual {v2, v1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    .line 1276
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1277
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    .line 1278
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1280
    invoke-static {v2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adTagDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 1279
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdLoadError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;Landroidx/media3/datasource/DataSpec;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private maybeNotifyPendingAdLoadError()V
    .locals 4

    .line 1260
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1261
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1262
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adTagDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdLoadError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;Landroidx/media3/datasource/DataSpec;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1264
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    :cond_1
    return-void
.end method

.method private pauseAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 3

    .line 1068
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "AdTagLoader"

    if-eqz v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseAd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1075
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 1080
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected pauseAd for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1086
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x2

    .line 1088
    iput v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    const/4 v0, 0x0

    .line 1089
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1090
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private pauseContentInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 811
    iput v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    .line 812
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentPendingContentPositionMs:Z

    if-eqz v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 813
    iput-wide v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    .line 814
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentPendingContentPositionMs:Z

    :cond_0
    return-void
.end method

.method private playAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 5

    .line 1023
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "AdTagLoader"

    if-eqz v0, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 1031
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1034
    const-string v0, "Unexpected playAd without stopAd"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_2
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1039
    iput-wide v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 1040
    iput-wide v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->fakeContentProgressOffsetMs:J

    .line 1041
    iput v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    .line 1042
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1043
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    move v0, v1

    .line 1044
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1045
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdPrepareErrorAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1048
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdPrepareErrorAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    .line 1049
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1050
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1053
    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgress()V

    goto :goto_3

    .line 1055
    :cond_5
    iput v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    .line 1056
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1057
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1058
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1061
    :cond_6
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    return-void

    .line 1063
    :cond_8
    :goto_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    return-void
.end method

.method private requestAds(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 2

    .line 570
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    .line 571
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 572
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object p2, p2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz p2, :cond_0

    .line 573
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 575
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 578
    :try_start_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adTagDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-static {p2, p3}, Landroidx/media3/exoplayer/ima/ImaUtil;->getAdsRequestForAdTagDataSpec(Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;Landroidx/media3/datasource/DataSpec;)Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdRequestContext:Ljava/lang/Object;

    .line 587
    invoke-interface {p2, p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->setUserRequestContext(Ljava/lang/Object;)V

    .line 588
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object p3, p3, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->enableContinuousPlayback:Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    .line 589
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContinuousPlayback(Z)V

    .line 591
    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget p3, p3, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->vastLoadTimeoutMs:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    int-to-float p3, p3

    .line 592
    invoke-interface {p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setVastLoadTimeout(F)V

    .line 594
    :cond_2
    iget-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentPlaybackAdapter:Landroidx/media3/exoplayer/ima/AdTagLoader$ContentPlaybackAdapter;

    invoke-interface {p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    .line 595
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    return-object p1

    :catch_0
    move-exception p2

    .line 580
    new-instance p3, Landroidx/media3/common/AdPlaybackState;

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsId:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {p3, v0, v1}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    iput-object p3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 581
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    .line 582
    invoke-static {p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->createForAllAds(Ljava/lang/Exception;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    .line 583
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeNotifyPendingAdLoadError()V

    return-object p1
.end method

.method private resumeContentInternal()V
    .locals 2

    .line 819
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    if-eqz v0, :cond_0

    .line 823
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    iget v0, v0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 824
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    :cond_0
    return-void
.end method

.method private sendContentComplete()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1238
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1239
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onContentComplete()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1241
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->sentContentComplete:Z

    .line 1242
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_1

    .line 1243
    const-string v1, "AdTagLoader"

    const-string v2, "adsLoader.contentComplete"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v2, v1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v0, v2, :cond_3

    .line 1246
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1247
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1250
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private setAdMimeType(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;Ljava/lang/String;)V
    .locals 2

    .line 1286
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdGroupIndexForAdPod(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)I

    move-result v0

    .line 1287
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 1288
    new-instance v1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;-><init>(II)V

    .line 1289
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->mimeTypeByAdInfo:Ljava/util/Map;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupAdsRendering(JJ)Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 6

    .line 626
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 627
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setEnablePreloading(Z)V

    .line 629
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->adMediaMimeTypes:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->supportedMimeTypes:Ljava/util/List;

    .line 628
    :goto_0
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setMimeTypes(Ljava/util/List;)V

    .line 632
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->mediaLoadTimeoutMs:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 633
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setLoadVideoTimeout(I)V

    .line 635
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->mediaBitrate:I

    if-eq v2, v3, :cond_2

    .line 636
    div-int/lit16 v2, v2, 0x3e8

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setBitrateKbps(I)V

    .line 638
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->focusSkipButtonWhenAvailable:Z

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setFocusSkipButtonWhenAvailable(Z)V

    .line 640
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object v2, v2, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->adUiElements:Ljava/util/Set;

    if-eqz v2, :cond_3

    .line 641
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setUiElements(Ljava/util/Set;)V

    .line 645
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 647
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p3

    .line 646
    invoke-virtual {v2, v4, v5, p3, p4}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p3

    if-eq p3, v3, :cond_a

    .line 649
    iget-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 650
    invoke-virtual {p4, p3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide v2, p4, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    cmp-long p4, v2, v4

    if-eqz p4, :cond_5

    iget-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean p4, p4, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->playAdBeforeStartPosition:Z

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 654
    :cond_5
    :goto_1
    iget-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {p4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->hasMidrollAdGroups(Landroidx/media3/common/AdPlaybackState;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 658
    iput-wide p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingContentPositionMs:J

    :cond_6
    :goto_2
    if-lez p3, :cond_a

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p3, :cond_7

    .line 662
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p2, p1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 664
    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget p2, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne p3, p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 669
    :cond_8
    invoke-virtual {p1, p3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    iget-wide p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 670
    iget-object p4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    sub-int/2addr p3, v1

    .line 671
    invoke-virtual {p4, p3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p3

    iget-wide p3, p3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p1, v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    if-nez v1, :cond_9

    long-to-double p1, p3

    div-double/2addr p1, v2

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, p3

    .line 674
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setPlayAdsAfterTime(D)V

    return-object v0

    :cond_9
    add-long/2addr p1, p3

    long-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    div-double/2addr p1, v2

    .line 680
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setPlayAdsAfterTime(D)V

    :cond_a
    return-object v0
.end method

.method private stopAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1095
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdTagLoader"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1102
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-nez v0, :cond_2

    .line 1106
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    if-eqz p1, :cond_4

    .line 1108
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v1, p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    iget p1, p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    .line 1109
    invoke-virtual {v0, v1, p1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1110
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1114
    iput p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    .line 1115
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->stopUpdatingAdProgress()V

    .line 1117
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    iget v0, p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    .line 1119
    iget p1, p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    .line 1120
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1124
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1125
    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/AdPlaybackState;->withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withAdResumePositionUs(J)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1126
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    .line 1127
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->playingAd:Z

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 1128
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1129
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    :cond_4
    :goto_0
    return-void
.end method

.method private stopUpdatingAdProgress()V
    .locals 2

    .line 735
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAdPlaybackState()V
    .locals 3

    const/4 v0, 0x0

    .line 1254
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1255
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAdProgress()V
    .locals 4

    .line 721
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 722
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaUtil;->getStringForVideoProgressUpdate(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdTagLoader"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const/4 v2, 0x0

    .line 727
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 728
    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onAdProgress(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 731
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public activate(Landroidx/media3/common/Player;)V
    .locals 6

    .line 368
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    .line 369
    invoke-interface {p1, p0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 371
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    .line 372
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    .line 373
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 374
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2, v3}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaPausedContent:Z

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p1, v2, v3}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v2

    .line 378
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 380
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    .line 379
    invoke-virtual {p1, v2, v3, v4, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 381
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    if-eqz v2, :cond_1

    iget v2, v2, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    if-eq v2, p1, :cond_1

    .line 384
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz p1, :cond_0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding preloaded ad "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AdTagLoader"

    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->discardAdBreak()V

    :cond_1
    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    :cond_2
    return-void
.end method

.method public addListenerWithAdView(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;Landroidx/media3/common/AdViewProvider;)V
    .locals 4

    .line 328
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 329
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    .line 331
    sget-object p2, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p2, v0}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 333
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 337
    iput v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastVolumePercent:I

    .line 338
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 339
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 340
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeNotifyPendingAdLoadError()V

    .line 341
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_2

    .line 345
    new-instance p1, Landroidx/media3/common/AdPlaybackState;

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsId:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 346
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaUtil;->getAdGroupTimesUsForCuePoints(Ljava/util/List;)[J

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 347
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    .line 349
    :cond_2
    :goto_0
    invoke-interface {p2}, Landroidx/media3/common/AdViewProvider;->getAdOverlayInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/AdOverlayInfo;

    .line 350
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    iget-object v2, p2, Landroidx/media3/common/AdOverlayInfo;->view:Landroid/view/View;

    iget v3, p2, Landroidx/media3/common/AdOverlayInfo;->purpose:I

    .line 353
    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaUtil;->getFriendlyObstructionPurpose(I)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v3

    iget-object p2, p2, Landroidx/media3/common/AdOverlayInfo;->reasonDetail:Ljava/lang/String;

    .line 351
    invoke-interface {v1, v2, v3, p2}, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;->createFriendlyObstruction(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    move-result-object p2

    .line 350
    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->registerFriendlyObstruction(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public deactivate()V
    .locals 3

    .line 397
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    .line 400
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->handler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/exoplayer/ima/AdTagLoader$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/ima/AdTagLoader;Landroidx/media3/common/Player;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public focusSkipButton()V
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseManager;->focus()V

    :cond_0
    return-void
.end method

.method public getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .line 303
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    return-object v0
.end method

.method public getAdsLoader()Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-object v0
.end method

.method public handlePrepareComplete(II)V
    .locals 2

    .line 464
    new-instance v0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;-><init>(II)V

    .line 465
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string p2, "AdTagLoader"

    if-eqz p1, :cond_0

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared ad "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 470
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 471
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onLoaded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 474
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected prepared ad "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePrepareError(IILjava/io/IOException;)V
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    .line 484
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleAdPrepareError(IILjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 486
    const-string p2, "handlePrepareError"

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeNotifyInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public maybePreloadAds(JJ)V
    .locals 0

    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeInitializeAdsManager(JJ)V

    return-void
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

.method public synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMetadata(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 3

    .line 540
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p2, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 545
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_2

    .line 550
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    return-void

    .line 553
    :cond_2
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handlePlayerStateChanged(ZI)V

    :cond_3
    :goto_0
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

    .line 521
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    .line 522
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 527
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->isWaitingForFirstAdToPreload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->waitingForPreloadElapsedRealtimeMs:J

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 531
    iput-wide v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->waitingForPreloadElapsedRealtimeMs:J

    .line 534
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handlePlayerStateChanged(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    .line 558
    iget p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player;

    invoke-interface {p1}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 559
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const/4 v0, 0x0

    .line 560
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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
    .locals 0

    .line 516
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleTimelineOrPositionChanged()V

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
    .locals 5

    .line 494
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->player:Landroidx/media3/common/Player;

    if-nez p2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->timeline:Landroidx/media3/common/Timeline;

    .line 500
    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 501
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    .line 502
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v3, v2, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    .line 503
    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withContentDurationUs(J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 504
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    .line 506
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p2, p1, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getContentPeriodPositionMs(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide p1

    .line 507
    iget-wide v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->contentDurationMs:J

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybeInitializeAdsManager(JJ)V

    .line 508
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handleTimelineOrPositionChanged()V

    :cond_2
    :goto_0
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

.method public release()V
    .locals 3

    .line 437
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->released:Z

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdRequestContext:Ljava/lang/Object;

    .line 442
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->destroyAdsManager()V

    .line 443
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 444
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->componentListener:Landroidx/media3/exoplayer/ima/AdTagLoader$ComponentListener;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 445
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object v1, v1, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v1, :cond_1

    .line 446
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 448
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->release()V

    const/4 v1, 0x0

    .line 449
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaPausedContent:Z

    .line 450
    iput v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdState:I

    .line 451
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 452
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->stopUpdatingAdProgress()V

    .line 453
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->imaAdInfo:Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    .line 454
    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->pendingAdLoadError:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    .line 456
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v2, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v1, v2, :cond_2

    .line 457
    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->updateAdPlaybackState()V

    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->unregisterAllFriendlyObstructions()V

    :cond_0
    return-void
.end method

.method public skipAd()V
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->skip()V

    :cond_0
    return-void
.end method
