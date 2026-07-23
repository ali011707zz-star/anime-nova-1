.class final synthetic Lcom/google/android/gms/internal/ads/zzrq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/media/AudioTrack;

.field private final synthetic zzb:Landroid/os/Handler;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzed;


# direct methods
.method synthetic constructor <init>(Landroid/media/AudioTrack;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrq;->zza:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzb:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzc:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrq;->zza:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzb:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzc:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsd;->zzp(Landroid/media/AudioTrack;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzed;)V

    return-void
.end method
