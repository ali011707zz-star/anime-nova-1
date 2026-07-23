.class public final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method synthetic constructor <init>(FFJFJJF[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzip;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzj:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    return-void
.end method

.method private final zzf()V
    .locals 7

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    return-void
.end method

.method private static zzg(JJF)J
    .locals 0

    .line 0
    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77    # 0.999f

    mul-float/2addr p0, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->zza:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    const p1, 0x3f7851ec    # 0.97f

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzj:F

    const p1, 0x3f83d70a    # 1.03f

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zzf()V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zzf()V

    return-void
.end method

.method public final zzc()V
    .locals 7

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    return-void
.end method

.method public final zzd(JJ)F
    .locals 11

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    sub-long p3, p1, p3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    goto :goto_0

    :cond_0
    const v0, 0x3f7fbe77    # 0.999f

    .line 8
    invoke-static {v4, v5, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzip;->zzg(JJF)J

    move-result-wide v4

    .line 1
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    sub-long/2addr p3, v4

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    invoke-static {v4, v5, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzip;->zzg(JJF)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    .line 3
    :goto_0
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    cmp-long p3, p3, v2

    const-wide/16 v4, 0x3e8

    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    sub-long/2addr p3, v6

    cmp-long p3, p3, v4

    if-ltz p3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    return p1

    .line 4
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    add-long/2addr p3, v6

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    cmp-long v0, v6, p3

    const v6, 0x33d6bf95    # 1.0E-7f

    const/high16 v7, -0x40800000    # -1.0f

    if-lez v0, :cond_5

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    add-float/2addr v0, v7

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    add-float/2addr v4, v7

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    long-to-float v2, v2

    mul-float/2addr v4, v2

    mul-float/2addr v0, v2

    float-to-long v2, v0

    float-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v9, v2

    const/4 v0, 0x3

    new-array v2, v0, [J

    const/4 v3, 0x0

    aput-wide p3, v2, v3

    const/4 p3, 0x1

    aput-wide v7, v2, p3

    const/4 p4, 0x2

    aput-wide v9, v2, p4

    aget-wide v3, v2, v3

    :goto_2
    if-ge p3, v0, :cond_4

    aget-wide v7, v2, p3

    cmp-long p4, v7, v3

    if-gtz p4, :cond_3

    goto :goto_3

    :cond_3
    move-wide v3, v7

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    goto :goto_4

    .line 10
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    add-float/2addr v0, v7

    const/4 v4, 0x0

    .line 6
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    float-to-long v4, v0

    sub-long v4, p1, v4

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 8
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-static {v7, v8, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    cmp-long v0, p3, v4

    if-lez v0, :cond_6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    move-wide v3, v4

    goto :goto_4

    :cond_6
    move-wide v3, p3

    :goto_4
    sub-long/2addr p1, v3

    .line 5
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zza:J

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p3, v2, p3

    if-gez p3, :cond_7

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    return v1

    :cond_7
    long-to-float p1, p1

    mul-float/2addr p1, v6

    add-float/2addr p1, v1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzj:F

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    .line 10
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    return p1

    :cond_8
    return v1
.end method

.method public final zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    return-wide v0
.end method
