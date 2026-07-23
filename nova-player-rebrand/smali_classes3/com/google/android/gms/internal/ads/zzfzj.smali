.class public abstract Lcom/google/android/gms/internal/ads/zzfzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static final zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzfzh;
    .locals 1

    .line 0
    const-string v0, "executorService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfzi;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
