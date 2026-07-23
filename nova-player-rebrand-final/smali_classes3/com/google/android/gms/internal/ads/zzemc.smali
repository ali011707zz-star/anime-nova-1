.class public final Lcom/google/android/gms/internal/ads/zzemc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzduv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdlu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdlu;Lcom/google/android/gms/internal/ads/zzduv;Lcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzc:Lcom/google/android/gms/internal/ads/zzdlu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemc;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzb:Lcom/google/android/gms/internal/ads/zzduv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkp:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzk:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzduz;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzelz;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzelz;-><init>(Lcom/google/android/gms/internal/ads/zzemc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzduz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzemb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzemb;-><init>(Lcom/google/android/gms/internal/ads/zzduz;)V

    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzduz;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v12, Lcom/google/android/gms/internal/ads/zzbhe;->zzcN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxh;->zzB:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 6
    invoke-virtual {v2, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzb:Lcom/google/android/gms/internal/ads/zzduv;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfjk;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzduv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v6

    .line 9
    iget-boolean v2, v5, Lcom/google/android/gms/internal/ads/zzfir;->zzW:Z

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaw(Z)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxh;->zzC:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 15
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcen;

    .line 17
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzc:Lcom/google/android/gms/internal/ads/zzdlu;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzcwv;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v5, v15}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemc;->zza:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzh:Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzk:Lcom/google/android/gms/internal/ads/zzdxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkr;

    move-object/from16 v16, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzema;

    move-object/from16 v15, v16

    .line 18
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzema;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfjk;ZLcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxz;)V

    invoke-direct {v15, v1, v6}, Lcom/google/android/gms/internal/ads/zzdkr;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 19
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzdlu;->zzd(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdkr;)Lcom/google/android/gms/internal/ads/zzdko;

    move-result-object v1

    .line 20
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxh;->zzD:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    .line 26
    invoke-virtual {v2, v3, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdko;->zzd()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzelx;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/zzelx;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhd;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 30
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzgm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdko;->zzl()Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object v4

    .line 34
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzclc;->zzb(Lcom/google/android/gms/internal/ads/zzfir;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzclc;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdko;->zzk()Lcom/google/android/gms/internal/ads/zzduu;

    move-result-object v4

    if-eq v7, v8, :cond_4

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    move-object v15, v9

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzemc;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 38
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v9

    .line 39
    invoke-virtual {v4, v6, v7, v15, v9}, Lcom/google/android/gms/internal/ads/zzduu;->zzi(Lcom/google/android/gms/internal/ads/zzcjl;ZLcom/google/android/gms/internal/ads/zzbok;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdko;->zzk()Lcom/google/android/gms/internal/ads/zzduu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v4

    .line 42
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzdlu;->zzc()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v7

    .line 43
    invoke-static {v6, v2, v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzduu;->zzj(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfoo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzely;

    invoke-direct {v3, v0, v6, v5, v1}, Lcom/google/android/gms/internal/ads/zzely;-><init>(Lcom/google/android/gms/internal/ads/zzemc;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzdko;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemc;->zze:Ljava/util/concurrent/Executor;

    .line 44
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method
