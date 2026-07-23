.class public final Lcom/google/android/gms/internal/ads/zzecc;
.super Lcom/google/android/gms/ads/internal/client/zzdv;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Ljava/util/Map;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/ref/WeakReference;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzebq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgzy;

.field private zzf:Lcom/google/android/gms/internal/ads/zzebf;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lcom/google/android/gms/internal/ads/zzebq;Lcom/google/android/gms/internal/ads/zzece;Lcom/google/android/gms/internal/ads/zzgzy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdv;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    .line 2
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzecc;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzc:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzd:Lcom/google/android/gms/internal/ads/zzebq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzecc;->zze:Lcom/google/android/gms/internal/ads/zzgzy;

    return-void
.end method

.method static synthetic zzh(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzj(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzf:Lcom/google/android/gms/internal/ads/zzebf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebf;->zzn(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebx;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzebx;-><init>(Lcom/google/android/gms/internal/ads/zzecc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zze:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsOutOfContext"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzd:Lcom/google/android/gms/internal/ads/zzebq;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzebq;->zzn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzk(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzf:Lcom/google/android/gms/internal/ads/zzebf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebf;->zzn(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeby;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeby;-><init>(Lcom/google/android/gms/internal/ads/zzecc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zze:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsShown"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzd:Lcom/google/android/gms/internal/ads/zzebq;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzebq;->zzn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final zzl()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzb:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method private static zzm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/ads/LoadAdError;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/ads/LoadAdError;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/LoadAdError;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    if-eqz v0, :cond_4

    .line 5
    check-cast p0, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_5

    .line 6
    check-cast p0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_7

    .line 7
    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_6

    goto :goto_1

    .line 1
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->zzd()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 8
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzj()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1
    :catch_0
    :cond_7
    :goto_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzebf;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzf:Lcom/google/android/gms/internal/ads/zzebf;

    return-void
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzecd;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 4
    :sswitch_0
    const-string v1, "BANNER"

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "REWARDED_INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "APP_OPEN_AD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    .line 18
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zza()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzc()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebv;

    .line 30
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzebv;-><init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;)V

    .line 31
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zza()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzc()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebu;

    .line 27
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzebu;-><init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;)V

    .line 28
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zza()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeca;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzeca;-><init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzebw;-><init>(Lcom/google/android/gms/internal/ads/zzecc;)V

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zze()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v0

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzkQ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 25
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzc()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zza()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzc()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebt;

    .line 17
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzebt;-><init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;)V

    .line 18
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zza()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkQ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzg()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 15
    :cond_7
    new-instance v2, Lcom/google/android/gms/ads/AdView;

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 8
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzd()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzebs;

    .line 11
    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzebs;-><init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;Lcom/google/android/gms/ads/BaseAdView;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzf()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzg()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 14
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzc()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 18
    :cond_9
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecd;->zzc()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebr;

    .line 3
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzebr;-><init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;)V

    .line 4
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_5
        -0x51d5b0d4 -> :sswitch_4
        -0x1987ba06 -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzd:Lcom/google/android/gms/internal/ads/zzebq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebq;->zzo()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzkP:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v2, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    if-eqz v4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzecc;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzecc;->zzk(Ljava/lang/String;)V

    instance-of v1, v2, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v1, :cond_3

    .line 7
    check-cast v2, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    instance-of v1, v2, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v1, :cond_4

    .line 8
    check-cast v2, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    instance-of v1, v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v1, :cond_5

    .line 9
    check-cast v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzecb;->zza:Lcom/google/android/gms/internal/ads/zzecb;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    instance-of v1, v2, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    if-eqz v1, :cond_6

    .line 10
    check-cast v2, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzebz;->zza:Lcom/google/android/gms/internal/ads/zzebz;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, v2, Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_7

    instance-of v0, v2, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzecc;->zzl()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.OutOfContextTestingActivity"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "adUnit"

    .line 16
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzaa(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final zze(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of p1, v1, Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_2

    .line 5
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzece;->zza(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    return-void

    :cond_2
    instance-of p1, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz p1, :cond_3

    .line 6
    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzece;->zzb(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final declared-synchronized zzf(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zza:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzecc;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzecc;->zzj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzg(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzecc;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzebq;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzd:Lcom/google/android/gms/internal/ads/zzebq;

    return-object v0
.end method
