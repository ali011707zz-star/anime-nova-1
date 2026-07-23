.class public final Lcom/google/android/gms/internal/ads/zzffq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzflv;

.field private final zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzdam;

.field private final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzflv;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffq;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzb:Lcom/google/android/gms/internal/ads/zzfgj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzc:Lcom/google/android/gms/internal/ads/zzflv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfli;Lcom/google/android/gms/internal/ads/zzfgk;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffq;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfli;->zzc:Lcom/google/android/gms/internal/ads/zzcwf;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzc()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfli;->zzc:Lcom/google/android/gms/internal/ads/zzcwf;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcwf;->zzp()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzc()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zzu(Lcom/google/android/gms/internal/ads/zzfgg;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfli;->zzc:Lcom/google/android/gms/internal/ads/zzcwf;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfli;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzh(Lcom/google/android/gms/internal/ads/zzfjc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffq;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfga;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfga;->zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzdam;
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffq;->zze:Lcom/google/android/gms/internal/ads/zzdam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgi;->zza(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzffr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzd:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzffr;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzdal;->zzi(Lcom/google/android/gms/internal/ads/zzffr;)Lcom/google/android/gms/internal/ads/zzdal;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzh()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdam;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v5, :cond_0

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-eqz v4, :cond_1

    :cond_0
    move-object v5, v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzf:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffp;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzflj;)V

    move-object v4, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzb:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 9
    check-cast v5, Lcom/google/android/gms/internal/ads/zzffw;

    invoke-virtual {v5, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzffw;->zza(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 10
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v6

    move-object v5, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzffo;-><init>(Lcom/google/android/gms/internal/ads/zzffq;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)V

    .line 11
    invoke-static {v6, v0, v7}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :goto_0
    :try_start_1
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzffq;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffq;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfga;

    invoke-virtual {v0, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzfga;->zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffq;->zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffq;->zza()Lcom/google/android/gms/internal/ads/zzdam;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzffv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    if-eqz p5, :cond_2

    .line 1
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzfgi;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzffp;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzffp;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzffp;->zzd:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzffp;->zze:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzffp;->zzf:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v7, p5, Lcom/google/android/gms/internal/ads/zzffv;->zza:Lcom/google/android/gms/internal/ads/zzflj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffp;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzflj;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzffv;->zzc:Lcom/google/android/gms/internal/ads/zzfli;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzffq;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzc:Lcom/google/android/gms/internal/ads/zzflv;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Lcom/google/android/gms/internal/ads/zzflt;)V

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzffq;->zzg(Lcom/google/android/gms/internal/ads/zzfli;Lcom/google/android/gms/internal/ads/zzfgk;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzc:Lcom/google/android/gms/internal/ads/zzflv;

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzflv;->zzb(Lcom/google/android/gms/internal/ads/zzflt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzffq;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzffn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzffn;-><init>(Lcom/google/android/gms/internal/ads/zzffq;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffq;->zzf:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Lcom/google/android/gms/internal/ads/zzflt;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzffv;->zzb:Lcom/google/android/gms/internal/ads/zzbzu;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzfgk;

    .line 6
    invoke-direct {p5, p1, p2}, Lcom/google/android/gms/internal/ads/zzfgk;-><init>(Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzbzu;)V

    move-object p1, p5

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffq;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/zzfga;

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfga;->zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffq;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzflr;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzflr;->zza:Lcom/google/android/gms/internal/ads/zzfli;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzflr;->zzb:Lcom/google/android/gms/internal/ads/zzflt;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzffp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zze;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;->zzh(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgj$zzb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcxj;->zzd()Lcom/google/android/gms/internal/ads/zzdgu;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdgu;->zzl(Lcom/google/android/gms/internal/ads/zzbgj$zzb;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffp;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzffq;->zzg(Lcom/google/android/gms/internal/ads/zzfli;Lcom/google/android/gms/internal/ads/zzfgk;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzecr;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzecr;-><init>(ILjava/lang/String;)V

    throw p1
.end method
