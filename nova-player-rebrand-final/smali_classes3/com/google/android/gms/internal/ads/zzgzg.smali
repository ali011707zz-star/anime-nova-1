.class public abstract Lcom/google/android/gms/internal/ads/zzgzg;
.super Lcom/google/android/gms/internal/ads/zzgzp;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzp;-><init>()V

    return-void
.end method

.method public static zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgzg;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method
