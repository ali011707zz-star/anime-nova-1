.class public final Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionUriBuilder.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final ADS_ID:Ljava/lang/String; = "adsId"

.field private static final AD_TAG_PARAMETERS:Ljava/lang/String; = "adTagParameters"

.field private static final API_KEY:Ljava/lang/String; = "apiKey"

.field private static final ASSET_KEY:Ljava/lang/String; = "assetKey"

.field private static final AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field private static final CONTENT_SOURCE_ID:Ljava/lang/String; = "contentSourceId"

.field private static final CONTENT_URL:Ljava/lang/String; = "contentUrl"

.field private static final CUSTOM_UI_OPTIONS_ABOUT_THIS_AD_SUPPORT:Ljava/lang/String; = "customUiOptionsAboutThisAdSupport"

.field private static final CUSTOM_UI_OPTIONS_SKIPPABLE_SUPPORT:Ljava/lang/String; = "customUiOptionsSkippableSupport"

.field public static final DEFAULT_LOAD_VIDEO_TIMEOUT_MS:I = 0x2710

.field private static final FORMAT:Ljava/lang/String; = "format"

.field static final IMA_AUTHORITY:Ljava/lang/String; = "dai.google.com"

.field private static final LOAD_VIDEO_TIMEOUT_MS:Ljava/lang/String; = "loadVideoTimeoutMs"

.field private static final MANIFEST_SUFFIX:Ljava/lang/String; = "manifestSuffix"

.field private static final NETWORK_CODE:Ljava/lang/String; = "networkCode"

.field private static final STREAM_ACTIVITY_MONITOR_ID:Ljava/lang/String; = "streamActivityMonitorId"

.field private static final VIDEO_ID:Ljava/lang/String; = "videoId"


# instance fields
.field private adTagParameters:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap;"
        }
    .end annotation
.end field

.field private adsId:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private assetKey:Ljava/lang/String;

.field private authToken:Ljava/lang/String;

.field private contentSourceId:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private customUiOptions:Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;

.field public format:I

.field private loadVideoTimeoutMs:I

.field private manifestSuffix:Ljava/lang/String;

.field private networkCode:Ljava/lang/String;

.field private streamActivityMonitorId:Ljava/lang/String;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->adTagParameters:Lcom/google/common/collect/ImmutableMap;

    const/16 v0, 0x2710

    .line 85
    iput v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->loadVideoTimeoutMs:I

    const/4 v0, 0x4

    .line 86
    iput v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->format:I

    return-void
.end method

.method static createStreamRequest(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 7

    .line 376
    const-string v0, "ssai"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "dai.google.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 381
    const-string v0, "assetKey"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v1, "apiKey"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    const-string v2, "contentSourceId"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    const-string v3, "videoId"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    const-string v4, "networkCode"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 388
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    .line 393
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object v0

    .line 395
    :goto_0
    const-string v1, "format"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 397
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setFormat(Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 399
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->HLS:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setFormat(Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;)V

    .line 404
    :goto_1
    const-string v1, "adTagParameters"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 406
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 407
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 409
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 411
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 414
    :cond_3
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setAdTagParameters(Ljava/util/Map;)V

    .line 416
    :cond_4
    const-string v1, "manifestSuffix"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 418
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setManifestSuffix(Ljava/lang/String;)V

    .line 420
    :cond_5
    const-string v1, "contentUrl"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 422
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->setContentUrl(Ljava/lang/String;)V

    .line 424
    :cond_6
    const-string v1, "authToken"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 426
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setAuthToken(Ljava/lang/String;)V

    .line 428
    :cond_7
    const-string v1, "streamActivityMonitorId"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 430
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setStreamActivityMonitorId(Ljava/lang/String;)V

    .line 434
    :cond_8
    const-string v1, "customUiOptionsSkippableSupport"

    .line 435
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    const-string v2, "customUiOptionsAboutThisAdSupport"

    .line 438
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_a

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    return-object v0

    .line 440
    :cond_a
    :goto_3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createCustomUiOptions()Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;

    move-result-object v2

    if-eqz v1, :cond_b

    .line 442
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;->setSkippableSupport(Z)V

    :cond_b
    if-eqz p0, :cond_c

    .line 446
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 445
    invoke-interface {v2, p0}, Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;->setAboutThisAdSupport(Z)V

    .line 448
    :cond_c
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->setCustomUiOptions(Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;)V

    return-object v0

    .line 401
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stream format:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 377
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid URI scheme or authority."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getAdsId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 362
    const-string v0, "adsId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getLoadVideoTimeoutMs(Landroid/net/Uri;)I
    .locals 1

    .line 367
    const-string v0, "loadVideoTimeoutMs"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x2710

    return p0

    .line 370
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static isLiveStream(Landroid/net/Uri;)Z
    .locals 1

    .line 357
    const-string v0, "assetKey"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public build()Landroid/net/Uri;
    .locals 5

    .line 287
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->assetKey:Ljava/lang/String;

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->contentSourceId:Ljava/lang/String;

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->videoId:Ljava/lang/String;

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->assetKey:Ljava/lang/String;

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->contentSourceId:Ljava/lang/String;

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->videoId:Ljava/lang/String;

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 287
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 294
    iget v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->format:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 295
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->adsId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 297
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->assetKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->videoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    :cond_5
    :goto_1
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 300
    const-string v2, "ssai"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 301
    const-string v2, "dai.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 302
    const-string v2, "adsId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 303
    iget v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->loadVideoTimeoutMs:I

    const/16 v2, 0x2710

    if-eq v0, v2, :cond_6

    .line 304
    const-string v2, "loadVideoTimeoutMs"

    .line 305
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 307
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->assetKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 308
    const-string v2, "assetKey"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    :cond_7
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 311
    const-string v2, "apiKey"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->contentSourceId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 314
    const-string v2, "contentSourceId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    :cond_9
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 317
    const-string v2, "videoId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 319
    :cond_a
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->networkCode:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 320
    const-string v2, "networkCode"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 322
    :cond_b
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->manifestSuffix:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 323
    const-string v2, "manifestSuffix"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    :cond_c
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->contentUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 326
    const-string v2, "contentUrl"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 328
    :cond_d
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 329
    const-string v2, "authToken"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 331
    :cond_e
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->streamActivityMonitorId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 332
    const-string v2, "streamActivityMonitorId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 334
    :cond_f
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->adTagParameters:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 335
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 336
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->adTagParameters:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 337
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 340
    :cond_10
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v2, "adTagParameters"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 342
    :cond_11
    iget v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->format:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 343
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->customUiOptions:Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;

    if-eqz v0, :cond_12

    .line 347
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;->getSkippableSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string v3, "customUiOptionsSkippableSupport"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 350
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;->getAboutThisAdSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v2, "customUiOptionsAboutThisAdSupport"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 352
    :cond_12
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setAdTagParameters(Ljava/util/Map;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->adTagParameters:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method public setAdsId(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 99
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->adsId:Ljava/lang/String;

    return-object p0
.end method

.method public setApiKey(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 188
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAssetKey(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 111
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->assetKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthToken(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 125
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public setContentSourceId(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 137
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->contentSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 262
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomUiOptions(Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->customUiOptions:Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;

    return-object p0
.end method

.method public setFormat(I)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 173
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 174
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->format:I

    return-object p0
.end method

.method public setLoadVideoTimeoutMs(I)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 276
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->loadVideoTimeoutMs:I

    return-object p0
.end method

.method public setManifestSuffix(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 248
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->manifestSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setNetworkCode(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->networkCode:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamActivityMonitorId(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 203
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->streamActivityMonitorId:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;
    .locals 0

    .line 149
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionUriBuilder;->videoId:Ljava/lang/String;

    return-object p0
.end method
