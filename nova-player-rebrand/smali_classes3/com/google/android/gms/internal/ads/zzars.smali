.class public final Lcom/google/android/gms/internal/ads/zzars;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzarr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzari;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzarp;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzarr;Lcom/google/android/gms/internal/ads/zzari;Lcom/google/android/gms/internal/ads/zzarp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzars;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzars;->zza:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzars;->zzb:Lcom/google/android/gms/internal/ads/zzarr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzars;->zzc:Lcom/google/android/gms/internal/ads/zzari;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzars;->zze:Lcom/google/android/gms/internal/ads/zzarp;

    return-void
.end method

.method private zzb()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzars;->zza:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzary;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzary;->zze(I)V

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "network-queue-take"

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzl()Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzb()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzars;->zzb:Lcom/google/android/gms/internal/ads/zzarr;

    .line 7
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzarr;->zza(Lcom/google/android/gms/internal/ads/zzary;)Lcom/google/android/gms/internal/ads/zzaru;

    move-result-object v2

    const-string v3, "network-http-complete"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    .line 9
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzaru;->zze:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzq()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "not-modified"

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzary;->zzd(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzw()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzary;->zzr(Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzase;

    move-result-object v2

    const-string v3, "network-parse-complete"

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzarh;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzars;->zzc:Lcom/google/android/gms/internal/ads/zzari;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzi()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzari;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarh;)V

    const-string v3, "network-cache-written"

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzp()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzars;->zze:Lcom/google/android/gms/internal/ads/zzarp;

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzarp;->zza(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzary;->zzv(Lcom/google/android/gms/internal/ads/zzase;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzash; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 26
    :goto_0
    :try_start_1
    const-string v3, "Unhandled exception %s"

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzask;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzash;

    .line 20
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzash;-><init>(Ljava/lang/Throwable;)V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzars;->zze:Lcom/google/android/gms/internal/ads/zzarp;

    .line 22
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzarp;->zzb(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzash;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzw()V

    goto :goto_2

    .line 24
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzars;->zze:Lcom/google/android/gms/internal/ads/zzarp;

    .line 25
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzarp;->zzb(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzash;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzary;->zze(I)V

    return-void

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzary;->zze(I)V

    .line 28
    throw v2
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzars;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzars;->zzd:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzask;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzars;->zzd:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
