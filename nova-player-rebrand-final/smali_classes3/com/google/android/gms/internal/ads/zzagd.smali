.class public final Lcom/google/android/gms/internal/ads/zzagd;
.super Lcom/google/android/gms/internal/ads/zzafi;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaev;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafi;-><init>(Lcom/google/android/gms/internal/ads/zzaev;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzagd;->zza:J

    return-void
.end method


# virtual methods
.method public final zzm()J
    .locals 4

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzafi;->zzm()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagd;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzn()J
    .locals 4

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzafi;->zzn()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagd;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzo()J
    .locals 4

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzafi;->zzo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagd;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
