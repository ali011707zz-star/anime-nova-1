.class public final Lcom/google/android/gms/internal/ads/zzcia;
.super Lcom/google/android/gms/internal/ads/zzchr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcfu;


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzcfv;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzchj;

.field private zzj:J

.field private zzk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcge;Lcom/google/android/gms/internal/ads/zzcgd;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchr;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcge;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzc:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcge;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcit;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgd;Lcom/google/android/gms/internal/ads/zzcge;Ljava/lang/Integer;)V

    .line 6
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "ExoPlayerAdapter initialized."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzs(Lcom/google/android/gms/internal/ads/zzcfu;)V

    return-void
.end method

.method protected static final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzd(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzchy;-><init>(Lcom/google/android/gms/internal/ads/zzcia;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfv;->zzs(Lcom/google/android/gms/internal/ads/zzcfu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzt()V

    :cond_0
    return-void
.end method

.method public final zzD()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Precache onRenderedFirstFrame"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzcfv;
    .locals 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzh:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfv;->zzs(Lcom/google/android/gms/internal/ads/zzcfu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic zzb()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcia;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v17, "error"

    const-string v0, " ms"

    const-string v2, "Timeout reached. Limit: "

    .line 2
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzah:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzcw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 7
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzj:J

    sub-long/2addr v9, v11

    cmp-long v9, v9, v4

    if-gtz v9, :cond_a

    .line 9
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzg:Z

    if-nez v0, :cond_9

    .line 10
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzh:Z

    if-eqz v0, :cond_0

    .line 11
    monitor-exit p0

    goto/16 :goto_6

    .line 36
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzB()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzH()J

    move-result-wide v4

    const-wide/16 v18, 0x0

    cmp-long v0, v4, v18

    if-lez v0, :cond_7

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzN()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzk:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_5

    cmp-long v0, v9, v18

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    const-wide/16 v11, -0x1

    if-eqz v8, :cond_2

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzcfv;->zzI()J

    move-result-wide v13

    goto :goto_1

    :cond_2
    move-wide v13, v11

    :goto_1
    if-eqz v8, :cond_3

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 17
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcfv;->zzJ()J

    move-result-wide v15

    goto :goto_2

    :cond_3
    move-wide v15, v11

    :goto_2
    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 18
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzcfv;->zzK()J

    move-result-wide v11

    :cond_4
    move-wide/from16 v20, v15

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfv;->zzP()I

    move-result v15

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfv;->zzQ()I

    move-result v16

    move-wide/from16 v22, v6

    move-wide v6, v4

    move-wide v4, v9

    move-wide v9, v13

    move-wide v13, v11

    move-wide/from16 v11, v20

    move-wide/from16 v20, v22

    move v8, v0

    .line 21
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzchr;->zzm(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzk:J

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v6

    move-wide v6, v4

    move-wide v4, v9

    :goto_3
    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v0, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzchr;->zzp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 23
    monitor-exit p0

    goto/16 :goto_6

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzO()J

    move-result-wide v6

    cmp-long v0, v6, v20

    if-ltz v0, :cond_7

    cmp-long v0, v4, v18

    if-lez v0, :cond_7

    .line 28
    monitor-exit p0

    goto/16 :goto_6

    .line 25
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzai:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcia;->zzd(J)V

    return-void

    .line 12
    :cond_8
    :try_start_2
    const-string v17, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v2, "ExoPlayer was released during preloading."

    .line 13
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_9
    const-string v17, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Abort requested before buffering finished. "

    .line 10
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_a
    const-string v17, "downloadTimeout"

    new-instance v6, Ljava/io/IOException;

    .line 9
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 25
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 27
    :goto_5
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x22

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed to preload url "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v4, "VideoStreamExoPlayerCache.preload"

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchr;->release()V

    .line 33
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcia;->zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzi:Lcom/google/android/gms/internal/ads/zzchj;

    .line 36
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzchk;->zzd(Lcom/google/android/gms/internal/ads/zzchj;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;)Z
    .locals 1

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    const-string v17, "error"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcia;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " ms"

    const-string v5, "Timeout reached. Limit: "

    const/16 v18, 0x0

    .line 2
    :try_start_0
    array-length v6, v0

    new-array v6, v6, [Landroid/net/Uri;

    move/from16 v7, v18

    .line 3
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    .line 4
    aget-object v8, v0, v7

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzcfv;->zzq([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzchr;->zzc:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcge;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzchr;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    .line 10
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzai:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 10
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzah:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbhe;->zzw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v10

    .line 15
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sget-object v12, Lcom/google/android/gms/internal/ads/zzbhe;->zzcw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v12

    .line 17
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const-wide/16 v22, -0x1

    move-wide/from16 v12, v22

    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v19

    cmp-long v14, v14, v8

    if-gtz v14, :cond_d

    .line 31
    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzg:Z

    if-nez v14, :cond_c

    .line 32
    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzcia;->zzh:Z

    const/16 v24, 0x1

    if-eqz v14, :cond_2

    .line 33
    monitor-exit p0

    goto/16 :goto_8

    :cond_2
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 19
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzcfv;->zzB()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 34
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 20
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzcfv;->zzH()J

    move-result-wide v14

    const-wide/16 v25, 0x0

    cmp-long v16, v14, v25

    if-lez v16, :cond_a

    move-object/from16 p2, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzN()J

    move-result-wide v27

    cmp-long v0, v27, v12

    if-eqz v0, :cond_7

    cmp-long v0, v27, v25

    if-lez v0, :cond_3

    move-wide v12, v8

    move/from16 v8, v24

    goto :goto_2

    :cond_3
    move-wide v12, v8

    move/from16 v8, v18

    :goto_2
    if-eqz v21, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzI()J

    move-result-wide v29

    goto :goto_3

    :cond_4
    move-wide/from16 v29, v22

    :goto_3
    if-eqz v21, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzJ()J

    move-result-wide v31

    goto :goto_4

    :cond_5
    move-wide/from16 v31, v22

    :goto_4
    if-eqz v21, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzK()J

    move-result-wide v33

    :goto_5
    move-wide/from16 v35, v6

    move-wide v6, v14

    goto :goto_6

    :cond_6
    move-wide/from16 v33, v22

    goto :goto_5

    .line 25
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfv;->zzP()I

    move-result v15

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfv;->zzQ()I

    move-result v16

    move-object v0, v5

    move-wide/from16 v37, v35

    move-wide/from16 v39, v27

    move-object/from16 v27, v4

    move-wide/from16 v4, v39

    move-wide/from16 v39, v29

    move-wide/from16 v41, v31

    move-wide/from16 v30, v10

    move-wide/from16 v28, v12

    move-wide/from16 v9, v39

    move-wide/from16 v11, v41

    move-wide/from16 v13, v33

    .line 27
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzchr;->zzm(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V

    move-wide v12, v4

    goto :goto_7

    :cond_7
    move-object v0, v5

    move-wide/from16 v37, v6

    move-wide/from16 v30, v10

    move-wide v6, v14

    move-wide/from16 v39, v27

    move-object/from16 v27, v4

    move-wide/from16 v28, v8

    move-wide/from16 v4, v39

    :goto_7
    cmp-long v8, v4, v6

    if-ltz v8, :cond_8

    .line 35
    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzchr;->zzp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 36
    monitor-exit p0

    goto :goto_8

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcfv;->zzO()J

    move-result-wide v6

    cmp-long v6, v6, v30

    if-ltz v6, :cond_9

    cmp-long v4, v4, v25

    if-lez v4, :cond_9

    .line 38
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    return v24

    :cond_9
    move-wide/from16 v4, v37

    goto :goto_9

    :cond_a
    move-object/from16 p2, v0

    move-object/from16 v27, v4

    move-object v0, v5

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    move-wide v4, v6

    .line 29
    :goto_9
    :try_start_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    monitor-exit p0

    move-wide v6, v4

    move-object/from16 v4, v27

    move-wide/from16 v8, v28

    move-wide/from16 v10, v30

    move-object v5, v0

    move-object/from16 v0, p2

    goto/16 :goto_1

    :catch_0
    const-string v17, "interrupted"

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Wait interrupted."

    .line 37
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_b
    const-string v17, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v4, "ExoPlayer was released during preloading."

    .line 34
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_c
    const-string v17, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Abort requested before buffering finished. "

    .line 32
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v27, v4

    move-object v0, v5

    move-wide/from16 v28, v8

    .line 18
    const-string v17, "downloadTimeout"

    new-instance v4, Ljava/io/IOException;

    .line 31
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v28

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 30
    :goto_a
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_a

    .line 39
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x22

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed to preload url "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Exception: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 40
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v5, "VideoStreamExoPlayerCache.preload"

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchr;->release()V

    .line 43
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzcia;->zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v18
.end method

.method public final zzg(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzchj;)Z
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzi:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcia;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    array-length v1, p2

    new-array v1, v1, [Landroid/net/Uri;

    move v2, v0

    .line 3
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfv;->zzq([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzc:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcge;

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzcge;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzchr;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzj:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzk:J

    const-wide/16 v1, 0x0

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcia;->zzd(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 10
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to preload url "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v1, "VideoStreamExoPlayerCache.preload"

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchr;->release()V

    .line 14
    const-string v1, "error"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzcia;->zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final zzh(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfv;->zzG(I)V

    return-void
.end method

.method public final zzi(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfv;->zzF(I)V

    return-void
.end method

.method public final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfv;->zzy(I)V

    return-void
.end method

.method public final zzk(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zze:Lcom/google/android/gms/internal/ads/zzcfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfv;->zzz(I)V

    return-void
.end method

.method public final zzl()V
    .locals 4

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzg:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchr;->release()V

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcia;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzf:Ljava/lang/String;

    const-string v2, "externalAbort"

    const-string v3, "Programmatic precache abort."

    .line 5
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzr(ZJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcge;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzf:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzchz;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchz;-><init>(Lcom/google/android/gms/internal/ads/zzcge;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzs(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzt(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Precache error"

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "VideoStreamExoPlayerCache.onError"

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Precache exception"

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "VideoStreamExoPlayerCache.onException"

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
