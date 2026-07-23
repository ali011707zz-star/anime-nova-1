.class public final Lcom/google/android/gms/internal/ads/zzbmn;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbmm;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbkt;

.field private final zzd:Lcom/google/android/gms/ads/VideoController;

.field private final zze:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmm;)V
    .locals 5

    .line 1
    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzb:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzd:Lcom/google/android/gms/ads/VideoController;

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zze:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzf()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_2

    :cond_1
    move-object v3, v1

    goto :goto_1

    .line 9
    :cond_2
    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 7
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzbks;

    if-eqz v4, :cond_3

    .line 8
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbks;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbkq;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzb:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbkt;

    .line 9
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzbkt;-><init>(Lcom/google/android/gms/internal/ads/zzbks;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :goto_2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzz()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_6

    .line 14
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzdi;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdj;

    move-result-object v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_6
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zze:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzdk;

    .line 15
    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzdk;-><init>(Lcom/google/android/gms/ads/internal/client/zzdj;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 16
    :goto_5
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_7
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzh()Lcom/google/android/gms/internal/ads/zzbks;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbkt;

    .line 18
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbkt;-><init>(Lcom/google/android/gms/internal/ads/zzbks;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_8
    :goto_6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzc:Lcom/google/android/gms/internal/ads/zzbkt;

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzq()Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbkm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 21
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzq()Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzbkm;-><init>(Lcom/google/android/gms/internal/ads/zzbkl;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    goto :goto_8

    :cond_9
    :goto_7
    return-void

    .line 22
    :goto_8
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zze()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzc:Lcom/google/android/gms/internal/ads/zzbkt;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzi()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzj()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg()Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzk()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzn()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzd:Lcom/google/android/gms/ads/VideoController;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzn()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzed;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzd:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final zzk()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
