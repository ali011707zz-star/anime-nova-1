.class public abstract Lcom/google/android/gms/internal/ads/zzgox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgow;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpo;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    .line 3
    :cond_0
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgpo;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgoy;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;)V

    return-object v0
.end method
