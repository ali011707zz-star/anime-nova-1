.class public final Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
.super Ljava/lang/Object;
.source "ImaAdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaAdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_AD_PRELOAD_TIMEOUT_MS:J = 0x2710L
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field


# instance fields
.field private adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

.field private adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

.field private adMediaMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adPreloadTimeoutMs:J

.field private adUiElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field private companionAdSlots:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private debugModeEnabled:Z

.field private enableContinuousPlayback:Ljava/lang/Boolean;

.field private focusSkipButtonWhenAvailable:Z

.field private imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

.field private imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private mediaBitrate:I

.field private mediaLoadTimeoutMs:I

.field private playAdBeforeStartPosition:Z

.field private vastLoadTimeoutMs:I

.field private videoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->context:Landroid/content/Context;

    const-wide/16 v0, 0x2710

    .line 139
    iput-wide v0, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adPreloadTimeoutMs:J

    const/4 p1, -0x1

    .line 140
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->vastLoadTimeoutMs:I

    .line 141
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->mediaLoadTimeoutMs:I

    .line 142
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->mediaBitrate:I

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->focusSkipButtonWhenAvailable:Z

    .line 144
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->playAdBeforeStartPosition:Z

    .line 145
    new-instance p1, Landroidx/media3/exoplayer/ima/ImaAdsLoader$DefaultImaFactory;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$DefaultImaFactory;-><init>(Landroidx/media3/exoplayer/ima/ImaAdsLoader$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ima/ImaAdsLoader;
    .locals 21

    move-object/from16 v0, p0

    .line 402
    iget v1, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->vastLoadTimeoutMs:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-wide v2, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adPreloadTimeoutMs:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    int-to-long v1, v1

    .line 403
    iput-wide v1, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adPreloadTimeoutMs:J

    .line 405
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    iget-object v2, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->context:Landroid/content/Context;

    new-instance v3, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;

    iget-wide v4, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adPreloadTimeoutMs:J

    iget v6, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->vastLoadTimeoutMs:I

    iget v7, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->mediaLoadTimeoutMs:I

    iget-boolean v8, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->focusSkipButtonWhenAvailable:Z

    iget-boolean v9, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->playAdBeforeStartPosition:Z

    iget v10, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->mediaBitrate:I

    iget-object v11, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->enableContinuousPlayback:Ljava/lang/Boolean;

    iget-object v12, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adMediaMimeTypes:Ljava/util/List;

    iget-object v13, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adUiElements:Ljava/util/Set;

    iget-object v14, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->companionAdSlots:Ljava/util/Collection;

    iget-object v15, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    move-object/from16 v16, v3

    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    move-object/from16 v17, v3

    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->videoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    move-object/from16 v18, v3

    iget-object v3, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-object/from16 v19, v3

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->debugModeEnabled:Z

    move-object/from16 v20, v19

    move/from16 v19, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    invoke-direct/range {v3 .. v19}, Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;-><init>(JIIZZILjava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Z)V

    iget-object v4, v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/ima/ImaUtil$Configuration;Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;Landroidx/media3/exoplayer/ima/ImaAdsLoader$1;)V

    return-object v1
.end method

.method public setAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 175
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    return-object p0
.end method

.method public setAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    return-object p0
.end method

.method public setAdMediaMimeTypes(Ljava/util/List;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;"
        }
    .end annotation

    .line 254
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adMediaMimeTypes:Ljava/util/List;

    return-object p0
.end method

.method public setAdPreloadTimeoutMs(J)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 293
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 294
    iput-wide p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adPreloadTimeoutMs:J

    return-object p0
.end method

.method public setAdUiElements(Ljava/util/Set;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;)",
            "Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->adUiElements:Ljava/util/Set;

    return-object p0
.end method

.method public setCompanionAdSlots(Ljava/util/Collection;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;)",
            "Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->companionAdSlots:Ljava/util/Collection;

    return-object p0
.end method

.method public setDebugModeEnabled(Z)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 389
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->debugModeEnabled:Z

    return-object p0
.end method

.method public setEnableContinuousPlayback(Z)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->enableContinuousPlayback:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setFocusSkipButtonWhenAvailable(Z)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 355
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->focusSkipButtonWhenAvailable:Z

    return-object p0
.end method

.method setImaFactory(Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0

    .line 396
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->imaFactory:Landroidx/media3/exoplayer/ima/ImaUtil$ImaFactory;

    return-object p0
.end method

.method public setImaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 160
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object p0
.end method

.method public setMaxMediaBitrate(I)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 338
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 339
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->mediaBitrate:I

    return-object p0
.end method

.method public setMediaLoadTimeoutMs(I)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 324
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->mediaLoadTimeoutMs:I

    return-object p0
.end method

.method public setPlayAdBeforeStartPosition(Z)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 372
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->playAdBeforeStartPosition:Z

    return-object p0
.end method

.method public setVastLoadTimeoutMs(I)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 309
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->vastLoadTimeoutMs:I

    return-object p0
.end method

.method public setVideoAdPlayerCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 207
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->videoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    return-object p0
.end method
