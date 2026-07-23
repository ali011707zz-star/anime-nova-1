.class final Lcom/google/android/gms/internal/ads/zzeqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzese;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzequ;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzequ;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zza:Lcom/google/android/gms/internal/ads/zzequ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zza:Lcom/google/android/gms/internal/ads/zzequ;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzequ;->zzN(Lcom/google/android/gms/internal/ads/zzctx;)V

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zza:Lcom/google/android/gms/internal/ads/zzequ;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzctx;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzM()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzM()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzM()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide v2

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzczz;->zzb(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzM()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzequ;->zzN(Lcom/google/android/gms/internal/ads/zzctx;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzM()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzj()V

    .line 10
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
