.class public final Lcom/google/android/gms/internal/ads/zzpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzpw;

.field private final zzc:Landroid/os/Handler;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzpt;

.field private final zze:Landroid/content/BroadcastReceiver;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzpu;

.field private zzg:Lcom/google/android/gms/internal/ads/zzps;

.field private zzh:Landroid/media/AudioDeviceInfo;

.field private zzi:Lcom/google/android/gms/internal/ads/zzd;

.field private zzj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpw;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:Lcom/google/android/gms/internal/ads/zzpw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzi:Lcom/google/android/gms/internal/ads/zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfj;->zze()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    .line 4
    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Landroid/os/Handler;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzpt;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Lcom/google/android/gms/internal/ads/zzpx;[B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzd:Lcom/google/android/gms/internal/ads/zzpt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpv;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zzpx;[B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zze:Landroid/content/BroadcastReceiver;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzps;->zzc()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/ads/zzpu;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzpu;-><init>(Lcom/google/android/gms/internal/ads/zzpx;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzf:Lcom/google/android/gms/internal/ads/zzpu;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzps;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzps;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:Lcom/google/android/gms/internal/ads/zzpw;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpw;->zza(Lcom/google/android/gms/internal/ads/zzps;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzps;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzk(Lcom/google/android/gms/internal/ads/zzps;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzi:Lcom/google/android/gms/internal/ads/zzd;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzi:Lcom/google/android/gms/internal/ads/zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    .line 2
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzps;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzk(Lcom/google/android/gms/internal/ads/zzps;)V

    return-void
.end method

.method public final zzc(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzi:Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzps;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzk(Lcom/google/android/gms/internal/ads/zzps;)V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzps;
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzf:Lcom/google/android/gms/internal/ads/zzpu;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zza()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzd:Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Landroid/os/Handler;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zza(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zze:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    .line 6
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzi:Lcom/google/android/gms/internal/ads/zzd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzps;->zzb(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    return-object v0
.end method

.method public final zze()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzj:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzg:Lcom/google/android/gms/internal/ads/zzps;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzd:Lcom/google/android/gms/internal/ads/zzpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zza(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zze:Landroid/content/BroadcastReceiver;

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzf:Lcom/google/android/gms/internal/ads/zzpu;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzb()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzj:Z

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzps;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzk(Lcom/google/android/gms/internal/ads/zzps;)V

    return-void
.end method

.method final synthetic zzg()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzh()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method final synthetic zzi(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzh:Landroid/media/AudioDeviceInfo;

    return-void
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzi:Lcom/google/android/gms/internal/ads/zzd;

    return-object v0
.end method
