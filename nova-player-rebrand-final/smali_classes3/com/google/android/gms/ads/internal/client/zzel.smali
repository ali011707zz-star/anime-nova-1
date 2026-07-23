.class final Lcom/google/android/gms/ads/internal/client/zzel;
.super Lcom/google/android/gms/ads/internal/client/zzbc;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzen;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zza:Lcom/google/android/gms/ads/internal/client/zzen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbc;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zza:Lcom/google/android/gms/ads/internal/client/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzen;->zzE()Lcom/google/android/gms/ads/VideoController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzen;->zzz()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzed;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbc;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zza:Lcom/google/android/gms/ads/internal/client/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzen;->zzE()Lcom/google/android/gms/ads/VideoController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzen;->zzz()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzed;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/client/zzbc;->onAdLoaded()V

    return-void
.end method
