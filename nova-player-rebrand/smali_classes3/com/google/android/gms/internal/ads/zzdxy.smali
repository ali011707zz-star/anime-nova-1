.class public final Lcom/google/android/gms/internal/ads/zzdxy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxz;

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzdxy;
    .locals 1

    .line 1
    const-string v0, "gqi"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/android/gms/internal/ads/zzdxy;
    .locals 2

    .line 1
    const-string v0, "aai"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzw:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    const-string v0, "request_id"

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzan:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzb:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfir;->zza(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ad_format"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxx;-><init>(Lcom/google/android/gms/internal/ads/zzdxy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zzd()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze()Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpI:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzc()Lcom/google/android/gms/internal/ads/zzdye;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzf(Ljava/util/Map;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxy;->zzd()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzt;->zza:Lcom/google/android/gms/ads/internal/util/client/zzt;

    return-object v0
.end method

.method public final zzf()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxv;-><init>(Lcom/google/android/gms/internal/ads/zzdxy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zzd()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzc()Lcom/google/android/gms/internal/ads/zzdye;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxw;-><init>(Lcom/google/android/gms/internal/ads/zzdxy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zzd()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzc()Lcom/google/android/gms/internal/ads/zzdye;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzc()Lcom/google/android/gms/internal/ads/zzdye;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzg(Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzc()Lcom/google/android/gms/internal/ads/zzdye;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zze(Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzl()Lcom/google/android/gms/internal/ads/zzdxy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zze()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method
