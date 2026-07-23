.class public final Lcom/google/android/gms/internal/ads/zzequ;
.super Lcom/google/android/gms/ads/internal/client/zzbw;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdeb;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfff;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzerp;

.field private zze:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjj;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdxz;

.field private zzi:Lcom/google/android/gms/internal/ads/zzctx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzerp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zza:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzequ;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfff;->zzg()Lcom/google/android/gms/internal/ads/zzfjj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzh:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 3
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzfff;->zzi(Lcom/google/android/gms/internal/ads/zzdeb;)V

    return-void
.end method

.method private final declared-synchronized zzO(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zze(Z)Lcom/google/android/gms/internal/ads/zzfjj;
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

.method private final declared-synchronized zzV(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadAd must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v1, :cond_2

    .line 6
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 8
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzerp;->zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    :try_start_1
    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkh;->zzb(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzc:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeqt;

    .line 5
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeqt;-><init>(Lcom/google/android/gms/internal/ads/zzequ;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfff;->zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesd;Lcom/google/android/gms/internal/ads/zzese;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final zzW()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zzf:Lcom/google/android/gms/internal/ads/zzbio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 4
    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzmG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final declared-synchronized zzA()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzs()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzB()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzb()Z

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

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctx;->zzc()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzG(Lcom/google/android/gms/ads/internal/client/zzga;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setVideoOptions must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzi(Lcom/google/android/gms/ads/internal/client/zzga;)Lcom/google/android/gms/internal/ads/zzfjj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzH(Lcom/google/android/gms/ads/internal/client/zzeh;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzI(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzK(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzL()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final synthetic zzM()Lcom/google/android/gms/internal/ads/zzctx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    return-object v0
.end method

.method final synthetic zzN(Lcom/google/android/gms/internal/ads/zzctx;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzf()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzh:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Error in making CSI ping for reporting paid event callback"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzerp;->zzo(Lcom/google/android/gms/ads/internal/client/zzdt;)V

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

.method public final declared-synchronized zzT(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzx(J)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzczz;->zzb(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzU()J
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzw()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzY(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzZ(Lcom/google/android/gms/ads/internal/client/zzcs;)Lcom/google/android/gms/internal/ads/zzfjj;
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

.method public final declared-synchronized zza()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzf()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzC()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctx;->zzf()Lcom/google/android/gms/internal/ads/zzfis;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfjq;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 6
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzequ;->zzO(Lcom/google/android/gms/ads/internal/client/zzr;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzV(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9
    :catch_0
    :try_start_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Failed to refresh the banner ad."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzj()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfff;->zzd()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzc()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmC:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmH:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzerp;->zzl(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzequ;->zzO(Lcom/google/android/gms/ads/internal/client/zzr;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzequ;->zzV(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzf()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zzg:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmD:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmH:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "pause must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzl()Lcom/google/android/gms/internal/ads/zzdce;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdce;->zza(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzg()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zzh:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmB:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmH:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "resume must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzl()Lcom/google/android/gms/internal/ads/zzdce;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdce;->zzb(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzerp;->zzn(Lcom/google/android/gms/ads/internal/client/zzco;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    .line 1
    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    return-void
.end method

.method public final zzk()Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string v0, "getAdMetadata must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzl()V
    .locals 0

    .line 0
    return-void
.end method

.method public final declared-synchronized zzm()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctx;->zzi()V
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

.method public final declared-synchronized zzn()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctx;->zze()Lcom/google/android/gms/internal/ads/zzfis;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjq;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzf()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzo(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfff;->zzd()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctx;->zzb(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
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
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzs()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->zze()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzt()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzhG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzi:Lcom/google/android/gms/internal/ads/zzctx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzu()Ljava/lang/String;
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzc:Ljava/lang/String;
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

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzerp;->zzk()Lcom/google/android/gms/ads/internal/client/zzco;

    move-result-object v0

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzd:Lcom/google/android/gms/internal/ads/zzerp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzerp;->zzi()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzx(Lcom/google/android/gms/internal/ads/zzbhz;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfff;->zze(Lcom/google/android/gms/internal/ads/zzbhz;)V
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

.method public final zzy(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzb:Lcom/google/android/gms/internal/ads/zzfff;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfff;->zzf(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final declared-synchronized zzz(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzequ;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzequ;->zzf:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzk(Z)Lcom/google/android/gms/internal/ads/zzfjj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
