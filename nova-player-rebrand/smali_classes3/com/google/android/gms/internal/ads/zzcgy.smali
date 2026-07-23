.class public final Lcom/google/android/gms/internal/ads/zzcgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhb;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhb;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Z

.field private zzf:Ljava/io/InputStream;

.field private zzg:Z

.field private zzh:Landroid/net/Uri;

.field private volatile zzi:Lcom/google/android/gms/internal/ads/zzbfp;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/ads/zzhf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhb;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhz;Lcom/google/android/gms/internal/ads/zzcgx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzc:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzj:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzk:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zze:Z

    return-void
.end method

.method private final zzf()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zze:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzfm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzj:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzfn:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzk:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzf:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result p1

    return p1

    .line 1
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzg:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzg:Z

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzh:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzl:Lcom/google/android/gms/internal/ads/zzhf;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfp;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzfj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    .line 6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbfp;->zzh:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbfp;->zzi:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzd:I

    .line 8
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzbfp;->zzj:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    .line 9
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbfp;->zzg:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzfl:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzfk:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Long;

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzz()Lcom/google/android/gms/internal/ads/zzbga;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfp;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbgb;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgb;->zzc()Z

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgb;->zzd()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzj:Z

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgb;->zzf()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzk:Z

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgb;->zze()J

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzf()Z

    move-result v3

    if-nez v3, :cond_1

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgb;->zzb()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzf:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 23
    :catch_0
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 25
    :catch_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 27
    throw v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    .line 28
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbfp;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfp;->zzi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzd:I

    .line 30
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbfp;->zzj:I

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/internal/ads/zzbfl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzc(Lcom/google/android/gms/internal/ads/zzbfp;)Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zza()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzj:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zze()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzk:Z

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzf()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzb()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzf:Ljava/io/InputStream;

    const-wide/16 v0, -0x1

    return-wide v0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhf;->zzb()Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzi:Lcom/google/android/gms/internal/ads/zzbfp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfp;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhe;->zze()Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzl:Lcom/google/android/gms/internal/ads/zzhf;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzl:Lcom/google/android/gms/internal/ads/zzhf;

    .line 34
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb(Lcom/google/android/gms/internal/ads/zzhf;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzh:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzg:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzg:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzh:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzf:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzf:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgy;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzd()V

    return-void

    .line 1
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzj()Ljava/util/Map;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhb$-CC;->$default$zzj(Lcom/google/android/gms/internal/ads/zzhb;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
