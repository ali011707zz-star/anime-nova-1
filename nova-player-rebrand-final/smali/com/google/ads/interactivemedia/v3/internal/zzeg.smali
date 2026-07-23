.class public final Lcom/google/ads/interactivemedia/v3/internal/zzeg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzej;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private zzd:Ljava/util/concurrent/Future;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzef;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

.field private zzg:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzef;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzc:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzef;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzd:Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzg:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private final zzf()Ljava/util/concurrent/Future;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzef;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzc()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zze(Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzc:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzee;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzee;

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzf()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzd:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzec;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzec;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzeg;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzg:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final zzb()Ljava/util/concurrent/Future;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzd:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTITY_MANAGER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->GET_IDLESS_STATE:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "idLessState must be defined"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zza()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzd:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzb:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzef;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzef;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, -0x74423897

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eq v5, v6, :cond_4

    const v6, -0x6bc5b3cf

    if-eq v5, v6, :cond_3

    const v6, 0x67140408

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    const-string v5, "Boolean"

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v10

    goto :goto_2

    :cond_3
    const-string v5, "String"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_2

    :cond_4
    const-string v5, "Number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v8

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v7

    :goto_2
    if-eqz v3, :cond_8

    if-eq v3, v8, :cond_7

    if-eq v3, v10, :cond_6

    goto :goto_0

    .line 8
    :cond_6
    :try_start_1
    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_3

    .line 9
    :cond_7
    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    const-string v3, ""

    .line 10
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7
    :goto_3
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 11
    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->IDENTITY_MANAGER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->GET_CONSENT_SETTINGS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :goto_4
    return-object v0
.end method

.method final synthetic zzd()Ljava/util/concurrent/Future;
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzf()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzd:Ljava/util/concurrent/Future;

    return-void
.end method
