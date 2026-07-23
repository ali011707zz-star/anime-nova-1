.class final Lcom/google/android/gms/internal/ads/zzfla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkz;


# instance fields
.field private final zza:Lj$/util/concurrent/ConcurrentHashMap;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzflg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzflc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzflg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzflg;->zzd:I

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzflc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzflc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    return-void
.end method

.method private final zzf()V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzflg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzhl:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzb:Lcom/google/android/gms/internal/ads/zzfld;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " PoolCollection"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    add-int/lit8 v4, v4, 0x1

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzflj;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "    "

    .line 14
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    .line 15
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfky;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_0

    const-string v7, "[O]"

    .line 16
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfky;->zzc()I

    move-result v6

    :goto_2
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzd:I

    if-ge v6, v7, :cond_1

    const-string v7, "[ ]"

    .line 18
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_1
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfky;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22
    :cond_2
    :goto_3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzc:I

    if-ge v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".\n"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzflj;)Lcom/google/android/gms/internal/ads/zzfli;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfky;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfky;->zzb()Lcom/google/android/gms/internal/ads/zzfli;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflc;->zzb()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfky;->zzh()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze;->zzq()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze$zza;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzflw;->zza:Z

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze$zza;->zzc(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze$zza;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzflw;->zzb:I

    .line 10
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze$zza;

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;->zzh(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze$zza;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;->zzh(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzd()Lcom/google/android/gms/internal/ads/zzdgu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdgu;->zzj(Lcom/google/android/gms/internal/ads/zzbgj$zzb;)V

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfla;->zzf()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflc;->zza()V

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfla;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 15
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzflj;Lcom/google/android/gms/internal/ads/zzfli;)Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfky;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/zzfli;->zzd:J

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfky;

    .line 3
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzd:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzflg;->zze:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfky;-><init>(II)V

    .line 4
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzc:I

    if-ne v3, v4, :cond_b

    .line 5
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzg:I

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto/16 :goto_3

    .line 16
    :cond_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v3, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfky;->zzf()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 18
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfky;->zzf()I

    move-result v3

    .line 19
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzflj;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    if-eqz v4, :cond_9

    .line 20
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfky;->zze()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_4

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfky;->zze()J

    move-result-wide v4

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzflj;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_9

    .line 15
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6
    :cond_6
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfky;->zzd()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_7

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfky;->zzd()J

    move-result-wide v4

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzflj;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    .line 10
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflc;->zzd()V

    goto :goto_4

    .line 5
    :cond_a
    throw v4

    .line 22
    :cond_b
    :goto_4
    invoke-virtual {v0, p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzc()V

    move-object v1, v2

    .line 24
    :cond_c
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfky;->zza(Lcom/google/android/gms/internal/ads/zzfli;)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflc;->zze()V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflc;->zzf()Lcom/google/android/gms/internal/ads/zzflb;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfky;->zzh()Lcom/google/android/gms/internal/ads/zzflw;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;

    move-result-object v4

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzflb;->zza:Z

    .line 31
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;->zzc(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzflb;->zzb:Z

    .line 32
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzflw;->zzb:I

    .line 33
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;->zzk(I)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;->zzn(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzg$zza;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;->zzh(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    .line 37
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxj;->zzd()Lcom/google/android/gms/internal/ads/zzdgu;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdgu;->zzk(Lcom/google/android/gms/internal/ads/zzbgj$zzb;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfla;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzflj;)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfky;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfky;->zzc()I

    move-result p1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzflj;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzflg;->zza:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzx;->zza()Lcom/google/android/gms/internal/ads/zzbzy;

    move-result-object v0

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbzy;->zzj:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzflk;

    .line 2
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzflg;->zzf:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzflk;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)V

    return-object v2
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzflg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    return-object v0
.end method
