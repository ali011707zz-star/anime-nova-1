.class public abstract Lcom/google/android/gms/internal/ads/zzfeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesf;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfer;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfgj;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Landroid/view/ViewGroup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfjj;

.field private zzj:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzfer;Lcom/google/android/gms/internal/ads/zzfjj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzc:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zza:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzd:Lcom/google/android/gms/internal/ads/zzfer;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzi:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzg:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcma;->zzx()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzh:Lcom/google/android/gms/internal/ads/zzfor;

    return-void
.end method

.method private final declared-synchronized zzm(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfdy;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjx:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzg:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzctu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzctu;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhe;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzd:Lcom/google/android/gms/internal/ads/zzfer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzd(Lcom/google/android/gms/internal/ads/zzdbv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdhe;->zzg(Lcom/google/android/gms/internal/ads/zzdjm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfeb;->zzc(Lcom/google/android/gms/internal/ads/zzctu;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzd:Lcom/google/android/gms/internal/ads/zzfer;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzn(Lcom/google/android/gms/internal/ads/zzfer;)Lcom/google/android/gms/internal/ads/zzfer;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhe;

    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzc:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzc(Lcom/google/android/gms/internal/ads/zzdbi;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzi(Lcom/google/android/gms/internal/ads/zzdde;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzj(Lcom/google/android/gms/ads/internal/overlay/zzr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzk(Lcom/google/android/gms/internal/ads/zzddw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzd(Lcom/google/android/gms/internal/ads/zzdbv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdhe;->zzg(Lcom/google/android/gms/internal/ads/zzdjm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdhe;->zzl(Lcom/google/android/gms/internal/ads/zzfgg;)Lcom/google/android/gms/internal/ads/zzdhe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzg:Landroid/view/ViewGroup;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzctu;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzctu;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdan;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzb:Landroid/content/Context;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdan;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzdan;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdan;->zze()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzn()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfeb;->zzc(Lcom/google/android/gms/internal/ads/zzctu;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbjc;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_1

    :try_start_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzmF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_4

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzmG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const-string p3, "loadAd must be called on the main UI thread."

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 8
    :try_start_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzc:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfea;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfea;-><init>(Lcom/google/android/gms/internal/ads/zzfeb;)V

    .line 10
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p3, :cond_5

    monitor-exit p0

    return v1

    .line 11
    :cond_5
    :try_start_5
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzcZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 11
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p3, :cond_6

    .line 13
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14
    :cond_6
    :try_start_7
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbix;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    :try_start_8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfgj;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 15
    check-cast p3, Lcom/google/android/gms/internal/ads/zzcth;

    if-eqz p3, :cond_7

    .line 16
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdam;->zzd()Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object p3

    .line 17
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzfoo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 18
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfoo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 19
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfoo;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfoo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v4, p3

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    :try_start_9
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzb:Landroid/content/Context;

    .line 20
    iget-boolean v5, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v5}, Lcom/google/android/gms/internal/ads/zzfkh;->zzb(Landroid/content/Context;Z)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzkq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 22
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    :try_start_a
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zza:Lcom/google/android/gms/internal/ads/zzcma;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcma;->zzw()Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzc(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    :try_start_b
    new-instance v5, Landroid/util/Pair;

    .line 24
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/util/Pair;

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    .line 28
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdxj;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzi:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 29
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzd()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 31
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 32
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfjj;->zzA()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfon;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I

    move-result v1

    .line 34
    invoke-static {p3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzfdy;-><init>([B)V

    iput-object p2, v6, Lcom/google/android/gms/internal/ads/zzfdy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgk;

    invoke-direct {p2, v6, v3}, Lcom/google/android/gms/internal/ads/zzfgk;-><init>(Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzbzu;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfdz;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfdz;-><init>(Lcom/google/android/gms/internal/ads/zzfeb;)V

    .line 35
    invoke-interface {p1, p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzfgj;->zzc(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdx;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v2, p0

    move-object v3, p4

    .line 36
    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfdx;-><init>(Lcom/google/android/gms/internal/ads/zzfeb;Lcom/google/android/gms/internal/ads/zzese;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfdy;)V

    iget-object p2, v2, Lcom/google/android/gms/internal/ads/zzfeb;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :goto_4
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw p1
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzctu;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzdal;
.end method

.method public final zzd(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzi:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzp(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfjj;

    return-void
.end method

.method final synthetic zze()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzd:Lcom/google/android/gms/internal/ads/zzfer;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfer;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zzm(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zzm(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzh()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzc:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzfer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzd:Lcom/google/android/gms/internal/ads/zzfer;

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzfgj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zze:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object v0
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzfor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzh:Lcom/google/android/gms/internal/ads/zzfor;

    return-object v0
.end method

.method final synthetic zzl(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
