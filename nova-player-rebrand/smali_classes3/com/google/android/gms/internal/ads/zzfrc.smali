.class public final Lcom/google/android/gms/internal/ads/zzfrc;
.super Lcom/google/android/gms/internal/ads/zzfsa;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/ads/zzfsa;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzfqr;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p12}, Lcom/google/android/gms/internal/ads/zzfsa;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzfqr;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzd:Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkg;->zzd()Lcom/google/android/gms/internal/ads/zzbtt;

    move-result-object v5

    const-string v0, "Failed to create an interstitial ad manager."

    const/4 v7, 0x1

    if-nez v5, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfqs;

    .line 2
    invoke-direct {p1, v7, v0}, Lcom/google/android/gms/internal/ads/zzfqs;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzc:I

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/ClientApi;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;I)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfqs;

    .line 5
    invoke-direct {p1, v7, v0}, Lcom/google/android/gms/internal/ads/zzfqs;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhah;->zze()Lcom/google/android/gms/internal/ads/zzhah;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzx(Lcom/google/android/gms/ads/internal/client/zzm;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfrb;

    .line 9
    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfrb;-><init>(Lcom/google/android/gms/internal/ads/zzfrc;Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/ads/internal/client/zzbx;)V

    .line 8
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzQ(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string v0, "Failed to load interstitial ad."

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfqs;

    const-string v0, "remote exception"

    .line 11
    invoke-direct {p1, v7, v0}, Lcom/google/android/gms/internal/ads/zzfqs;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected final zzb()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzQ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final bridge synthetic zzc(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzt()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Failed to get response info for  the interstitial ad."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
