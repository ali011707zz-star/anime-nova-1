.class public final Lcom/google/android/gms/internal/ads/zzfro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/common/util/Clock;

.field private final zzd:J

.field private final zze:D

.field private final zzf:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/common/util/Clock;DI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfro;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzb:J

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzW:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzd:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfro;->zze:D

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzd:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()J
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzd:J

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzb:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final zzd()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzb:J

    return-wide v0
.end method

.method public final zze()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->zze:D

    return-wide v0
.end method

.method public final zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->zzf:I

    return v0
.end method
