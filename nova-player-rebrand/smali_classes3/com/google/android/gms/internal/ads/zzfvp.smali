.class final Lcom/google/android/gms/internal/ads/zzfvp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzfwj;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbch;

.field private final zze:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final zzf:Landroid/os/HandlerThread;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfvh;

.field private final zzh:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfvh;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzd:Lcom/google/android/gms/internal/ads/zzbch;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzg:Lcom/google/android/gms/internal/ads/zzfvh;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzf:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwj;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v4, p0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfwj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zzfvp;->zza:Lcom/google/android/gms/internal/ads/zzfwj;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, v3, Lcom/google/android/gms/internal/ads/zzfvp;->zze:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zzd(IJLjava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzg:Lcom/google/android/gms/internal/ads/zzfvh;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 2
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzc()Lcom/google/android/gms/internal/ads/zzfwo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzd:Lcom/google/android/gms/internal/ads/zzbch;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzc:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>(ILcom/google/android/gms/internal/ads/zzbch;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfwo;->zzg(Lcom/google/android/gms/internal/ads/zzfwt;)Lcom/google/android/gms/internal/ads/zzfwv;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    const/16 v2, 0x1393

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(IJLjava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zze:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzb()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzf:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    const/16 p1, 0x7da

    .line 7
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(IJLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzf:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 10
    throw p1

    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zze:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwv;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfwv;-><init>([BI)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zze:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwv;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfwv;-><init>([BI)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfwv;
    .locals 4

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zze:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfwv;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x7d9

    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    .line 2
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(IJLjava/lang/Exception;)V

    move-object v0, p1

    :goto_0
    const/16 v1, 0xbbc

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zzh:J

    .line 3
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(IJLjava/lang/Exception;)V

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzg(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzg(I)V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwv;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfwv;-><init>([BI)V

    :cond_2
    return-object v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zza:Lcom/google/android/gms/internal/ads/zzfwj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_1
    return-void
.end method

.method protected final zzc()Lcom/google/android/gms/internal/ads/zzfwo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zza:Lcom/google/android/gms/internal/ads/zzfwj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwj;->zzp()Lcom/google/android/gms/internal/ads/zzfwo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
