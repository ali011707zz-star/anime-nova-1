.class public final Lcom/google/android/gms/internal/ads/zzazg;
.super Lcom/google/android/gms/internal/ads/zzazf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaze;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzazf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaze;)V

    return-void
.end method

.method public static zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;)Lcom/google/android/gms/internal/ads/zzazg;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaze;-><init>(Lcom/google/android/gms/internal/ads/zzavi;)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzazf;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaze;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzazg;

    .line 3
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzazg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaze;)V

    return-object p1
.end method
