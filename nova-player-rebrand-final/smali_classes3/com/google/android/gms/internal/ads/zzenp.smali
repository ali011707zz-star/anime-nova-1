.class final Lcom/google/android/gms/internal/ads/zzenp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfiu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfir;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfqg;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfjc;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzenr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzenr;JLcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfqg;Lcom/google/android/gms/internal/ads/zzfjc;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzenp;->zze:Lcom/google/android/gms/internal/ads/zzfqg;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzf:Lcom/google/android/gms/internal/ads/zzfjc;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzg:Lcom/google/android/gms/internal/ads/zzenr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzg:Lcom/google/android/gms/internal/ads/zzenr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:J

    sub-long v10, v2, v4

    .line 2
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    move v9, v0

    :goto_1
    move-object v4, v3

    goto :goto_3

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzemz;

    if-eqz v0, :cond_2

    move v9, v2

    goto :goto_1

    .line 3
    :cond_2
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfjr;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzecr;

    const/4 v4, 0x6

    if-eqz v0, :cond_6

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfkm;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 5
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    .line 6
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzci:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, p1, Lcom/google/android/gms/internal/ads/zzekk;

    if-eqz v4, :cond_0

    .line 8
    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzekk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzekk;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v9, v0

    goto :goto_3

    :cond_6
    move v9, v4

    goto :goto_1

    .line 2
    :goto_3
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzn()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzk()Lcom/google/android/gms/internal/ads/zzent;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzekk;

    if-eqz v0, :cond_7

    .line 10
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzekk;

    :cond_7
    move-wide v11, v10

    move-object v10, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    .line 11
    :goto_4
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzent;->zza(Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzfir;ILcom/google/android/gms/internal/ads/zzekk;J)V

    move-wide v10, v11

    .line 12
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzl()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenp;->zze:Lcom/google/android/gms/internal/ads/zzfqg;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzf:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    .line 14
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzfir;->zzn:Ljava/util/List;

    .line 15
    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfqg;->zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzfir;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 14
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzfqk;->zza(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    monitor-exit v1

    return-void

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzm()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzenq;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzd:Ljava/lang/String;

    .line 16
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzaf:Ljava/lang/String;

    move-object v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzenq;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v0, v3, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfkm;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    .line 18
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-eq v0, v2, :cond_b

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v2, "com.google.android.gms.ads"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzekk;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    const/16 v2, 0xd

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzekk;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkm;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzenr;->zzo()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v3, v10, v11, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zze(Lcom/google/android/gms/internal/ads/zzfir;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 23
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzg:Lcom/google/android/gms/internal/ads/zzenr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:J

    sub-long v8, v0, v2

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzk()Lcom/google/android/gms/internal/ads/zzent;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    const/4 v7, 0x0

    move-wide v9, v8

    const/4 v8, 0x0

    .line 2
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzent;->zza(Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzfir;ILcom/google/android/gms/internal/ads/zzekk;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-wide v9, v8

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    monitor-exit p1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzenr;->zzi(Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzm()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzenq;

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/zzenq;->zzd:J

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzm()Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzenq;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzd:Ljava/lang/String;

    .line 4
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzaf:Ljava/lang/String;

    const/4 v7, 0x0

    move-wide v8, v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzenq;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    move-wide v9, v8

    invoke-virtual {v1, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzenr;->zzo()Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzekl;->zzd(Lcom/google/android/gms/internal/ads/zzfir;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 7
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
