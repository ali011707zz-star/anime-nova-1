.class public final Landroidx/media3/exoplayer/ima/ImaAdsLoader;
.super Ljava/lang/Object;
.source "ImaAdsLoader.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ads/AdsLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;,
        Landroidx/media3/exoplayer/ima/ImaAdsLoader$DefaultImaFactory;,
        Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    }
.end annotation


# instance fields
.field private final adTagLoaderByAdsId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/ima/AdTagLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final adTagLoaderByAdsMediaSource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/exoplayer/source/ads/AdsMediaSource;",
            "Landroidx/media3/exoplayer/ima/AdTagLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

.field private final context:Landroid/content/Context;

.field private currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

.field private final imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

.field private nextPlayer:Landroidx/media3/common/Player;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private player:Landroidx/media3/common/Player;

.field private final playerListener:Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;

.field private supportedMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wasSetPlayerCalled:Z

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-string v0, "media3.exoplayer.ima"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->context:Landroid/content/Context;

    .line 445
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    .line 446
    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    .line 447
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;-><init>(Landroidx/media3/exoplayer/ima/ImaAdsLoader;Landroidx/media3/exoplayer/ima/ImaAdsLoader$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->playerListener:Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;

    .line 448
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->supportedMimeTypes:Ljava/util/List;

    .line 449
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    .line 450
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    .line 451
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    .line 452
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;Landroidx/media3/exoplayer/ima/ImaAdsLoader$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/ima/ImaAdsLoader;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->maybeUpdateCurrentAdTagLoader()V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/ima/ImaAdsLoader;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->maybePreloadNextPeriodAds()V

    return-void
.end method

.method private getCurrentAdTagLoader()Landroidx/media3/exoplayer/ima/AdTagLoader;
    .locals 4

    .line 676
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 680
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    .line 681
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 684
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v0

    .line 685
    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v0, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 689
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v0, :cond_4

    .line 690
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private maybePreloadNextPeriodAds()V
    .locals 7

    .line 697
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 702
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 707
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->window:Landroidx/media3/common/Timeline$Window;

    .line 710
    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v5

    .line 711
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v6

    .line 706
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 715
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 716
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 720
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v0, :cond_5

    .line 721
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 724
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    iget v4, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 725
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 727
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 728
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->maybePreloadAds(JJ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private maybeUpdateCurrentAdTagLoader()V
    .locals 3

    .line 661
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 662
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->getCurrentAdTagLoader()Landroidx/media3/exoplayer/ima/AdTagLoader;

    move-result-object v1

    .line 663
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->deactivate()V

    .line 667
    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v1, :cond_1

    .line 669
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->activate(Landroidx/media3/common/Player;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public focusSkipButton()V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 531
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->focusSkipButton()V

    :cond_0
    return-void
.end method

.method public getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 479
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdsLoader()Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 462
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->getAdsLoader()Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic handleContentTimelineChanged(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/Timeline;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$-CC;->$default$handleContentTimelineChanged(Landroidx/media3/exoplayer/source/ads/AdsLoader;Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/Timeline;)Z

    move-result p1

    return p1
.end method

.method public handlePrepareComplete(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;II)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 637
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 641
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handlePrepareComplete(II)V

    return-void
.end method

.method public handlePrepareError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;IILjava/io/IOException;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 651
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 655
    invoke-virtual {p1, p2, p3, p4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->handlePrepareError(IILjava/io/IOException;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 615
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 616
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->playerListener:Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 617
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    .line 618
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->maybeUpdateCurrentAdTagLoader()V

    .line 620
    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->nextPlayer:Landroidx/media3/common/Player;

    .line 622
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 623
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->release()V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 627
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 628
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ima/AdTagLoader;->release()V

    goto :goto_1

    .line 630
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public requestAds(Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 9
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 497
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    new-instance v1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->configuration:Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-object v4, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->supportedMimeTypes:Ljava/util/List;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ima/AdTagLoader;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;Ljava/util/List;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 507
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    .line 540
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroidx/media3/exoplayer/ima/ImaUtil;->getImaLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz p1, :cond_1

    .line 541
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroidx/media3/exoplayer/ima/ImaUtil;->getImaLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 542
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->nextPlayer:Landroidx/media3/common/Player;

    .line 543
    iput-boolean v3, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->wasSetPlayerCalled:Z

    return-void
.end method

.method public varargs setSupportedContentTypes([I)V
    .locals 8
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    if-nez v3, :cond_0

    .line 553
    const-string v3, "application/dash+xml"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 555
    const-string v3, "application/x-mpegURL"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 557
    const-string v3, "audio/mp4"

    const-string v4, "audio/mpeg"

    const-string v5, "video/mp4"

    const-string v6, "video/webm"

    const-string v7, "video/3gpp"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 557
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->supportedMimeTypes:Ljava/util/List;

    return-void
.end method

.method public skipAd()V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 520
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->currentAdTagLoader:Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/AdTagLoader;->skipAd()V

    :cond_0
    return-void
.end method

.method public start(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 577
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->wasSetPlayerCalled:Z

    const-string v1, "Set player using adsLoader.setPlayer before preparing the player."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 579
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->nextPlayer:Landroidx/media3/common/Player;

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->playerListener:Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 588
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader;

    if-nez v0, :cond_2

    .line 590
    invoke-interface {p4}, Landroidx/media3/common/AdViewProvider;->getAdViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->requestAds(Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 591
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsId:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 593
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/ima/AdTagLoader;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v0, p5, p4}, Landroidx/media3/exoplayer/ima/AdTagLoader;->addListenerWithAdView(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;Landroidx/media3/common/AdViewProvider;)V

    .line 595
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->maybeUpdateCurrentAdTagLoader()V

    return-void
.end method

.method public stop(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 601
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader;

    .line 602
    invoke-direct {p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->maybeUpdateCurrentAdTagLoader()V

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ima/AdTagLoader;->removeListener(Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V

    .line 607
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->adTagLoaderByAdsMediaSource:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 608
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    iget-object p2, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->playerListener:Landroidx/media3/exoplayer/ima/ImaAdsLoader$PlayerListenerImpl;

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    const/4 p1, 0x0

    .line 609
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->player:Landroidx/media3/common/Player;

    :cond_1
    return-void
.end method
