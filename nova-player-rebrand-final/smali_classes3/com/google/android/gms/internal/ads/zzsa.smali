.class final Lcom/google/android/gms/internal/ads/zzsa;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsc;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsd;->zzs()Lcom/google/android/gms/internal/ads/zzed;

    move-result-object p1

    const/4 p2, -0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzrz;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd(ILcom/google/android/gms/internal/ads/zzdy;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()V

    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsc;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsd;->zzs()Lcom/google/android/gms/internal/ads/zzed;

    move-result-object p1

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzrx;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd(ILcom/google/android/gms/internal/ads/zzdy;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()V

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsc;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsd;->zzs()Lcom/google/android/gms/internal/ads/zzed;

    move-result-object p1

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzry;->zza:Lcom/google/android/gms/internal/ads/zzry;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd(ILcom/google/android/gms/internal/ads/zzdy;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()V

    return-void
.end method
