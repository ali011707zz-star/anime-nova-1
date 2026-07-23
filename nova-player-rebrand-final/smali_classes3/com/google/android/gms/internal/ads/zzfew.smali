.class final Lcom/google/android/gms/internal/ads/zzfew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzese;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfez;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfew;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfew;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzctr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfew;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzctr;->zza(Lcom/google/android/gms/internal/ads/zzber;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzN()Lcom/google/android/gms/internal/ads/zzfer;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcts;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzN()Lcom/google/android/gms/internal/ads/zzfer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzO()Lcom/google/android/gms/internal/ads/zzdxz;

    move-result-object v4

    .line 4
    invoke-direct {v2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcts;-><init>(Lcom/google/android/gms/internal/ads/zzctr;Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/internal/ads/zzfer;Lcom/google/android/gms/internal/ads/zzdxz;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfer;->zzs(Lcom/google/android/gms/internal/ads/zzbex;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzj()V

    .line 6
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
