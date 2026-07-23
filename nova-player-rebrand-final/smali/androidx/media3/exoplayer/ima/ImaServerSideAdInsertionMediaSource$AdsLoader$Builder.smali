.class public final Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

.field private adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

.field private final adViewProvider:Landroidx/media3/common/AdViewProvider;

.field private companionAdSlots:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private focusSkipButtonWhenAvailable:Z

.field private imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private state:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

.field private streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;


# direct methods
.method public static synthetic $r8$lambda$fR4c1xv4_hsHMjnCvpY2ZC-Ln-0(Landroidx/media3/common/MediaItem;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/AdViewProvider;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->context:Landroid/content/Context;

    .line 234
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    .line 235
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->companionAdSlots:Lcom/google/common/collect/ImmutableList;

    .line 236
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->state:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->focusSkipButtonWhenAvailable:Z

    .line 238
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;
    .locals 11

    .line 359
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v0, :cond_0

    .line 361
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    .line 362
    invoke-static {}, Landroidx/media3/common/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    :cond_0
    move-object v4, v0

    .line 364
    new-instance v2, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    iget-object v5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    iget-object v6, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    iget-object v7, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    iget-object v8, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->companionAdSlots:Lcom/google/common/collect/ImmutableList;

    iget-boolean v9, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->focusSkipButtonWhenAvailable:Z

    .line 373
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->isDebugMode()Z

    move-result v10

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;-><init>(Landroidx/media3/common/AdViewProvider;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;Ljava/util/List;ZZ)V

    .line 374
    new-instance v0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->state:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$ServerSideAdInsertionConfiguration;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V

    return-object v0
.end method

.method public setAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 308
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    return-object p0
.end method

.method public setAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 289
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    return-object p0
.end method

.method public setAdsLoaderState(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0

    .line 336
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->state:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$State;

    return-object p0
.end method

.method public setCompanionAdSlots(Ljava/util/Collection;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;)",
            "Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;"
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->companionAdSlots:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setFocusSkipButtonWhenAvailable(Z)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 353
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->focusSkipButtonWhenAvailable:Z

    return-object p0
.end method

.method public setImaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 257
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object p0
.end method

.method public setStreamEventListener(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 270
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$AdsLoader$Builder;->streamEventListener:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamEventListener;

    return-object p0
.end method
