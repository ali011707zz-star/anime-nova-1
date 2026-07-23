.class final Lcom/google/ads/interactivemedia/v3/impl/zzaa;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

.field private final zzb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzb:Landroid/webkit/WebView;

    return-void
.end method

.method private final zzb(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzo()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method private final zzc(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzk()Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzay()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafw;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzam(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzl(Lcom/google/ads/interactivemedia/v3/internal/zzafv;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbh;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbh;->zzl()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p2

    .line 5
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem;

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzz;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzz;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzaa;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs()Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object p1

    .line 9
    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 4
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v3, 0xb

    const-string v4, "Request not found for session id: "

    if-eq v1, v3, :cond_3

    const/16 v3, 0x22

    if-eq v1, v3, :cond_2

    const/16 v3, 0x52

    if-eq v1, v3, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v12, v14, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->streamId:Ljava/lang/String;

    iget-object v1, v14, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->monitorAppLifecycle:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzr()Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp()Ljava/util/Map;

    move-result-object v5

    .line 11
    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 12
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    if-nez v16, :cond_1

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    move-result-object v1

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 13
    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v7, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v5, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    move-object v3, v14

    goto/16 :goto_0

    .line 24
    :cond_1
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v4

    .line 14
    invoke-interface/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/zzcu;->zzd(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v4

    const/4 v5, 0x1

    .line 15
    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/zzcu;->zze(Z)V

    move-object v5, v3

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzm()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v3

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzb:Landroid/webkit/WebView;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/impl/zzap;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/impl/zzdl;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/zzeu;

    .line 16
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {v10, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzeu;-><init>(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    move-object v11, v8

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v8

    iget-object v4, v15, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 17
    invoke-interface/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getManifestSuffix()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-direct {v7, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    move-object v13, v10

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs()Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object v10

    move-object v4, v7

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzl()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v17, v2

    .line 18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzdo;

    move-object/from16 v2, v17

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v6, Lcom/google/ads/interactivemedia/v3/impl/zzh;

    move-object/from16 p1, v1

    .line 20
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v6, v2, v3, v1, v10}, Lcom/google/ads/interactivemedia/v3/impl/zzh;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzub;)V

    move-object v1, v9

    move-object/from16 v17, v14

    move-object v9, v4

    move-object v14, v11

    move-object v4, v13

    move/from16 v13, v18

    move-object v11, v7

    move-object v7, v6

    move-object/from16 v6, p1

    .line 19
    invoke-direct/range {v1 .. v13}, Lcom/google/ads/interactivemedia/v3/impl/zzdl;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzdo;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzub;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    invoke-interface/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v14, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzap;-><init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v15, v14}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    .line 23
    move-object/from16 v1, v16

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/zzbh;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzc(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    move-object/from16 v3, v17

    .line 24
    :goto_0
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->streamId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stream initialized with streamId: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v3, v14

    .line 5
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->errorCode:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    .line 6
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 7
    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->errorMessage:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->innerError:Ljava/lang/String;

    .line 8
    invoke-static {v7, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzj;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v1, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    .line 9
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V

    return-void

    :cond_3
    move-object v3, v14

    if-nez v3, :cond_4

    .line 23
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 26
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "adsLoaded message did not contain cue points."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 27
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V

    return-void

    :cond_4
    iget-object v6, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adCuePoints:Ljava/util/List;

    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->internalCuePoints:Ljava/util/SortedSet;

    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->monitorAppLifecycle:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzr()Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    move-result-object v3

    .line 28
    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzo()Ljava/util/Map;

    move-result-object v5

    .line 29
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    move-result-object v1

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 30
    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v7, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v5, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 31
    :cond_5
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    new-instance v8, Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    const-wide/16 v9, 0xc8

    .line 32
    invoke-direct {v8, v4, v9, v10}, Lcom/google/ads/interactivemedia/v3/impl/zzbn;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    goto :goto_1

    :cond_6
    move-object v8, v5

    :goto_1
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v4

    .line 33
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/google/ads/interactivemedia/v3/impl/zzcu;->zzd(Ljava/lang/String;)V

    if-eqz v7, :cond_7

    .line 34
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v8, :cond_7

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 35
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v9, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v10, "Unable to handle cue points, no content progress provider configured."

    invoke-direct {v5, v4, v9, v10}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    .line 36
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    :cond_8
    move-object/from16 v17, v2

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzm()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v2

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzb:Landroid/webkit/WebView;

    move-object v5, v3

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzeu;

    .line 37
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-direct {v3, v4, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzeu;-><init>(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    move-object v4, v5

    move-object v5, v8

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    move-result-object v8

    iget-object v9, v13, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-direct {v10, v9}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    move-object v9, v10

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs()Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object v10

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzl()Landroid/content/Context;

    move-result-object v11

    .line 38
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v1, v17

    .line 39
    invoke-static/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zza(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzbn;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzub;Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/impl/zzao;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzap;

    .line 40
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzap;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v13, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    .line 42
    check-cast v14, Lcom/google/ads/interactivemedia/v3/impl/zzbh;

    invoke-direct {v0, v1, v14}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;->zzc(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    return-void
.end method
