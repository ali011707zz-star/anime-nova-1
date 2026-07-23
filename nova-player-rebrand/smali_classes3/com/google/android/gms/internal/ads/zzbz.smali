.class public final Lcom/google/android/gms/internal/ads/zzbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzby;Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const/4 p1, 0x0

    .line 2
    invoke-interface {p5, p2, p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbx;

    .line 3
    invoke-interface {p5, p3, p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object p3

    invoke-direct {p2, p0, p3, p4, p1}, Lcom/google/android/gms/internal/ads/zzbx;-><init>(Lcom/google/android/gms/internal/ads/zzbz;Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzby;[B)V

    return-void
.end method
