.class public abstract Lcom/google/android/gms/internal/ads/zzbhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static varargs zza(Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;[Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbht;->zzb(Lcom/google/android/gms/internal/ads/zzbhq;J[Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method
