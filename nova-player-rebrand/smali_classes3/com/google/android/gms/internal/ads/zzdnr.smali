.class final Lcom/google/android/gms/internal/ads/zzdnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbde;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdoc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdj(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcp:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzab()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zza:Ljava/lang/String;

    .line 3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqe;->zzj()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdqe;->zzk()Ljava/util/Map;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzb:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzab()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zza:Ljava/lang/String;

    .line 10
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaa()Lcom/google/android/gms/internal/ads/zzdqe;

    move-result-object v3

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqe;->zzj()Ljava/util/Map;

    move-result-object v2

    .line 13
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdqe;->zzk()Ljava/util/Map;

    move-result-object v3

    .line 14
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_4
    :goto_1
    return-void
.end method
