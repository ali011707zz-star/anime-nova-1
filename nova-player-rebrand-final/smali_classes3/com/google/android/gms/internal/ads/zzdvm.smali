.class public final Lcom/google/android/gms/internal/ads/zzdvm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfki;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :catch_0
    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfki;->zzB()Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v2
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfki;->zzC()Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4
    :catch_1
    :goto_1
    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzkN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x1

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    if-nez p2, :cond_4

    :catch_2
    move v4, v3

    goto :goto_2

    .line 6
    :cond_4
    :try_start_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfki;->zzn()Z
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4
    :goto_2
    :try_start_6
    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdvl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwh;Lcom/google/android/gms/internal/ads/zzbwh;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvm;->zza:Ljava/util/Map;

    .line 7
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method final declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvs;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbvs;->zzf()Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbvs;->zzg()Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvl;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzdvl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwh;Lcom/google/android/gms/internal/ads/zzbwh;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvm;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvl;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvm;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdvl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvm;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvl;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdvl;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbwh;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1
    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method
