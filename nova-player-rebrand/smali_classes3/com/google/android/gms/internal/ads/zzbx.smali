.class final Lcom/google/android/gms/internal/ads/zzbx;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbz;Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzby;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbx;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbx;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbw;-><init>(Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
