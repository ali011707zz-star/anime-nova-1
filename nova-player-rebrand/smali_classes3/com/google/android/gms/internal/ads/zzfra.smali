.class public final Lcom/google/android/gms/internal/ads/zzfra;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private final zzf:Lcom/google/android/gms/common/util/Clock;

.field private zzg:J

.field private final zzh:Ljava/util/Random;


# direct methods
.method public constructor <init>(JDJDLcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x5

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzd:J

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfra;->zze:J

    new-instance p7, Ljava/util/Random;

    invoke-direct {p7}, Ljava/util/Random;-><init>()V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzh:Ljava/util/Random;

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfra;->zza:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzb:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfra;->zza()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzg:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zze:J

    return-void
.end method

.method public final zzb()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzg:J

    long-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v0

    add-double v4, v0, v2

    double-to-long v4, v4

    sub-double/2addr v0, v2

    double-to-long v0, v0

    sub-long/2addr v4, v0

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzh:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzf:Lcom/google/android/gms/common/util/Clock;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfra;->zzb()J

    move-result-wide v1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfra;->zze:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzg:J

    long-to-double v0, v0

    add-double/2addr v0, v0

    double-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzb:J

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzg:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:J

    return-void
.end method

.method public final zzd()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzf:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfra;->zze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzJ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzd:J

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzg:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzb:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public final declared-synchronized zzf(I)V
    .locals 2

    monitor-enter p0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfra;->zzd:J
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
