.class public final Lcom/google/android/gms/internal/ads/zzmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzmf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbf;

.field private zzd:I

.field private zze:Ljava/lang/Object;

.field private final zzf:Landroid/os/Looper;

.field private final zzg:I

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmf;Lcom/google/android/gms/internal/ads/zzmg;Lcom/google/android/gms/internal/ads/zzbf;ILcom/google/android/gms/internal/ads/zzdn;Landroid/os/Looper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzmf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzf:Landroid/os/Looper;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzmg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zza:Lcom/google/android/gms/internal/ads/zzmg;

    return-object v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzmh;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzd:I

    return-object p0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzd:I

    return v0
.end method

.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzmh;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmh;->zze:Ljava/lang/Object;

    return-object p0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zze:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzf()Landroid/os/Looper;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzf:Landroid/os/Looper;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzmh;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzmf;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzmf;->zzk(Lcom/google/android/gms/internal/ads/zzmh;)V

    return-object p0
.end method

.method public final declared-synchronized zzh()Z
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzi(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzi:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzi:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
