.class public final Lcom/google/android/gms/internal/ads/zzbxc;
.super Lcom/google/android/gms/ads/nativead/NativeAd;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbmm;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbxb;

.field private final zzd:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmm;)V
    .locals 5

    .line 1
    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzb:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zze:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzf:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzf()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbkr;->zzh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbks;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzb:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbxb;

    .line 8
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>(Lcom/google/android/gms/internal/ads/zzbks;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :goto_2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzz()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4

    .line 13
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzdi;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdj;

    move-result-object v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_4
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zze:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzdk;

    .line 14
    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzdk;-><init>(Lcom/google/android/gms/ads/internal/client/zzdj;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 15
    :goto_5
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzh()Lcom/google/android/gms/internal/ads/zzbks;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbxb;

    .line 17
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>(Lcom/google/android/gms/internal/ads/zzbks;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    goto :goto_7

    :cond_6
    :goto_6
    move-object v2, v1

    goto :goto_8

    .line 18
    :goto_7
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 17
    :goto_8
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzc:Lcom/google/android/gms/internal/ads/zzbxb;

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzq()Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbwz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbmm;->zzq()Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzbwz;-><init>(Lcom/google/android/gms/internal/ads/zzbkl;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, p1

    goto :goto_9

    :catch_3
    move-exception p1

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_7
    :goto_9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzd:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

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

.method public final getHeadline()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

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

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzH()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zzb(Lcom/google/android/gms/ads/internal/client/zzea;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final recordEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzJ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to record native event"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zza:Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmm;->zzu()Lcom/google/android/gms/dynamic/IObjectWrapper;

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
