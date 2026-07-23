.class final synthetic Lcom/google/android/gms/internal/ads/zzrs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzru;

.field private final synthetic zzb:Landroid/media/AudioDeviceInfo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzru;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzb:Landroid/media/AudioDeviceInfo;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzb:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzru;->zzc(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
