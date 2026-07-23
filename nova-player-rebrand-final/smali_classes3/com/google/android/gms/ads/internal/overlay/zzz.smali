.class public final Lcom/google/android/gms/ads/internal/overlay/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzcjl;

.field private zzd:Lcom/google/android/gms/internal/ads/zzgow;

.field private zze:Z

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    return-void
.end method

.method private final zzl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzf:Lcom/google/android/gms/internal/ads/zzgpt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzf:Lcom/google/android/gms/internal/ads/zzgpt;

    :cond_0
    return-void
.end method

.method private final zzm()Lcom/google/android/gms/internal/ads/zzgpv;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpv;->zzc()Lcom/google/android/gms/internal/ads/zzgpu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgpu;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgpu;

    goto :goto_0

    :cond_1
    const-string v1, "Missing session token and/or appId"

    const-string v2, "onLMDupdate"

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpu;->zzc()Lcom/google/android/gms/internal/ads/zzgpv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzcjl;Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Unable to bind"

    const-string p2, "on_play_store_bind"

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "action"

    const-string v0, "fetch_completed"

    .line 4
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "on_play_store_bind"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzi(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->zza(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgox;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgow;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    const-string v0, "Error connecting LMD Overlay service"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string v0, "LastMileDeliveryOverlay.bindLastMileDeliveryService"

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzl()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzgpq;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    const-string p1, "adWebview missing"

    const-string p2, "onLMDShow"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z

    if-nez v0, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    const-string p1, "LMDOverlay not bound"

    const-string p2, "on_play_store_bind"

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgpq;->zzb()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzl()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzf:Lcom/google/android/gms/internal/ads/zzgpt;

    .line 6
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgow;->zza(Lcom/google/android/gms/internal/ads/zzgpq;Lcom/google/android/gms/internal/ads/zzgpt;)V

    :cond_4
    return-void
.end method

.method public final zzd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzm()Lcom/google/android/gms/internal/ads/zzgpv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzf:Lcom/google/android/gms/internal/ads/zzgpt;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgow;->zzd(Lcom/google/android/gms/internal/ads/zzgpv;Lcom/google/android/gms/internal/ads/zzgpt;)V

    const-string v0, "onLMDOverlayExpand"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzh(Ljava/lang/String;)V

    return-void

    .line 1
    :cond_1
    :goto_0
    const-string v0, "LastMileDelivery not connected"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzm()Lcom/google/android/gms/internal/ads/zzgpv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzf:Lcom/google/android/gms/internal/ads/zzgpt;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgow;->zzc(Lcom/google/android/gms/internal/ads/zzgpv;Lcom/google/android/gms/internal/ads/zzgpt;)V

    const-string v0, "onLMDOverlayCollapse"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzh(Ljava/lang/String;)V

    return-void

    .line 1
    :cond_1
    :goto_0
    const-string v0, "LastMileDelivery not connected"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgov;->zzc()Lcom/google/android/gms/internal/ads/zzgou;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzmV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgou;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgou;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgou;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgou;

    goto :goto_0

    :cond_2
    const-string v2, "Missing session token and/or appId"

    const-string v3, "onLMDupdate"

    .line 5
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgou;->zzc()Lcom/google/android/gms/internal/ads/zzgov;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzf:Lcom/google/android/gms/internal/ads/zzgpt;

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgow;->zzb(Lcom/google/android/gms/internal/ads/zzgov;Lcom/google/android/gms/internal/ads/zzgpt;)V

    return-void

    .line 1
    :cond_3
    :goto_1
    const-string v0, "LastMileDelivery not connected"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method final zzg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "message"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "action"

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onError"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzi(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method final zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzi(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final zzi(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzf:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzz;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzj(Lcom/google/android/gms/internal/ads/zzgps;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgps;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgps;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgps;->zza()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgps;->zza()I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onLMDOverlayFailedToOpen"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzi(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :pswitch_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zze:Z

    return-void

    :pswitch_3
    const-string p1, "onLMDOverlayClose"

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzh(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "onLMDOverlayClicked"

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzh(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "onLMDOverlayOpened"

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzh(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1fd8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final synthetic zzk(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
