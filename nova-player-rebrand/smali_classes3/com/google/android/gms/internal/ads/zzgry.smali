.class public abstract Lcom/google/android/gms/internal/ads/zzgry;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgru;)Lcom/google/android/gms/internal/ads/zzgru;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgrx;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgrv;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrv;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgrv;-><init>(Lcom/google/android/gms/internal/ads/zzgru;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrx;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgrx;-><init>(Lcom/google/android/gms/internal/ads/zzgru;)V

    return-object v0

    :cond_2
    return-object p0
.end method
