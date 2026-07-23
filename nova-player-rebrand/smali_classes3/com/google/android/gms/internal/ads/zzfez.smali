.class public final Lcom/google/android/gms/internal/ads/zzfez;
.super Lcom/google/android/gms/ads/internal/client/zzbw;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzber;


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzctr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzc:Landroid/content/Context;

.field private zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfet;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfer;

.field private final zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdxz;

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzcte;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcma;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfer;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzj:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfez;->zze:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzf:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzg:Lcom/google/android/gms/internal/ads/zzfer;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzi:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 3
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzfer;->zzq(Lcom/google/android/gms/ads/internal/overlay/zzr;)V

    return-void
.end method

.method private final declared-synchronized zzV(I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzg:Lcom/google/android/gms/internal/ads/zzfer;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzk:Lcom/google/android/gms/internal/ads/zzcte;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzbdz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdz;->zzc(Lcom/google/android/gms/internal/ads/zzbdy;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzj:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzj:J

    sub-long v2, v0, v2

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    .line 5
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzctr;->zze(JI)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfez;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zzA()Z
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzB()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzf:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfeb;->zzb()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzcam;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzD(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzE(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzF()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzG(Lcom/google/android/gms/ads/internal/client/zzga;)V
    .locals 0

    .line 0
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zzH(Lcom/google/android/gms/ads/internal/client/zzeh;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzI(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzf:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zzd(Lcom/google/android/gms/ads/internal/client/zzx;)V

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzg:Lcom/google/android/gms/internal/ads/zzfer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzo(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method public final zzK(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method final synthetic zzL()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzV(I)V

    return-void
.end method

.method final synthetic zzM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcma;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfey;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfey;-><init>(Lcom/google/android/gms/internal/ads/zzfez;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzN()Lcom/google/android/gms/internal/ads/zzfer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzg:Lcom/google/android/gms/internal/ads/zzfer;

    return-object v0
.end method

.method final synthetic zzO()Lcom/google/android/gms/internal/ads/zzdxz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzi:Lcom/google/android/gms/internal/ads/zzdxz;

    return-object v0
.end method

.method public final zzP(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzR(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzS(Lcom/google/android/gms/ads/internal/client/zzcv;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzT(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzU()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final declared-synchronized zzY(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 0

    .line 0
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzV(I)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzc()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdR(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdS()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdT(I)V
    .locals 2

    if-eqz p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x6

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfez;->zzV(I)V

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfez;->zzV(I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfez;->zzV(I)V

    return-void

    .line 4
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzV(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public final zzdo()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdp()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdq()V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzdv()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzj:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzctr;->zze(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzdw()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdx()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdy()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdz()V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 5
    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

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

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "loadAd must be called on the main UI thread."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzg:Lcom/google/android/gms/internal/ads/zzfer;

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfer;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 9
    :cond_5
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfez;->zzB()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    monitor-exit p0

    return v1

    :cond_6
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfev;

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfev;-><init>(Lcom/google/android/gms/internal/ads/zzfez;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzf:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfez;->zze:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfew;

    .line 12
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzfew;-><init>(Lcom/google/android/gms/internal/ads/zzfez;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzfeb;->zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzf()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzg()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzh()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctr;->zzc()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcte;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcte;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzk:Lcom/google/android/gms/internal/ads/zzcte;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfex;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfex;-><init>(Lcom/google/android/gms/internal/ads/zzfez;)V

    .line 4
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcte;->zzb(ILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzco;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzk()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized zzl()V
    .locals 0

    .line 0
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzm()V
    .locals 0

    .line 0
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzn()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzo(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
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

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbyb;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzbye;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzr()Ljava/lang/String;
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzs()Ljava/lang/String;
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzt()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1

    .line 0
    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzu()Ljava/lang/String;
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zze:Ljava/lang/String;
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

.method public final zzv()Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzx(Lcom/google/android/gms/internal/ads/zzbhz;)V
    .locals 0

    .line 0
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzz(Z)V
    .locals 0

    .line 0
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
