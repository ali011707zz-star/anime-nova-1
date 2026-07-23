.class abstract Lcom/google/ads/interactivemedia/v3/impl/zzbg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseManager;
.implements Lcom/google/ads/interactivemedia/v3/internal/zzdz;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/List;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/impl/zzh;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/impl/zzcu;

.field private final zzh:Lcom/google/ads/interactivemedia/v3/impl/zzdp;

.field private final zzi:Lcom/google/ads/interactivemedia/v3/impl/zzbl;

.field private final zzj:Lcom/google/ads/interactivemedia/v3/impl/zzda;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/impl/zzas;

.field private zzl:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

.field private zzm:Lcom/google/ads/interactivemedia/v3/api/zza;

.field private zzn:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

.field private zzo:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

.field private zzp:Z

.field private final zzq:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

.field private zzr:Lcom/google/ads/interactivemedia/v3/internal/zzea;

.field private zzs:Lcom/google/ads/interactivemedia/v3/internal/zzge;

.field private zzt:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzge;Lcom/google/ads/interactivemedia/v3/impl/zzdp;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Z)V
    .locals 12

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v8, p8

    move-object/from16 v4, p10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc:Ljava/util/List;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzp:Z

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzt:Z

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzge;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zze:Landroid/content/Context;

    iput-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    invoke-direct {v9, v4, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    iput-object v9, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    .line 2
    move-object/from16 v7, p5

    check-cast v7, Lcom/google/ads/interactivemedia/v3/impl/zzba;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzbl;

    move-object v6, p1

    move-object v10, p2

    move-object/from16 v5, p9

    .line 3
    invoke-direct/range {v3 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/zzbl;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzgd;Lcom/google/ads/interactivemedia/v3/impl/zzbz;)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzbl;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzda;

    .line 4
    invoke-direct/range {v3 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/zzda;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzgd;Lcom/google/ads/interactivemedia/v3/impl/zzbz;)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzj:Lcom/google/ads/interactivemedia/v3/impl/zzda;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzas;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    const v3, 0xf4240

    .line 5
    invoke-static {v3}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 6
    invoke-static/range {p10 .. p10}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object v5

    :cond_0
    move-object/from16 v3, p9

    invoke-direct {p3, v5, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzas;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzk:Lcom/google/ads/interactivemedia/v3/impl/zzas;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    move/from16 p3, p11

    .line 7
    invoke-virtual {v1, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zza(Z)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzg:Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcu;->zzf(Ljava/lang/String;)V

    .line 9
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zza(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 11
    :cond_1
    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzbd;

    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbd;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;)V

    invoke-virtual {p2, p1, p3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->nativeUi:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzbf;

    .line 12
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbf;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;)V

    invoke-virtual {p2, p1, p3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->videoDisplay1:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 13
    invoke-virtual {p2, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->videoDisplay2:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 14
    invoke-virtual {p2, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->displayContainer:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;

    .line 15
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbe;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;)V

    invoke-virtual {p2, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 16
    invoke-virtual {p2, p1, p3, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzbb;

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbb;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;Lcom/google/ads/interactivemedia/v3/impl/zzbv;)V

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzci;)V

    .line 18
    invoke-static/range {p10 .. p10}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zzc(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 19
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzea;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzea;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzea;

    .line 20
    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzea;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzdz;)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzge;

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzc()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 3
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->userInteraction:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->focusUiElement:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    :cond_0
    return-void
.end method

.method private final zzw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getFocusSkipButtonWhenAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zza(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public final addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->destroy:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V

    return-void
.end method

.method public final focus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;

    move-result-object v4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 6
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->init:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    .line 7
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdp;->zza()V

    return-void
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public final removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;->builder(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl$AdsRenderingSettingsData;

    move-result-object p1

    const-string v1, "adsRenderingSettings"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    const/4 v3, 0x3

    const/4 v8, 0x0

    if-eq v0, v3, :cond_7

    const/16 v3, 0x12

    if-eq v0, v3, :cond_6

    const/16 v3, 0x19

    if-eq v0, v3, :cond_7

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0x15

    if-eq v0, v3, :cond_1

    const/16 v3, 0x16

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzf:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzn:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzk(Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzb()V

    goto :goto_0

    :cond_4
    :pswitch_1
    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzk(Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;)V

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_6
    const-string v0, "Received unexpected ICON_TAPPED event."

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    :pswitch_2
    iput-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzn:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 1
    :cond_8
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzl:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzc:Ljava/util/Map;

    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzf:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzg:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzd()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/google/ads/interactivemedia/v3/api/customui/CustomUi;

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/zzk;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;Lcom/google/ads/interactivemedia/v3/api/customui/CustomUi;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc:Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 13
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v2, p1, :cond_b

    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v2, p1, :cond_a

    goto :goto_2

    :cond_a
    return-void

    .line 14
    :cond_b
    :goto_2
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzk(Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzge;

    return-object v0
.end method

.method protected final zze()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzt:Z

    return v0
.end method

.method final zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzgd;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzk:Lcom/google/ads/interactivemedia/v3/impl/zzas;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzas;->zza(Landroid/net/Uri;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;->zza(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    sget-object p2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->navigationRequestedFailed:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 7
    const-string p3, "url"

    invoke-static {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    .line 8
    sget-object p3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final zzg(Lcom/google/ads/interactivemedia/v3/api/zza;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzm:Lcom/google/ads/interactivemedia/v3/api/zza;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzl:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->setAdUi(Lcom/google/ads/interactivemedia/v3/api/zza;)V

    :cond_0
    return-void
.end method

.method protected final zzh()Lcom/google/ads/interactivemedia/v3/impl/zzdp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    return-object v0
.end method

.method protected final zzi(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V
    .locals 6

    .line 1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method

.method protected final zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method

.method final zzk(Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzl:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzm:Lcom/google/ads/interactivemedia/v3/api/zza;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->setAdUi(Lcom/google/ads/interactivemedia/v3/api/zza;)V

    :cond_0
    return-void
.end method

.method public final zzl()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->appBackgrounding:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method

.method public final zzm()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->appForegrounding:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method

.method final synthetic zzn()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzp:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzg:Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcu;->zzg()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzea;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzea;->zzb()V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzc()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    .line 7
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdp;->zzb()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzge;

    .line 8
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzge;

    return-void
.end method

.method final synthetic zzo(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzn:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method final synthetic zzp()Lcom/google/ads/interactivemedia/v3/impl/zzbv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    return-object v0
.end method

.method final synthetic zzq()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzr()Lcom/google/ads/interactivemedia/v3/impl/zzdp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    return-object v0
.end method

.method final synthetic zzs()Lcom/google/ads/interactivemedia/v3/impl/zzbl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzbl;

    return-object v0
.end method

.method final synthetic zzt()Lcom/google/ads/interactivemedia/v3/impl/zzda;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzj:Lcom/google/ads/interactivemedia/v3/impl/zzda;

    return-object v0
.end method

.method final synthetic zzu()Lcom/google/ads/interactivemedia/v3/internal/zzgd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    return-object v0
.end method

.method final synthetic zzv(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzt:Z

    return-void
.end method
