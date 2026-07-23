.class final Lcom/google/android/gms/internal/ads/zzfng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfnl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfnl;Lcom/google/android/gms/internal/ads/zzfnb;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzb:Lcom/google/android/gms/internal/ads/zzfnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzb:Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnm;->zzg()Lcom/google/android/gms/internal/ads/zzfnn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfnn;->zzc(Lcom/google/android/gms/internal/ads/zzfnb;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzb:Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnm;->zzg()Lcom/google/android/gms/internal/ads/zzfnn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfnn;->zzd(Lcom/google/android/gms/internal/ads/zzfnb;)V

    return-void
.end method
