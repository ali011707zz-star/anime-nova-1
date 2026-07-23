.class public final Lcom/google/android/gms/ads/internal/util/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzg;


# instance fields
.field private zzA:Ljava/lang/String;

.field private zzB:I

.field private zzC:I

.field private zzD:J

.field private zzE:Z

.field private final zza:Ljava/lang/Object;

.field private zzb:Z

.field private final zzc:Ljava/util/List;

.field private zzd:Lcom/google/common/util/concurrent/ListenableFuture;

.field private zze:Lcom/google/android/gms/internal/ads/zzbee;

.field private zzf:Landroid/content/SharedPreferences;

.field private zzg:Landroid/content/SharedPreferences$Editor;

.field private zzh:Z

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Z

.field private zzl:Ljava/lang/String;

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzcdp;

.field private zzo:J

.field private zzp:J

.field private zzq:I

.field private zzr:I

.field private zzs:Ljava/util/Set;

.field private zzt:Lorg/json/JSONObject;

.field private zzu:Z

.field private zzv:Z

.field private zzw:Ljava/lang/String;

.field private zzx:Ljava/lang/String;

.field private zzy:Z

.field private zzz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzc:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zze:Lcom/google/android/gms/internal/ads/zzbee;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    const-string v2, "-1"

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzl:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzm:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdp;

    .line 2
    const-string v4, ""

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    iput-wide v5, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzo:J

    iput-wide v5, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzp:J

    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzq:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzr:I

    .line 3
    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v7, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzs:Ljava/util/Set;

    .line 4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzu:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzv:Z

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzw:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzx:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzy:Z

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzz:Ljava/lang/String;

    const-string v0, "{}"

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzA:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzB:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzC:I

    iput-wide v5, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzD:J

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzE:Z

    return-void
.end method

.method private final zzT()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 2
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    .line 3
    :goto_0
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Interrupted while waiting for preferences loaded."

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final zzU()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzh;-><init>(Lcom/google/android/gms/ads/internal/util/zzj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zzA(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v1, "-1"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_TCString"

    .line 3
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    const-string v2, "IABTCF_TCString"

    .line 4
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzB()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzC(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string p1, "gad_has_consent_for_cookies"

    .line 3
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    const-string v2, "gad_has_consent_for_cookies"

    .line 2
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzD()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzm:I

    return v0
.end method

.method public final zzE(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzC:I

    if-ne v1, p1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzC:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "sd_app_measure_npa"

    .line 3
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzF()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzD:J

    .line 2
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzG(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzD:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzD:J

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "sd_app_measure_npa_ts"

    .line 3
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzH()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzx:Ljava/lang/String;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzI(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkq:Lcom/google/android/gms/internal/ads/zzbgv;

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

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzx:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzx:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    const-string v2, "inspector_info"

    .line 6
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 9
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzJ()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzy:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzK(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkF:Lcom/google/android/gms/internal/ads/zzbgv;

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

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzy:Z

    if-ne v1, p1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzy:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    const-string v2, "linked_device"

    .line 5
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 8
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzL()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzz:Ljava/lang/String;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzM(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkF:Lcom/google/android/gms/internal/ads/zzbgv;

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

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzz:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    const-string v2, "linked_ad_unit"

    .line 6
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 9
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzN()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzA:Ljava/lang/String;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzO(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzkT:Lcom/google/android/gms/internal/ads/zzbgv;

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

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzA:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzA:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    const-string v2, "inspector_ui_storage"

    .line 6
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 9
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzP()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzE:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzQ(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzE:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzE:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    const-string v2, "is_install_referrer_reported"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzR()Lcom/google/android/gms/internal/ads/zzbee;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzb:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zze()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 2
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbiv;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_4

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zze:Lcom/google/android/gms/internal/ads/zzbee;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbee;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbee;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zze:Lcom/google/android/gms/internal/ads/zzbee;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zze:Lcom/google/android/gms/internal/ads/zzbee;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbee;->zza()V

    const-string v1, "start fetching content..."

    .line 7
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zze:Lcom/google/android/gms/internal/ads/zzbee;

    .line 9
    monitor-exit v0

    return-object v1

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic zzS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "admob"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "use_https"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzh:Z

    .line 4
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "content_url_opted_out"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzu:Z

    .line 5
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzu:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "content_url_hashes"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzi:Ljava/lang/String;

    .line 6
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzi:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "gad_idless"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    .line 7
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_opted_out"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzv:Z

    .line 8
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzv:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_hashes"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzj:Ljava/lang/String;

    .line 9
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzj:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "version_code"

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzr:I

    .line 10
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzr:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbiw;->zzg:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcdp;

    const-string p2, ""

    const-wide/16 v1, 0x0

    .line 18
    invoke-direct {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_json"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdp;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string v1, "app_settings_last_update_ms"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdp;->zzb()J

    move-result-wide v2

    .line 16
    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcdp;

    .line 17
    invoke-direct {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Ljava/lang/String;J)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "app_last_background_time_ms"

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzo:J

    .line 19
    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzo:J

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "request_in_session_count"

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzq:I

    .line 20
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzq:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "first_ad_req_time_ms"

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzp:J

    .line 21
    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzp:J

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "never_pool_slots"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzs:Ljava/util/Set;

    .line 22
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzs:Ljava/util/Set;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "display_cutout"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzw:Ljava/lang/String;

    .line 23
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzw:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "app_measurement_npa"

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzB:I

    .line 24
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzB:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "sd_app_measure_npa"

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzC:I

    .line 25
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzC:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "sd_app_measure_npa_ts"

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzD:J

    .line 26
    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzD:J

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "inspector_info"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzx:Ljava/lang/String;

    .line 27
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzx:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "linked_device"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzy:Z

    .line 28
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzy:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "linked_ad_unit"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzz:Ljava/lang/String;

    .line 29
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzz:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "inspector_ui_storage"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzA:Ljava/lang/String;

    .line 30
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzA:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "IABTCF_TCString"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzl:Ljava/lang/String;

    .line 31
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzl:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "gad_has_consent_for_cookies"

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzm:I

    .line 32
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzm:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string p2, "is_install_referrer_reported"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzE:Z

    .line 33
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzE:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string v1, "native_advanced_settings"

    const-string v2, "{}"

    .line 35
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 39
    :try_start_3
    const-string p2, "Could not convert native advanced settings to json object"

    .line 36
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 37
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 39
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 17
    const-string p2, "AdSharedPreferenceManagerImpl.initializeOnBackgroundThread"

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "AdSharedPreferenceManagerImpl.initializeOnBackgroundThread, errorMessage = "

    .line 42
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzi;

    const-string v2, "admob"

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/ads/internal/util/zzi;-><init>(Lcom/google/android/gms/ads/internal/util/zzj;Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzb:Z

    return-void

    .line 2
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzb(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzu:Z

    if-ne v1, p1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzu:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_opted_out"

    .line 3
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzu:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzv:Z

    if-ne v1, p1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzv:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_opted_out"

    .line 3
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzv:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzr:I

    if-ne v1, p1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzr:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "version_code"

    .line 3
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzr:I

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdp;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdp;

    .line 6
    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_1

    const-string v4, "app_settings_json"

    .line 7
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    const-string v3, "app_settings_last_update_ms"

    .line 8
    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 10
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzc:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 12
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 13
    :cond_2
    monitor-exit v0

    return-void

    .line 3
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdp;->zza(J)V

    .line 5
    monitor-exit v0

    return-void

    .line 13
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzcdp;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzne:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdp;->zzj()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzcdp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzk(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzo:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzo:J

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "app_last_background_time_ms"

    .line 3
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzm()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzo:J

    .line 2
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzn(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzq:I

    if-ne v1, p1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzq:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "request_in_session_count"

    .line 3
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzo()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzq:I

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzp(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzp:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzp:J

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "first_ad_req_time_ms"

    .line 3
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzq()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzp:J

    .line 2
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 6
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 8
    monitor-exit v0

    return-void

    :cond_1
    const-string v6, "template_id"

    .line 7
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_2

    const-string v2, "uses_media_view"

    .line 9
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 10
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    .line 11
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    .line 12
    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    const-string p2, "Could not update native advanced settings"

    .line 16
    sget p3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_5

    const-string p2, "native_advanced_settings"

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 21
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzs()Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzt()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzt:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "native_advanced_settings"

    .line 3
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzu()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzw:Ljava/lang/String;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzv(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzw:Ljava/lang/String;

    .line 2
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "display_cutout"

    .line 4
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 7
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzw(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    if-ne p1, v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "gad_idless"

    .line 3
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzx()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzbd:Lcom/google/android/gms/internal/ads/zzbgv;

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

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzy(Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzlU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_0

    const-string v4, "is_topics_ad_personalization_allowed"

    .line 4
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    const-string v3, "topics_consent_expiry_time_ms"

    .line 5
    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzg:Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzU()V

    .line 8
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzz()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v3, "topics_consent_expiry_time_ms"

    const-wide/16 v4, 0x0

    .line 2
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 4
    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzf:Landroid/content/SharedPreferences;

    const-string v3, "is_topics_ad_personalization_allowed"

    .line 5
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzj;->zzk:Z

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
