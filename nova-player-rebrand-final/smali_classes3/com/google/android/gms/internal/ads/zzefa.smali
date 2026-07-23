.class final Lcom/google/android/gms/internal/ads/zzefa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzefc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefa;->zza:Lcom/google/android/gms/internal/ads/zzefc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefa;->zza:Lcom/google/android/gms/internal/ads/zzefc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefc;->zzb()Lcom/google/android/gms/internal/ads/zzdej;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdej;->zzdP(Lcom/google/android/gms/internal/ads/zzfjc;)V

    return-void
.end method
