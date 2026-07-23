.class final Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;
.super Ljava/lang/Object;
.source "HlsInterstitialsAdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentMediaSourceAdDataHolder"
.end annotation


# instance fields
.field private final activeAdPlaybackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private final activeEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final contentSourceAwaitingFirstAdToStart:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final insertedInterstitialIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unresolvedAssetLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unsupportedAdsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeEventListeners:Ljava/util/Map;

    .line 1788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeAdPlaybackStates:Ljava/util/Map;

    .line 1789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->insertedInterstitialIds:Ljava/util/Map;

    .line 1790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unresolvedAssetLists:Ljava/util/Map;

    .line 1791
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->contentSourceAwaitingFirstAdToStart:Ljava/util/Set;

    .line 1792
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unsupportedAdsIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addInsertedInterstitialId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1872
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->insertedInterstitialIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 1874
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addUnsupportedContentMediaSource(Ljava/lang/Object;)V
    .locals 1

    .line 1842
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public awaitingFirstAdToStartFor(Ljava/lang/Object;)Z
    .locals 1

    .line 1819
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->contentSourceAwaitingFirstAdToStart:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdPlaybackState(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;
    .locals 1

    .line 1862
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    return-object p1
.end method

.method public getAdPlaybackStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;"
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getEventListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;
    .locals 1

    .line 1837
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    return-object p1
.end method

.method public getUnresolvedAssetListCount(Ljava/lang/Object;)I
    .locals 1

    .line 1893
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unresolvedAssetLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    .line 1894
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getUnresolvedAssetLists(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AssetListData;",
            ">;"
        }
    .end annotation

    .line 1888
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unresolvedAssetLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public isIdle()Z
    .locals 1

    .line 1797
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInsertedInterstitialId(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 1880
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->insertedInterstitialIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 1882
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isManagedContentSource(Ljava/lang/Object;)Z
    .locals 1

    .line 1831
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isStartedContentMediaSource(Ljava/lang/Object;)Z
    .locals 1

    .line 1824
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUnsupportedContentMediaSource(Ljava/lang/Object;)Z
    .locals 1

    .line 1847
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyAdStarted(Ljava/lang/Object;)V
    .locals 1

    .line 1811
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->contentSourceAwaitingFirstAdToStart:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public putAdPlaybackState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 1

    .line 1856
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    return-object p1
.end method

.method public startContentSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;
    .locals 2

    .line 1803
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->insertedInterstitialIds:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unresolvedAssetLists:Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->contentSourceAwaitingFirstAdToStart:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1806
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    return-object p1
.end method

.method public stopContentSource(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;
    .locals 1

    .line 1905
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->insertedInterstitialIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unresolvedAssetLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1909
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->contentSourceAwaitingFirstAdToStart:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1910
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    return-object p1
.end method
