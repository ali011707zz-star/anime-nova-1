.class public final Lcom/google/android/gms/internal/ads/zzbsf;
.super Lcom/google/android/gms/internal/ads/zzceu;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbsk;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsf;->zzb:Lcom/google/android/gms/internal/ads/zzbsk;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    const-string v0, "release: Trying to acquire lock"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->zza:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v1, "release: Lock acquired"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbsf;->zzc:Z

    if-eqz v1, :cond_0

    const-string v1, "release: Lock already released"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbsf;->zzc:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsc;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbsc;-><init>(Lcom/google/android/gms/internal/ads/zzbsf;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzceq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzceq;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzceu;->zze(Lcom/google/android/gms/internal/ads/zzcer;Lcom/google/android/gms/internal/ads/zzcep;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsd;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbsd;-><init>(Lcom/google/android/gms/internal/ads/zzbsf;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbse;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbse;-><init>(Lcom/google/android/gms/internal/ads/zzbsf;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzceu;->zze(Lcom/google/android/gms/internal/ads/zzcer;Lcom/google/android/gms/internal/ads/zzcep;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "release: Lock released"

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    .line 8
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzbsk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->zzb:Lcom/google/android/gms/internal/ads/zzbsk;

    return-object v0
.end method
