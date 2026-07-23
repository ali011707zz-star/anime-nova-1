.class public final Lcom/google/android/gms/internal/ads/zzcvu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdct;
.implements Lcom/google/android/gms/internal/ads/zzbde;
.implements Lcom/google/android/gms/internal/ads/zzdgh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdbx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzddc;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzddy;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzdbx;Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzddy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzc:Lcom/google/android/gms/internal/ads/zzddc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzf:Lcom/google/android/gms/internal/ads/zzddy;

    return-void
.end method

.method private final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzdG()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvu;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzdH()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdj(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvu;->zzd()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzf:Lcom/google/android/gms/internal/ads/zzddy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddy;->zza()V

    .line 3
    :cond_1
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzc:Lcom/google/android/gms/internal/ads/zzddc;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddc;->zza()V

    :cond_2
    return-void
.end method

.method public final declared-synchronized zzg()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvu;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
