.class public final Lcom/google/android/gms/internal/ads/zzegw;
.super Lcom/google/android/gms/internal/ads/zzbzg;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzehe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcqi;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzcac;Lcom/google/android/gms/internal/ads/zzcqi;Lcom/google/android/gms/internal/ads/zzehe;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzfor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzg;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhe;->zza(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzg:Lcom/google/android/gms/internal/ads/zzcac;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzehe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzcqi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzf:Lcom/google/android/gms/internal/ads/zzfor;

    return-void
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzfbz;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzegk;-><init>(Lcom/google/android/gms/internal/ads/zzfbz;Lcom/google/android/gms/internal/ads/zzbzu;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzegl;->zza:Lcom/google/android/gms/internal/ads/zzegl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfno;->zze:Lcom/google/android/gms/internal/ads/zzfno;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbzu;->zza:Landroid/os/Bundle;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfnm;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p0

    return-object p0
.end method

.method private static zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbsw;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzegq;->zza:Lcom/google/android/gms/internal/ads/zzegq;

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbsz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)Lcom/google/android/gms/internal/ads/zzbsp;

    move-result-object p2

    .line 2
    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ads/zzfon;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfno;->zzg:Lcom/google/android/gms/internal/ads/zzfno;

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfnm;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p0

    .line 5
    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfon;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-object p0
.end method

.method private final zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzego;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzego;-><init>(Lcom/google/android/gms/internal/ads/zzegw;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegh;

    .line 3
    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzegh;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzbzl;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final declared-synchronized zzp()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzq(Lcom/google/android/gms/internal/ads/zzegr;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegw;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzegr;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzegr;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzegr;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbsq;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzegw;->zzf:Lcom/google/android/gms/internal/ads/zzfor;

    invoke-virtual {v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbsq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfor;)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzcqi;

    move/from16 v7, p2

    .line 3
    invoke-interface {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzcqi;->zzy(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/android/gms/internal/ads/zzfbz;

    move-result-object v9

    sget-object v3, Lcom/google/android/gms/internal/ads/zzegt;->zzd:Lcom/google/android/gms/internal/ads/zzbss;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbsw;->zzb:Lcom/google/android/gms/internal/ads/zzbsr;

    .line 4
    const-string v6, "google.afma.response.normalize"

    invoke-virtual {v2, v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzbsz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)Lcom/google/android/gms/internal/ads/zzbsp;

    move-result-object v10

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbzu;->zzj:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Request contained a PoolKey but split request is disabled."

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v11, v5

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbzu;->zzh:Ljava/lang/String;

    .line 9
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzegw;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzegr;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v3, "Request contained a PoolKey but no matching parameters were found."

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-nez v11, :cond_2

    const/16 v3, 0x9

    .line 11
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v3

    :goto_2
    move-object v12, v3

    goto :goto_3

    .line 47
    :cond_2
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzegr;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    goto :goto_2

    .line 12
    :goto_3
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfbz;->zzf()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v13

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbzu;->zza:Landroid/os/Bundle;

    const-string v5, "ad_types"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzfoo;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfoo;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzehd;

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbzu;->zzg:Ljava/lang/String;

    invoke-direct {v14, v3, v13, v12}, Lcom/google/android/gms/internal/ads/zzehd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 15
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbzu;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzegw;->zzg:Lcom/google/android/gms/internal/ads/zzcac;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeha;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcac;ILjava/lang/String;)V

    .line 16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfbz;->zze()Lcom/google/android/gms/internal/ads/zzfnu;

    move-result-object v5

    const/16 v6, 0xb

    .line 17
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v15, 0x2

    const/16 p2, 0x1

    const/16 v7, 0xa

    if-nez v11, :cond_3

    .line 18
    invoke-static {v1, v5, v9}, Lcom/google/android/gms/internal/ads/zzegw;->zzm(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzfbz;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v9

    .line 19
    invoke-static {v9, v5, v2, v13, v12}, Lcom/google/android/gms/internal/ads/zzegw;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 20
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v4

    .line 21
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfno;->zzi:Lcom/google/android/gms/internal/ads/zzfno;

    new-array v11, v15, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v2, v11, v8

    aput-object v9, v11, p2

    .line 22
    invoke-virtual {v5, v7, v11}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnd;

    move-result-object v7

    new-instance v11, Lcom/google/android/gms/internal/ads/zzegp;

    invoke-direct {v11, v2, v1, v9}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 23
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzfnd;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v7

    .line 24
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v7

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v11

    .line 25
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v7

    .line 26
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v3

    .line 28
    invoke-static {v3, v13, v4}, Lcom/google/android/gms/internal/ads/zzfon;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 29
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzfon;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoe;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfno;->zzk:Lcom/google/android/gms/internal/ads/zzfno;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v9, v7, v8

    aput-object v2, v7, p2

    aput-object v3, v7, v15

    .line 30
    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnd;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzegi;

    invoke-direct {v5, v1, v3, v9, v2}, Lcom/google/android/gms/internal/ads/zzegi;-><init>(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 31
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfnd;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v1

    goto :goto_4

    .line 48
    :cond_3
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzegr;->zza:Lcom/google/android/gms/internal/ads/zzbzw;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzegr;->zzb:Lorg/json/JSONObject;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzehc;

    invoke-direct {v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzehc;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbzw;)V

    .line 34
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v1

    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfno;->zzi:Lcom/google/android/gms/internal/ads/zzfno;

    .line 36
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzfnm;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v4

    .line 38
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v2

    .line 41
    invoke-static {v2, v13, v1}, Lcom/google/android/gms/internal/ads/zzfon;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 42
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 43
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzfon;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoe;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfno;->zzk:Lcom/google/android/gms/internal/ads/zzfno;

    new-array v4, v15, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v2, v4, v8

    aput-object v1, v4, p2

    .line 44
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnd;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzegj;

    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzegj;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 45
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfnd;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v1

    .line 48
    :goto_4
    invoke-static {v1, v13, v6}, Lcom/google/android/gms/internal/ads/zzfon;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzi:Lcom/google/android/gms/internal/ads/zzflg;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzflg;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzflg;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzf:Lcom/google/android/gms/internal/ads/zzfor;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbsq;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzbsq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfor;)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzcqi;

    .line 8
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqi;->zzy(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/android/gms/internal/ads/zzfbz;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfbz;->zze()Lcom/google/android/gms/internal/ads/zzfnu;

    move-result-object v2

    .line 10
    invoke-static {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzegw;->zzm(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzfbz;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfbz;->zzf()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object p2

    const/16 v3, 0x9

    .line 12
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v8

    .line 13
    invoke-static {v6, v2, v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzegw;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfno;->zzz:Lcom/google/android/gms/internal/ads/zzfno;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    .line 15
    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnd;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzegm;

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzegm;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 16
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzfnd;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegg;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzegg;-><init>(Lcom/google/android/gms/internal/ads/zzegw;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzegr;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzbzl;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzg:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzegw;->zzb(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbzu;)V

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbje;->zzi:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzehe;

    .line 9
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzegv;-><init>(Lcom/google/android/gms/internal/ads/zzehe;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v0, p2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzbzl;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzg:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzegw;->zzk(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbzu;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzbzl;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzegw;->zzc(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbzu;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzl;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzegw;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbzu;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpz:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v8, "Unexpected preconnect response: "

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpA:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgqq;->zzc(C)Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrr;->zza(Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgrr;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgrr;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    const-string v2, "AdRequestServiceImpl: Preconnecting"

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzg:Lcom/google/android/gms/internal/ads/zzcac;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeha;

    const-string v7, "HEAD"

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcac;ILjava/lang/String;)V

    new-instance v12, Ljava/util/HashMap;

    .line 11
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    .line 13
    invoke-virtual {v12, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzegy;

    const/4 v3, 0x0

    new-array v13, v3, [B

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v11, 0x7530

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 14
    :try_start_0
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzeha;->zzb(Lcom/google/android/gms/internal/ads/zzegy;)Lcom/google/android/gms/internal/ads/zzegz;

    move-result-object v2

    .line 15
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzegz;->zza:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzegz;->zza:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 17
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbzd;Lcom/google/android/gms/internal/ads/zzbzm;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjt;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, ""

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbzm;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string p2, "Service can\'t call client"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzcqi;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcqi;->zzF()Lcom/google/android/gms/internal/ads/zzcdk;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzd;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegf;

    .line 7
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzegf;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzd;)V

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbsq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzf:Lcom/google/android/gms/internal/ads/zzfor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbsq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfor;)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjr;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzcqi;

    .line 5
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqi;->zzy(Lcom/google/android/gms/internal/ads/zzbzu;I)Lcom/google/android/gms/internal/ads/zzfbz;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfbz;->zzd()Lcom/google/android/gms/internal/ads/zzfba;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbsw;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbsw;->zzb:Lcom/google/android/gms/internal/ads/zzbsr;

    .line 7
    const-string v5, "google.afma.request.getSignals"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbsz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)Lcom/google/android/gms/internal/ads/zzbsp;

    move-result-object v0

    const/16 v3, 0x16

    .line 8
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfbz;->zze()Lcom/google/android/gms/internal/ads/zzfnu;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfno;->zzl:Lcom/google/android/gms/internal/ads/zzfno;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zza:Landroid/os/Bundle;

    .line 11
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfnm;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzegn;

    invoke-direct {v4, v2, p1}, Lcom/google/android/gms/internal/ads/zzegn;-><init>(Lcom/google/android/gms/internal/ads/zzfba;Lcom/google/android/gms/internal/ads/zzbzu;)V

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfno;->zzm:Lcom/google/android/gms/internal/ads/zzfno;

    .line 14
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfbz;->zzf()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object p2

    const-string v0, "ad_types"

    .line 18
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfoo;

    const-string v0, "extras"

    .line 19
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 20
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfon;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 21
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbje;->zzj:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzehe;

    .line 22
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzegu;-><init>(Lcom/google/android/gms/internal/ads/zzehe;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {p1, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-object p1
.end method

.method final synthetic zzl(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzfoe;)Ljava/io/InputStream;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbzw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzi()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/json/JSONObject;

    .line 3
    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzbzu;->zzh:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegr;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbzw;

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Lcom/google/android/gms/internal/ads/zzbzw;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzegw;->zzq(Lcom/google/android/gms/internal/ads/zzegr;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 6
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method
