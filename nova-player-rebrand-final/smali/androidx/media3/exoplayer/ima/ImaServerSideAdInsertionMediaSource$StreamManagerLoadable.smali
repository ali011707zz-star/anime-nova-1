.class Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;
.super Ljava/lang/Object;
.source "ImaServerSideAdInsertionMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamManagerLoadable"
.end annotation


# instance fields
.field private final adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

.field private final adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private volatile cancelled:Z

.field private final conditionVariable:Landroidx/media3/common/util/ConditionVariable;

.field private volatile contentUri:Landroid/net/Uri;

.field private volatile error:Z

.field private volatile errorCode:I

.field private volatile errorMessage:Ljava/lang/String;

.field private final imaServerSideAdInsertionMediaSource:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

.field private final request:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field private final streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;


# direct methods
.method public static synthetic $r8$lambda$vVVGAhoDkwVsL2Nmjnu2ja3lLlw(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1152
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->contentUri:Landroid/net/Uri;

    .line 1153
    iget-object p0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 0

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 1130
    iput-object p2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->imaServerSideAdInsertionMediaSource:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    .line 1131
    iput-object p3, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->request:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 1132
    iput-object p4, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    .line 1133
    iput-object p5, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    .line 1134
    new-instance p1, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {p1}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    const/4 p1, -0x1

    .line 1135
    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->errorCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$1;)V
    .locals 0

    .line 1106
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsLoader;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 1182
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->cancelled:Z

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 1141
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public load()V
    .locals 3

    .line 1150
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->streamPlayer:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;

    new-instance v1, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;)V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer;->setStreamLoadListener(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamPlayer$StreamLoadListener;)V

    .line 1155
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1158
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 1159
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1160
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->request:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;

    .line 1161
    :catch_0
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->cancelled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->error:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1163
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1168
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->error:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 1169
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1172
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 1173
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1174
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v0, :cond_4

    .line 1175
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    :cond_4
    return-void

    .line 1172
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 1173
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1174
    iget-object v1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v1, :cond_5

    .line 1175
    iget-object v2, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1177
    :cond_5
    throw v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3

    const/4 v0, 0x1

    .line 1205
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->error:Z

    .line 1206
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1207
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    const/16 v2, 0x20

    .line 1209
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->errorMessage:Ljava/lang/String;

    .line 1211
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCodeNumber()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->errorCode:I

    .line 1213
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void
.end method

.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 1

    .line 1190
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getStreamManager()Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1192
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->error:Z

    .line 1193
    const-string p1, "streamManager is null after ads manager has been loaded"

    iput-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->errorMessage:Ljava/lang/String;

    .line 1194
    iget-object p1, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource$StreamManagerLoadable;->imaServerSideAdInsertionMediaSource:Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;->access$900(Landroidx/media3/exoplayer/ima/ImaServerSideAdInsertionMediaSource;Lcom/google/ads/interactivemedia/v3/api/StreamManager;)V

    return-void
.end method
