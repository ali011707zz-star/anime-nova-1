.class final Lcom/google/android/gms/internal/ads/zzacy;
.super Lcom/google/android/gms/internal/ads/zzacv;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/view/Choreographer$VsyncCallback;


# instance fields
.field private final zzf:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacv;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzf:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacv;->zza:Landroid/view/Choreographer;

    invoke-static {p1, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    :cond_0
    return-void
.end method

.method public final onVsync(Landroid/view/Choreographer$FrameData;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzc:J

    .line 2
    invoke-static {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/Choreographer$FrameData;)[Landroid/view/Choreographer$FrameTimeline;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4
    aget-object v0, p1, v0

    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v0

    const/4 v4, 0x0

    aget-object p1, p1, v4

    .line 6
    invoke-static {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzd:J

    goto :goto_1

    .line 7
    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzd:J

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzf:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Lcom/google/android/gms/internal/ads/zzacy;)V

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final zza()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzacv;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zza:Landroid/view/Choreographer;

    .line 2
    invoke-static {v0, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    return-void
.end method

.method final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzb:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzf:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zza:Landroid/view/Choreographer;

    .line 3
    invoke-static {v0, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzd:J

    return-void
.end method
