.class final synthetic Lcom/google/android/gms/internal/ads/zzpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzpm;

.field private final synthetic zzb:Landroid/media/metrics/PlaybackMetrics;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpm;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Landroid/media/metrics/PlaybackMetrics;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzpm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Landroid/media/metrics/PlaybackMetrics;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpm;->zzv(Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method
