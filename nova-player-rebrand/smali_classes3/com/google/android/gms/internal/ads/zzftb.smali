.class final Lcom/google/android/gms/internal/ads/zzftb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:F

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftc;F)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzftb;->zza:F

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftb;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftb;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzftc;->zza:Lcom/google/android/gms/internal/ads/zzftd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzg()Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzftb;->zza:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzftp;->zzf(F)V

    return-void
.end method
