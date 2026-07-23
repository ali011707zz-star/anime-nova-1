.class public final Lcom/google/android/gms/ads/internal/overlay/zzw;
.super Lcom/google/android/gms/ads/internal/overlay/zzm;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzm;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzn:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
