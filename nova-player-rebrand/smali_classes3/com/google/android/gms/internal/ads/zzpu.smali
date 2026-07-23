.class final Lcom/google/android/gms/internal/ads/zzpu;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzpx;

.field private final zzb:Landroid/content/ContentResolver;

.field private final zzc:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzg()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzj()Lcom/google/android/gms/internal/ads/zzd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzh()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzps;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zzf(Lcom/google/android/gms/internal/ads/zzps;)V

    return-void
.end method

.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
