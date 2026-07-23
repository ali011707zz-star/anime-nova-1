.class public final Lcom/google/ads/interactivemedia/v3/impl/zzao;
.super Lcom/google/ads/interactivemedia/v3/impl/zzbg;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManager;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# instance fields
.field private final zza:Ljava/util/List;

.field private zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbm;

.field private zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/impl/zzcn;Lcom/google/ads/interactivemedia/v3/impl/zzbn;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzub;Landroid/content/Context;Z)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v11, p13

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzge;Lcom/google/ads/interactivemedia/v3/impl/zzdp;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Z)V

    move-object/from16 p1, p5

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zza:Ljava/util/List;

    move-object/from16 p1, p7

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzbn;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzub;Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/impl/zzao;
    .locals 14

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzao;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/impl/zzcn;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v4, p8

    move-object v1, v6

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/zzcn;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V

    move-object v6, v1

    new-instance v8, Lcom/google/ads/interactivemedia/v3/impl/zzh;

    .line 2
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v3

    move-object/from16 v11, p9

    invoke-direct {v8, p0, p1, v3, v11}, Lcom/google/ads/interactivemedia/v3/impl/zzh;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzub;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/ads/interactivemedia/v3/impl/zzao;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/impl/zzcn;Lcom/google/ads/interactivemedia/v3/impl/zzbn;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzub;Landroid/content/Context;Z)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzbm;

    move-object/from16 v4, p6

    .line 3
    invoke-direct {v3, p1, v4, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbm;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Ljava/util/SortedSet;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbm;

    iget-object p0, v0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zzb(Lcom/google/ads/interactivemedia/v3/impl/zzdh;)V

    iget-object p0, v0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zzd()V

    .line 6
    :cond_0
    invoke-virtual {v0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->destroy:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    :cond_0
    return-void
.end method

.method public final discardAdBreak()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->discardAdBreak:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    return-void
.end method

.method public final getAdCuePoints()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zza:Ljava/util/List;

    return-object v0
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb()V

    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->pause:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->resume:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    return-void
.end method

.method public final skip()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->skip:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->start:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    return-void
.end method

.method final zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbn;->zza()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTimeMs()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2c

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AdsManager.init -> Setting contentStartTime "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    const-string v3, "contentStartTime"

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "contentStartTimeMs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method final zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zza()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb()V

    goto :goto_0

    .line 1
    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zzd()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zze()V

    .line 10
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 5
    :cond_5
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    .line 6
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->destroy:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zze()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzao;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    :cond_6
    return-void
.end method
