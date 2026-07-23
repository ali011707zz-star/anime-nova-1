.class public abstract synthetic Lcom/google/android/gms/internal/ads/zzml$-CC;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static $default$zzT(Lcom/google/android/gms/internal/ads/zzml;JJ)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzml;->zze()I

    move-result p1

    const/4 p2, 0x1

    const-wide/16 p3, 0x2710

    if-ne p1, p2, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzml;->zzY()Z

    move-result p1

    const-wide/32 v0, 0xf4240

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzml;->zzZ()Z

    move-result p0

    if-nez p0, :cond_0

    return-wide p3

    :cond_0
    return-wide v0

    :cond_1
    return-wide p3
.end method

.method public static $default$zzU(Lcom/google/android/gms/internal/ads/zzml;J)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$zzW(Lcom/google/android/gms/internal/ads/zzml;)V
    .locals 0

    .line 0
    return-void
.end method
