.class public final Lcom/google/android/gms/ads/internal/client/zzfm;
.super Lcom/google/android/gms/ads/internal/client/zzda;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbqn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzda;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzbqn;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzb(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzfl;-><init>(Lcom/google/android/gms/ads/internal/client/zzfm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzf(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzh(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzj(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzk()F
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final zzl()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, ""

    return-object v0
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbtt;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbqn;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzbqn;

    return-void
.end method

.method public final zzq()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zzfv;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzs()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/ads/internal/client/zzdn;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzu(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzw()V
    .locals 0

    .line 0
    return-void
.end method
