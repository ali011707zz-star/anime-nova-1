.class public final Lcom/google/ads/interactivemedia/v3/impl/zzan;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader;


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

.field private final zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/Map;

.field private final zzh:Ljava/util/Map;

.field private zzi:Lcom/google/ads/interactivemedia/v3/impl/zzcu;

.field private final zzj:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

.field private final zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfg;

.field private final zzm:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

.field private final zzn:Lcom/google/ads/interactivemedia/v3/internal/zzga;

.field private final zzo:Lcom/google/ads/interactivemedia/v3/internal/zzfx;

.field private final zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

.field private final zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final zzr:Lcom/google/ads/interactivemedia/v3/internal/zzep;

.field private zzs:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

.field private zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfa;Ljava/util/concurrent/ExecutorService;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzh:Ljava/util/Map;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    if-nez p3, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 4
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzj:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 5
    invoke-static {p6}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object v3

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    .line 6
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 7
    invoke-direct {v4, p1, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzet;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/internal/zzfa;)V

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    new-instance p5, Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    .line 8
    invoke-direct {p5, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzep;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    move-object v2, p2

    move-object v5, p3

    .line 9
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzep;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/internal/zzet;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzep;

    .line 10
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->claim()V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzfg;

    .line 11
    invoke-direct {p2, v2, v3, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzfg;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzet;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfg;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    .line 12
    invoke-direct {p2, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    .line 13
    invoke-static {v2, v3, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzet;)Lcom/google/ads/interactivemedia/v3/internal/zzga;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzga;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zzfx;

    .line 14
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    move-result-object p5

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzfx;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/internal/zzga;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzdx;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzfx;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzv;

    .line 15
    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzv;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;)V

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzci;)V

    return-void
.end method

.method public static zza(Lcom/google/ads/interactivemedia/v3/internal/zzev;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfa;)Lcom/google/ads/interactivemedia/v3/impl/zzan;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzc()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zze()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/zzan;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfa;Ljava/util/concurrent/ExecutorService;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzc()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzaj;

    invoke-direct {p2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzaj;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zze()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 5
    invoke-interface {p1, p2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static zze(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "Error during initialization"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzj(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    new-instance v2, Ljava/lang/Exception;

    .line 2
    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 3
    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method static zzf(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/ads/interactivemedia/v3/impl/zzan;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 6
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->enableInstrumentation:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzi(Z)V

    .line 8
    :cond_0
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->espAdapterTimeoutMs:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->espAdapters:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    .line 9
    invoke-virtual {v6, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zza(Ljava/util/List;Ljava/lang/Integer;)Lcom/google/android/gms/tasks/Task;

    .line 10
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzb()Lcom/google/android/gms/tasks/Task;

    :cond_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfg;

    .line 11
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->platformSignalCollectorTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzfg;->zza(Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    .line 12
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;)Lcom/google/ads/interactivemedia/v3/internal/zzef;

    move-result-object v10

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    invoke-direct/range {v6 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzef;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    iput-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    .line 13
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zza()V

    .line 14
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    .line 15
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzb()Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 16
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v5

    .line 17
    check-cast v4, Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 18
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb()Ljava/util/Set;

    move-result-object v6

    .line 19
    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->enableOmidJsManagedSessions:Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    .line 20
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 22
    invoke-static {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzck;->zzc(Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;Landroid/view/View;Ljava/util/Set;)Lcom/google/ads/interactivemedia/v3/impl/zzck;

    move-result-object v3

    goto :goto_0

    .line 21
    :cond_2
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->webView:Landroid/webkit/WebView;

    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    invoke-static {v7, v3, v8, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzcl;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;Landroid/view/View;Ljava/util/Set;)Lcom/google/ads/interactivemedia/v3/impl/zzcl;

    move-result-object v3

    .line 23
    :goto_0
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzaz;)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v3

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    move-result-object v0

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzafw;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    .line 26
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->webView:Landroid/webkit/WebView;

    invoke-direct {v1, p0, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Landroid/webkit/WebView;)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/impl/zzav;

    .line 27
    invoke-direct {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzav;-><init>(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Lcom/google/ads/interactivemedia/v3/impl/zzaa;)V

    .line 26
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 21
    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zzb(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 4
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "core component initialization failed"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method private final zzv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzw()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "3.38.0"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "android%s:%s:%s"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzx()Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    :goto_0
    move-object v0, v2

    goto :goto_2

    .line 7
    :cond_0
    const-string v1, "connectivity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :goto_1
    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    :goto_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzj:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getFeatureFlags()Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v4, "NATIVE_UI"

    .line 7
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    return-object v2

    :cond_4
    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;->create(Ljava/lang/Integer;Z)Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

    move-result-object v0

    return-object v0
.end method

.method private final zzy()Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 2
    const-string v3, "market://details?id=com.google.ads.interactivemedia.v3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 6
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;->create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final zzz(Lcom/google/ads/interactivemedia/v3/internal/zzfe;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzb()Lcom/google/ads/interactivemedia/omid/library/adsession/zzj;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zza(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public final addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->destroy()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzi()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzg:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzc()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzh:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzf()V

    return-void
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public final removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
    .locals 5

    .line 1
    const-string v0, "AdsRequest cannot be null"

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Either ad tag url or ads response must non-null and non empty"

    .line 4
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    const-string v1, "AdsLoader must be constructed with AdDisplayContainer"

    .line 5
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzv()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    invoke-interface {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzb(J)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzw;

    .line 11
    invoke-direct {v4, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzw;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    invoke-static {v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zztp;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object p1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzafw;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-void
.end method

.method public final requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "StreamRequest cannot be null"

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    const-string v1, "AdsLoader must be constructed with StreamDisplayContainer"

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    const-string p1, ""

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzv()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    invoke-interface {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzb(J)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzx;

    .line 8
    invoke-direct {v4, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzx;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    invoke-static {v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zztp;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object p1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzafw;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-object v0
.end method

.method protected final zzb(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzep;

    .line 3
    invoke-virtual {v1, p1, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zza(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzab;

    invoke-direct {p3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzab;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    .line 4
    invoke-interface {v7, p3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzac;

    invoke-direct {p3, p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzac;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;)V

    .line 5
    invoke-interface {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v8

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzad;

    invoke-direct {p2, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzad;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V

    .line 6
    invoke-interface {v8, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    .line 7
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzam;

    invoke-direct {p3, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzam;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    invoke-interface {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzae;

    invoke-direct {p2, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzae;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V

    .line 8
    invoke-interface {v3, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfg;

    .line 9
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfg;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v9

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzaf;

    invoke-direct {p2, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzaf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V

    .line 10
    invoke-interface {v9, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p3, 0x0

    aput-object v7, p2, p3

    const/4 p3, 0x1

    aput-object v8, p2, p3

    const/4 p3, 0x2

    aput-object v3, p2, p3

    const/4 p3, 0x3

    aput-object v9, p2, p3

    .line 11
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzh([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/ads/interactivemedia/v3/internal/zztr;

    move-result-object p2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzafx;JLcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 12
    invoke-virtual {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zztr;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzak;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzg:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb()Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {v2, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->gestureSignal:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzfx;

    .line 3
    invoke-virtual {v2, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    .line 4
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza()Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    move-result-object v8

    iget-object p4, v8, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 5
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzah;

    move-object v4, p0

    move-object v7, p1

    move-object v9, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/zzah;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V

    iget-object p1, v4, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    .line 6
    invoke-interface {v5, v3, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final zzd(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzak;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzh:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb()Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-virtual {v2, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->gestureSignal:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzfx;

    .line 3
    invoke-virtual {v2, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    .line 4
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza()Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    move-result-object v8

    iget-object p4, v8, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 5
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzai;

    move-object v4, p0

    move-object v7, p1

    move-object v9, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/zzai;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V

    iget-object p1, v4, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    .line 6
    invoke-interface {v5, v3, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method

.method final synthetic zzh(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzga;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->msParameterTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzb(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v5, p5

    .line 1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzj(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/zzal;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzb()Ljava/lang/String;

    move-result-object v17

    .line 7
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v9

    .line 8
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzc()Ljava/util/Map;

    move-result-object v8

    .line 10
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzd()Ljava/lang/Object;

    move-result-object v2

    .line 11
    move-object v10, v2

    check-cast v10, Ljava/util/Map;

    .line 12
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzx()Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

    move-result-object v12

    iget-object v13, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzj:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 13
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzy()Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

    move-result-object v14

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 14
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v15

    .line 15
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v16

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzd()Ljava/lang/Object;

    move-result-object v4

    .line 16
    move-object/from16 v18, v4

    check-cast v18, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    .line 17
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzz(Lcom/google/ads/interactivemedia/v3/internal/zzfe;)Z

    move-result v20

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const-string v11, "android:0"

    move-object/from16 v19, p2

    move-object/from16 v6, p3

    move/from16 v21, v4

    .line 19
    invoke-static/range {v6 .. v21}, Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;->create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;Lcom/google/ads/interactivemedia/v3/impl/zzbt;Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;ZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;ZF)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 20
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->isLimitedAdTracking()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    :cond_0
    move/from16 v21, v7

    new-instance v18, Lcom/google/ads/interactivemedia/v3/impl/zzct;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 21
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->enableGks:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v20

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-object/from16 v22, v0

    move-object/from16 v19, v2

    move-object/from16 v23, v3

    .line 22
    invoke-direct/range {v18 .. v23}, Lcom/google/ads/interactivemedia/v3/impl/zzct;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzpl;ZLcom/google/ads/interactivemedia/v3/impl/zzbz;Ljava/util/concurrent/ExecutorService;)V

    move-object/from16 v0, v18

    move-object/from16 v8, v22

    .line 23
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->nativeXhr:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {v8, v5, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-object v6, v4

    .line 24
    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->requestAds:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 26
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafw;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    .line 27
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    :cond_1
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 29
    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzm(Lcom/google/ads/interactivemedia/v3/internal/zzafv;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-void

    :catch_0
    move-exception v0

    .line 31
    const-string v2, "The SDK failed to gather the necessary information for the request"

    .line 2
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 3
    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v7, "The SDK failed to gather the necessary information for the request."

    invoke-direct {v4, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 4
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->COLLECT_SIGNALS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v5, p5

    .line 1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzj(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/zzal;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzb()Ljava/lang/String;

    move-result-object v17

    .line 7
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v9

    .line 8
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzal;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzc()Ljava/util/Map;

    move-result-object v8

    .line 10
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzd()Ljava/lang/Object;

    move-result-object v2

    .line 11
    move-object v10, v2

    check-cast v10, Ljava/util/Map;

    .line 12
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzx()Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

    move-result-object v12

    iget-object v13, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzj:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 13
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzy()Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

    move-result-object v14

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 14
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v15

    .line 15
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v16

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzd()Ljava/lang/Object;

    move-result-object v4

    .line 16
    move-object/from16 v18, v4

    check-cast v18, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    .line 17
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzz(Lcom/google/ads/interactivemedia/v3/internal/zzfe;)Z

    move-result v20

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const-string v11, "android:0"

    move-object/from16 v19, p2

    move-object/from16 v6, p3

    move/from16 v21, v4

    .line 19
    invoke-static/range {v6 .. v21}, Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;->createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;Lcom/google/ads/interactivemedia/v3/impl/zzbt;Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;ZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;ZF)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 20
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->isLimitedAdTracking()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    :cond_0
    move/from16 v21, v7

    new-instance v18, Lcom/google/ads/interactivemedia/v3/impl/zzct;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 21
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->enableGks:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v20

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-object/from16 v22, v0

    move-object/from16 v19, v2

    move-object/from16 v23, v3

    .line 22
    invoke-direct/range {v18 .. v23}, Lcom/google/ads/interactivemedia/v3/impl/zzct;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzpl;ZLcom/google/ads/interactivemedia/v3/impl/zzbz;Ljava/util/concurrent/ExecutorService;)V

    move-object/from16 v0, v18

    move-object/from16 v8, v22

    .line 23
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->nativeXhr:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {v8, v5, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-object v6, v4

    .line 24
    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->requestStream:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 26
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafw;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    .line 27
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    :cond_1
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 29
    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zzm(Lcom/google/ads/interactivemedia/v3/internal/zzafv;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-void

    :catch_0
    move-exception v0

    .line 31
    const-string v2, "The SDK failed to gather the necessary information for the request"

    .line 2
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 3
    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v7, "The SDK failed to gather the necessary information for the request."

    invoke-direct {v4, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 4
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->COLLECT_SIGNALS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzk(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic zzl()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzm()Lcom/google/ads/interactivemedia/v3/impl/zzbv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    return-object v0
.end method

.method final synthetic zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    return-object v0
.end method

.method final synthetic zzo()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzg:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zzp()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzh:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zzq()Lcom/google/ads/interactivemedia/v3/impl/zzcu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzcu;

    return-object v0
.end method

.method final synthetic zzr()Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    return-object v0
.end method

.method final synthetic zzs()Lcom/google/ads/interactivemedia/v3/internal/zzub;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    return-object v0
.end method

.method final synthetic zzt()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method final synthetic zzu(Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method
