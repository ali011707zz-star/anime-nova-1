.class final Lcom/google/android/gms/internal/ads/zzgld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgky;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgct;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgct;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgct;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgct;

.field private final zze:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzg:Ljava/io/File;

.field private final zzh:Ljava/util/concurrent/ExecutorService;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzgoe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgct;Lcom/google/android/gms/internal/ads/zzgct;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzgct;Lcom/google/android/gms/internal/ads/zzgct;Lcom/google/android/gms/internal/ads/zzika;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzc:Lcom/google/android/gms/internal/ads/zzgct;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgld;->zze:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzg:Ljava/io/File;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzh:Ljava/util/concurrent/ExecutorService;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    return-void
.end method

.method private final zzj([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgct;->zzc(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3bc9

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzgdu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgct;->zzc(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3bc7

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzglc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzglc;-><init>(Lcom/google/android/gms/internal/ads/zzgld;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzh:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bc6

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgct;->zzc(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3bcb

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgld;->zzj([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzl([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzglb;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzglb;-><init>(Lcom/google/android/gms/internal/ads/zzgld;Lcom/google/android/gms/internal/ads/zzgdu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgdu;[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgld;->zzj([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgla;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgla;-><init>(Lcom/google/android/gms/internal/ads/zzgld;Lcom/google/android/gms/internal/ads/zzgdu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 2
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method

.method public final zze()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgld;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bd2

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method final synthetic zzf()Z
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgld;->zze:Lcom/google/android/gms/internal/ads/zzika;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfws;->zze(Ljava/io/File;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 11
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(Ljava/io/File;)V

    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzc:Lcom/google/android/gms/internal/ads/zzgct;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(Ljava/io/File;)V

    .line 18
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(Ljava/io/File;)V

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    return v0

    :goto_3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bd1

    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzd(ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    .line 3
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7

    :goto_5
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bd0

    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzd(ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    goto :goto_4

    .line 25
    :goto_6
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzi:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bcf

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzd(ILjava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    goto :goto_4

    :goto_7
    return v3

    .line 5
    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzf:Lcom/google/android/gms/internal/ads/zzika;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Lcom/google/android/gms/internal/ads/zzgct;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 25
    throw v0
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzgdu;)Lcom/google/android/gms/internal/ads/zzfwq;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zzg()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zze:Lcom/google/android/gms/internal/ads/zzika;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzc:Lcom/google/android/gms/internal/ads/zzgct;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzg:Ljava/io/File;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwq;-><init>(Lcom/google/android/gms/internal/ads/zzbcp;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgdu;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgld;->zzk(Lcom/google/android/gms/internal/ads/zzgdu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgld;->zzk(Lcom/google/android/gms/internal/ads/zzgdu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
