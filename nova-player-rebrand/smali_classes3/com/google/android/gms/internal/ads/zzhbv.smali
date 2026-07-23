.class public abstract Lcom/google/android/gms/internal/ads/zzhbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzhbp;)[B
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzk(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p0

    return-object p0
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzd([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzb(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhlc;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzi(Lcom/google/android/gms/internal/ads/zzhlg;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhjp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhjp;-><init>(Lcom/google/android/gms/internal/ads/zzhlc;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzj(Lcom/google/android/gms/internal/ads/zzhlg;)Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failed to parse proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
