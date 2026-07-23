.class public final Lcom/google/ads/interactivemedia/v3/internal/zzoz;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzox;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzox;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzoy;

    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzox;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method
