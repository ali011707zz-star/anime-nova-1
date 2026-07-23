.class public final Lcom/google/android/gms/internal/ads/zzbms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/zze;

.field private final zzb:Lcom/google/android/gms/ads/formats/zzd;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbln;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/zze;Lcom/google/android/gms/ads/formats/zzd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbms;->zza:Lcom/google/android/gms/ads/formats/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzb:Lcom/google/android/gms/ads/formats/zzd;

    return-void
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzblm;)Lcom/google/android/gms/internal/ads/zzbln;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzc:Lcom/google/android/gms/internal/ads/zzbln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbln;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbln;-><init>(Lcom/google/android/gms/internal/ads/zzblm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzc:Lcom/google/android/gms/internal/ads/zzbln;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzblz;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbmr;-><init>(Lcom/google/android/gms/internal/ads/zzbms;[B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzblw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzb:Lcom/google/android/gms/ads/formats/zzd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbmq;-><init>(Lcom/google/android/gms/internal/ads/zzbms;[B)V

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/ads/formats/zze;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbms;->zza:Lcom/google/android/gms/ads/formats/zze;

    return-object v0
.end method

.method final synthetic zzd()Lcom/google/android/gms/ads/formats/zzd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzb:Lcom/google/android/gms/ads/formats/zzd;

    return-object v0
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzblm;)Lcom/google/android/gms/internal/ads/zzbln;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbms;->zzf(Lcom/google/android/gms/internal/ads/zzblm;)Lcom/google/android/gms/internal/ads/zzbln;

    move-result-object p1

    return-object p1
.end method
