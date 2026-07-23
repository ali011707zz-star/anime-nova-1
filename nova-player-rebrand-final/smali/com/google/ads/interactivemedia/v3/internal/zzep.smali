.class public final Lcom/google/ads/interactivemedia/v3/internal/zzep;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzub;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzdw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/internal/zzet;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zza:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/zzdw;

    invoke-direct {p5, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzdw;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzdw;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzd:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method static zzb(Ljava/util/Map;)Z
    .locals 1

    .line 1
    const-string v0, "ltd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzd(Lcom/google/ads/interactivemedia/v3/internal/zzej;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zzb()Ljava/util/concurrent/Future;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTIFIER_INFO_FACTORY:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->SAFE_BLOCKING_GET_IDLESS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private final zze(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzem;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 11

    .line 1
    const-string v0, ""

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzen;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzej;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzen;->zzb()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zza:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "adid"
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v1

    move-object v4, v2

    :goto_0
    move-object v5, v3

    goto :goto_2

    :catch_0
    move v1, p2

    move-object v2, v0

    .line 10
    :catch_1
    :try_start_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zza:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "advertising_id"

    .line 6
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "limit_ad_tracking"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    :try_start_3
    const-string v3, "afai"
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move v6, v1

    goto :goto_0

    :catch_2
    move-object v2, v4

    .line 16
    :catch_3
    const-string v3, "Failed to get advertising ID."

    .line 7
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    move-object v5, v0

    move v6, v1

    move-object v4, v2

    .line 4
    :goto_2
    iget-object v1, p4, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    move v8, p2

    move-object v7, v0

    goto :goto_7

    :cond_3
    :goto_3
    :try_start_4
    iget-object v1, p4, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    const-wide/16 v7, 0x96

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-gtz v2, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 9
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zza:Landroid/content/Context;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-static {v1, v7, v8, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 15
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v1
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move v8, v1

    :goto_5
    move-object v7, v2

    goto :goto_7

    :catch_4
    move-object v2, v0

    .line 17
    :catch_5
    const-string v1, "Unable to contact the App Set SDK."

    .line 16
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    :goto_6
    move v8, p2

    goto :goto_5

    :catch_6
    move-object v2, v0

    .line 6
    :catch_7
    const-string v1, "Timeout getting AppSet ID."

    .line 17
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    goto :goto_6

    .line 15
    :goto_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 18
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v2

    .line 19
    invoke-interface {p1, p4, v1, v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzen;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzem;Landroid/content/Context;ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p4, Lcom/google/ads/interactivemedia/v3/internal/zzem;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzd:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 21
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getFeatureFlags()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_6

    :try_start_6
    const-string v0, "IDENTITY_TOKEN_CUSTOM_TIMEOUT_AND_MEASUREMENT"

    .line 22
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 23
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    if-lez p2, :cond_6

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    :cond_6
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzdw;

    if-eqz v2, :cond_7

    .line 25
    sget-object p4, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    goto :goto_8

    :cond_7
    const/4 p4, 0x0

    .line 26
    :goto_8
    invoke-virtual {p2, p4, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdw;->zza(Lcom/google/ads/interactivemedia/v3/impl/zzbr;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v9, v0

    .line 27
    invoke-static/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    :goto_9
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzel;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzep;Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzem;

    invoke-direct {v0, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzem;-><init>(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzep;->zze(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzej;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzem;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    return-object p1
.end method
