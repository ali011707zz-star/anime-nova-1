.class final Lcom/google/android/gms/internal/ads/zzfrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsa;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrv;->zza:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrv;->zza:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzI()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzI()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzJ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzK()Lcom/google/android/gms/internal/ads/zzfrm;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 2
    iget v6, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzH()Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfrf;->zzj(JLcom/google/android/gms/internal/ads/zzfrm;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
