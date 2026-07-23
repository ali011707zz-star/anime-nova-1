.class public Lcom/google/android/gms/ads/nativead/MediaView;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/ads/zzbke;

.field private zzd:Landroid/widget/ImageView$ScaleType;

.field private zze:Z

.field private zzf:Lcom/google/android/gms/internal/ads/zzbkg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzd:Landroid/widget/ImageView$ScaleType;

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzf:Lcom/google/android/gms/internal/ads/zzbkg;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkg;->zza(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzc:Lcom/google/android/gms/internal/ads/zzbke;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbke;->zza(Lcom/google/android/gms/ads/MediaContent;)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/MediaContent;->zzb()Lcom/google/android/gms/internal/ads/zzblm;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/MediaContent;->hasVideoContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblm;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/ads/MediaContent;->zza()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblm;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_4

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    .line 7
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v0, ""

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbke;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzc:Lcom/google/android/gms/internal/ads/zzbke;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbke;->zza(Lcom/google/android/gms/ads/MediaContent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzbkg;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzf:Lcom/google/android/gms/internal/ads/zzbkg;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->zzd:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbkg;->zza(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
