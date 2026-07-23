.class public final Lcom/google/android/gms/internal/ads/zzeot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzduv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdue;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdue;Lcom/google/android/gms/internal/ads/zzduv;Lcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeot;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzc:Lcom/google/android/gms/internal/ads/zzdue;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeot;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzb:Lcom/google/android/gms/internal/ads/zzduv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

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

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeot;->zzk:Lcom/google/android/gms/internal/ads/zzdxz;

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

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeos;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzeos;-><init>(Lcom/google/android/gms/internal/ads/zzeot;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzduz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeot;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeom;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(Lcom/google/android/gms/internal/ads/zzduz;)V

    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzduz;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhe;->zzcN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

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

    move-result-wide v4

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzb:Lcom/google/android/gms/internal/ads/zzduv;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    invoke-virtual {v3, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzduv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v8

    .line 9
    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/zzfir;->zzW:Z

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaw(Z)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzC:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 15
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    :cond_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcen;

    .line 17
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzc:Lcom/google/android/gms/internal/ads/zzdue;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwv;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v6, v5}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    move-object v1, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeot;->zza:Landroid/content/Context;

    move-object v9, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v10, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    move-object v11, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzh:Z

    move-object v12, v11

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    move-object v13, v12

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzeot;->zzk:Lcom/google/android/gms/internal/ads/zzdxz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdub;

    move-object/from16 v17, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeop;

    move-object/from16 p3, v14

    move-object/from16 v14, v17

    .line 18
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzeop;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzduv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzbok;ZLcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzdxz;)V

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzdub;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 19
    invoke-virtual {v15, v14, v0}, Lcom/google/android/gms/internal/ads/zzdue;->zzf(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdub;)Lcom/google/android/gms/internal/ads/zzdua;

    move-result-object v0

    .line 20
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxh;->zzD:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzk()Lcom/google/android/gms/internal/ads/zzdjv;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzbpa;->zzb(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzboz;)V

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeoq;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzeoq;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 29
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdhd;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzl()Lcom/google/android/gms/internal/ads/zzduu;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v2, v10, :cond_3

    move-object/from16 v5, v16

    goto :goto_0

    :cond_3
    move-object v5, v9

    .line 32
    :goto_0
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v8, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzduu;->zzi(Lcom/google/android/gms/internal/ads/zzcjl;ZLcom/google/android/gms/internal/ads/zzbok;Landroid/os/Bundle;)V

    .line 34
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzgm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzo()Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object v4

    .line 38
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzclc;->zzb(Lcom/google/android/gms/internal/ads/zzfir;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzclc;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdua;->zzl()Lcom/google/android/gms/internal/ads/zzduu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    .line 42
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v2

    .line 43
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzdam;->zzd()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v4

    .line 44
    invoke-static {v8, v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzduu;->zzj(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfoo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeor;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v8, v6, v0}, Lcom/google/android/gms/internal/ads/zzeor;-><init>(Lcom/google/android/gms/internal/ads/zzeot;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzdua;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzeot;->zze:Ljava/util/concurrent/Executor;

    .line 45
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
