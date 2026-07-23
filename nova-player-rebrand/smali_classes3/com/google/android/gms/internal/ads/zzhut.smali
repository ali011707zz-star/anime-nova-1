.class public abstract Lcom/google/android/gms/internal/ads/zzhut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhra;->zza:I

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhut;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhtq;->zzc()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhtu;->zzc()V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhso;->zza(Z)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhug;->zza(Z)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhus;->zza(Z)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhie;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhsw;->zza(Z)V

    return-void
.end method
