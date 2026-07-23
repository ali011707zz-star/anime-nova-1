.class final Lcom/google/android/gms/internal/ads/zzgzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Ljava/util/concurrent/Future;

.field final zzb:Lcom/google/android/gms/internal/ads/zzgzl;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzgzl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zza:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhaq;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhaq;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhar;->zza(Lcom/google/android/gms/internal/ads/zzhaq;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzl;->zza(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    .line 4
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;->zza(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzm;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
