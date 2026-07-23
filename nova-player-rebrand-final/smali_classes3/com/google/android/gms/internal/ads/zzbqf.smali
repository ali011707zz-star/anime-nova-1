.class public final Lcom/google/android/gms/internal/ads/zzbqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarr;


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/ads/zzbps;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzary;)Lcom/google/android/gms/internal/ads/zzaru;
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbpt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzm()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    new-array v1, v1, [Ljava/lang/String;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, "ms"

    const-string v4, "Http assets remote cache took "

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v2, v6

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpt;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzh()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbpt;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const/4 p1, 0x0

    .line 11
    :try_start_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcen;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    .line 12
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbqd;

    invoke-direct {v7, p0, v6}, Lcom/google/android/gms/internal/ads/zzbqd;-><init>(Lcom/google/android/gms/internal/ads/zzbqf;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 13
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbqe;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzbqe;-><init>(Lcom/google/android/gms/internal/ads/zzbqf;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 14
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbps;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzb:Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzbps;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zza:Lcom/google/android/gms/internal/ads/zzbps;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zza:Lcom/google/android/gms/internal/ads/zzbps;

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbqb;

    .line 17
    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/internal/ads/zzbqb;-><init>(Lcom/google/android/gms/internal/ads/zzbqf;Lcom/google/android/gms/internal/ads/zzbpt;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 18
    invoke-static {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 19
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbhe;->zzfr:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v7

    .line 21
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbqc;

    .line 23
    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzbqc;-><init>(Lcom/google/android/gms/internal/ads/zzbqf;)V

    invoke-interface {v6, v7, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 24
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 26
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbpv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbpv;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zza:Z

    if-nez v1, :cond_4

    .line 30
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zze:[Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zzf:[Ljava/lang/String;

    .line 31
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_2

    return-object p1

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    .line 32
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 33
    :goto_1
    array-length p1, v1

    if-ge v5, p1, :cond_3

    .line 34
    aget-object p1, v1, v5

    aget-object v3, v2, v5

    invoke-virtual {v9, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zzc:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zzd:[B

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zzg:Z

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zzh:J

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaru;

    .line 35
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v6

    .line 29
    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbpv;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzash;

    .line 30
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzash;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 26
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 25
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 26
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object p1
.end method

.method final synthetic zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zza:Lcom/google/android/gms/internal/ads/zzbps;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zza:Lcom/google/android/gms/internal/ads/zzbps;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzbps;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zza:Lcom/google/android/gms/internal/ads/zzbps;

    return-object v0
.end method
