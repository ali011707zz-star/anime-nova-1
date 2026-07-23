.class public final Lcom/google/android/gms/internal/ads/zzfog;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfoe;


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:J

.field private zzc:J

.field private zzd:Z

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzfot;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Z

.field private zzo:Z

.field private final zzp:I

.field private zzq:I

.field private zzr:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzq:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzg:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzh:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzi:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfot;->zzb:Lcom/google/android/gms/internal/ads/zzfot;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzj:Lcom/google/android/gms/internal/ads/zzfot;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzk:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzm:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzp:I

    return-void
.end method


# virtual methods
.method final synthetic zzA()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:J

    return-wide v0
.end method

.method final synthetic zzB()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:J

    return-wide v0
.end method

.method final synthetic zzC()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:Z

    return v0
.end method

.method final synthetic zzD()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:I

    return v0
.end method

.method final synthetic zzE()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzF()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzG()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzH()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzI()Lcom/google/android/gms/internal/ads/zzfot;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzj:Lcom/google/android/gms/internal/ads/zzfot;

    return-object v0
.end method

.method final synthetic zzJ()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzK()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzL()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized zzM(I)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzN()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzp:I

    return v0
.end method

.method final synthetic zzO()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzq:I

    return v0
.end method

.method final synthetic zzP()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzr:I

    return v0
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzq()Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final declared-synchronized zzb()Z
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzo:Z
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

.method public final bridge synthetic zzc()Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzr()Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzs(Z)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfot;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzu(Lcom/google/android/gms/internal/ads/zzfot;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzv(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzh(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzw(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzy(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final bridge synthetic zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final zzl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzm()Lcom/google/android/gms/internal/ads/zzfoh;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzn:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzo:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzq()Lcom/google/android/gms/internal/ads/zzfog;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzr()Lcom/google/android/gms/internal/ads/zzfog;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfoh;-><init>(Lcom/google/android/gms/internal/ads/zzfog;[B)V
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

.method public final bridge synthetic zzp(I)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzM(I)Lcom/google/android/gms/internal/ads/zzfog;

    return-object p0
.end method

.method public final declared-synchronized zzq()Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/ads/internal/util/zzz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzz;->zzm(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zze:I

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    .line 2
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzr:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzb:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzr()Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzs(Z)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzu(Lcom/google/android/gms/internal/ads/zzfot;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzj:Lcom/google/android/gms/internal/ads/zzfot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzv(Lcom/google/android/gms/internal/ads/zzfjb;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfir;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzab:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzw(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zze:Landroid/os/IBinder;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzf:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zzf()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :cond_2
    :goto_1
    monitor-exit p0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzh:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzy(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkf:Lcom/google/android/gms/internal/ads/zzbgv;

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

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzl:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyp;->zze(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqq;->zzc(C)Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrr;->zza(Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgrr;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgrr;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzk:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkf:Lcom/google/android/gms/internal/ads/zzbgv;

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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfog;->zzm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
