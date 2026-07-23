.class final Lcom/google/android/gms/internal/ads/zzfss;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsu;

.field final synthetic zzb:Ljava/util/Timer;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsv;Lcom/google/android/gms/internal/ads/zzfsu;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfsu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzb:Ljava/util/Timer;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzc:Lcom/google/android/gms/internal/ads/zzfsv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzc:Lcom/google/android/gms/internal/ads/zzfsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsv;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfsu;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsu;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzb:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
