.class final Lcom/google/android/gms/internal/ads/zzcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzb:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    new-instance p2, Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcg;->zza:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcf;-><init>(Lcom/google/android/gms/internal/ads/zzcg;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcg;->zza:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzd(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zza(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzb:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method
