.class final Lcom/google/ads/interactivemedia/v3/internal/zzmv;
.super Lcom/google/ads/interactivemedia/v3/internal/zzmg;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzmy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmv;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzmg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzmp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmv;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmp;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzms;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzms;-><init>(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmv;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
