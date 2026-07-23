.class public final Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

.field private final contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    .line 153
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 10
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 183
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$000(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/common/Player;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/common/Player;

    .line 185
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 187
    invoke-static {v0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->createStreamRequest(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object v4

    .line 188
    new-instance v7, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    invoke-direct {v7, v2, p1, v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;-><init>(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)V

    .line 189
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    .line 190
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    .line 191
    invoke-static {v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$200(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    .line 192
    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    .line 194
    invoke-static {v3}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$300(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    invoke-static {v5}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$100(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;)Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 193
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v6

    .line 195
    new-instance v1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    iget-object v8, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;-><init>(Landroidx/media3/common/Player;Landroidx/media3/common/MediaItem;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    .line 204
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->adsLoader:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    invoke-static {p1, v1, v7, v6}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;->access$500(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;)V

    return-object v1
.end method

.method public synthetic experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory$-CC;->$default$experimentalParseSubtitlesDuringExtraction(Landroidx/media3/exoplayer/source/MediaSource$Factory;Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory$-CC;->$default$experimentalSetCodecsToParseWithinGopSampleDependencies(Landroidx/media3/exoplayer/source/MediaSource$Factory;I)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedTypes()[I
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 177
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->getSupportedTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public synthetic setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory$-CC;->$default$setCmcdConfigurationFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setDownloadExecutor(Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory$-CC;->$default$setDownloadExecutor(Landroidx/media3/exoplayer/source/MediaSource$Factory;Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 161
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$Factory;->contentMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method public synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory$-CC;->$default$setSubtitleParserFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method
