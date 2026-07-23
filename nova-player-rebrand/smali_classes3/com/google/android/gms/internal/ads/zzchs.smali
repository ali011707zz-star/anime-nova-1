.class public final Lcom/google/android/gms/internal/ads/zzchs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v0, p2

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcge;

    const/4 v2, 0x3

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "google.afma.Notify_dt"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Precache GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object v2

    .line 8
    const-string v3, "abort"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zza(Lcom/google/android/gms/internal/ads/zzcge;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "Precache abort but no precache task running."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "src"

    .line 11
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "periodicReportIntervalMs"

    .line 12
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "exoPlayerRenderingIntervalMs"

    .line 13
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exoPlayerIdleIntervalMs"

    .line 14
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcgd;

    .line 15
    const-string v8, "flags"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzcgd;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzcgd;->zzk:Z

    if-eqz v3, :cond_12

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const-string v12, "demuxed"

    .line 16
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 17
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 p1, v11

    move/from16 v15, p1

    .line 19
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v15, v11, :cond_2

    .line 20
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v14

    goto :goto_1

    :catch_0
    move/from16 p1, v11

    .line 54
    :catch_1
    const-string v10, "Malformed demuxed URL list for precache: "

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-static {v10}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    move-object v10, v13

    goto :goto_1

    :cond_3
    move/from16 p1, v11

    :goto_1
    if-nez v10, :cond_4

    .line 20
    new-array v10, v9, [Ljava/lang/String;

    aput-object v3, v10, p1

    :cond_4
    if-eqz v8, :cond_6

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzchk;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzchj;

    .line 23
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzchj;->zza:Lcom/google/android/gms/internal/ads/zzcge;

    if-ne v9, v1, :cond_5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzchj;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v13, v8

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzchj;

    move-result-object v13

    :cond_7
    :goto_2
    if-eqz v13, :cond_8

    .line 23
    const-string v0, "Precache task is already running."

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v0, "Precache requires a dependency provider."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v2, "player"

    .line 28
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_a
    if-eqz v4, :cond_b

    .line 30
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcge;->zzo(I)V

    :cond_b
    if-eqz v5, :cond_c

    .line 31
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcge;->zzA(I)V

    :cond_c
    if-eqz v6, :cond_d

    .line 32
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcge;->zzB(I)V

    .line 33
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 34
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zza;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    if-lez v2, :cond_11

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzcgd;->zzg:I

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfv;->zzQ()I

    move-result v4

    if-ge v4, v2, :cond_e

    .line 36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcia;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzcia;-><init>(Lcom/google/android/gms/internal/ads/zzcge;Lcom/google/android/gms/internal/ads/zzcgd;)V

    goto :goto_3

    .line 37
    :cond_e
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzr:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzchx;->zzr()I

    move-result v4

    :cond_f
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzcgd;->zzb:I

    if-ge v4, v2, :cond_10

    .line 40
    new-instance v2, Lcom/google/android/gms/internal/ads/zzchx;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzchx;-><init>(Lcom/google/android/gms/internal/ads/zzcge;Lcom/google/android/gms/internal/ads/zzcgd;)V

    goto :goto_3

    .line 41
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzchv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzchv;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    goto :goto_3

    .line 42
    :cond_11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzchu;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzchu;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    .line 36
    :goto_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzchj;

    .line 43
    invoke-direct {v4, v1, v2, v3, v10}, Lcom/google/android/gms/internal/ads/zzchj;-><init>(Lcom/google/android/gms/internal/ads/zzcge;Lcom/google/android/gms/internal/ads/zzchr;Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_4

    .line 45
    :cond_12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzchj;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzchj;->zzb:Lcom/google/android/gms/internal/ads/zzchr;

    .line 44
    :goto_4
    const-string v1, "minBufferMs"

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzi(I)V

    :cond_13
    const-string v1, "maxBufferMs"

    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzh(I)V

    :cond_14
    const-string v1, "bufferForPlaybackMs"

    .line 50
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzj(I)V

    :cond_15
    const-string v1, "bufferForPlaybackAfterRebufferMs"

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzk(I)V

    :cond_16
    return-void

    .line 45
    :cond_17
    const-string v0, "Precache must specify a source."

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method
