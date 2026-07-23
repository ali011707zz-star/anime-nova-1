.class final Lcom/google/android/gms/internal/ads/zzsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/lang/Exception;

.field private zzb:J

.field private zzc:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/Exception;

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/Exception;

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzb:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsw;->zzG()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzb:J

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzb:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/Exception;

    if-eq v0, p1, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/Exception;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsv;->zzc()V

    .line 5
    throw p1

    :cond_3
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzc:J

    return-void
.end method

.method public final zzb()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsw;->zzG()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzc:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final zzc()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/Exception;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzc:J

    return-void
.end method
