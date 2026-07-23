.class public abstract Lcom/google/android/gms/internal/ads/zzhxr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhnp;


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhnt;->zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhnu;->zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhxq;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzhxq;-><init>(Lcom/google/android/gms/internal/ads/zzhnp;Lcom/google/android/gms/internal/ads/zzhnp;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
