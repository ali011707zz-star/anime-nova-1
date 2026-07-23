.class final Lcom/google/android/gms/internal/ads/zzfih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzese;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfii;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfih;->zza:Lcom/google/android/gms/internal/ads/zzfii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfih;->zza:Lcom/google/android/gms/internal/ads/zzfii;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfii;->zzw(Lcom/google/android/gms/internal/ads/zzdtz;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfih;->zza:Lcom/google/android/gms/internal/ads/zzfii;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtz;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfii;->zzw(Lcom/google/android/gms/internal/ads/zzdtz;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzet:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtz;->zzh()Lcom/google/android/gms/internal/ads/zzfje;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfii;->zzu()Lcom/google/android/gms/internal/ads/zzfjd;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzfje;->zza:Lcom/google/android/gms/internal/ads/zzfjd;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfii;->zzv()Lcom/google/android/gms/internal/ads/zzdtz;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzj()V

    .line 7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
