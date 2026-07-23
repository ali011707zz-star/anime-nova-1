.class public abstract Lcom/google/android/gms/internal/ads/zzatd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasm;)Lcom/google/android/gms/internal/ads/zzasb;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasz;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzasz;-><init>(Lcom/google/android/gms/internal/ads/zzasy;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Lcom/google/android/gms/internal/ads/zzasm;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasn;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Lcom/google/android/gms/internal/ads/zzasm;)V

    move-object p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatc;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzatc;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzasb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasu;

    const/high16 v2, 0x500000

    .line 5
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Lcom/google/android/gms/internal/ads/zzast;I)V

    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzasb;-><init>(Lcom/google/android/gms/internal/ads/zzari;Lcom/google/android/gms/internal/ads/zzarr;I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasb;->zza()V

    return-object p0
.end method
