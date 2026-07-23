.class final Lcom/google/android/gms/internal/ads/zzgoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnb;
.implements Lcom/google/android/gms/internal/ads/zzgdd;


# static fields
.field static final zza:[Ljava/lang/String;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private final zzd:[Ljava/lang/String;

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-string v0, "android:establish_vpn_service"

    const-string v1, "android:establish_vpn_manager"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgao;Ljava/util/concurrent/ExecutorService;[Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzf:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzg:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzh:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzc:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzd:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzo;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgnz;-><init>(Lcom/google/android/gms/internal/ads/zzgoa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzc:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/Map;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoa;->zze()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzh:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzf:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zze:J

    sub-long/2addr v3, v5

    .line 2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, v1

    .line 2
    :goto_0
    const-string v0, "vs"

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzg:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzg:J

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "vf"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    .line 7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 4
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoa;->zze()V

    return-void
.end method

.method public final zzd(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoa;->zze()V

    return-void
.end method

.method final zze()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzh:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzf:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzf()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgny;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgny;-><init>(Lcom/google/android/gms/internal/ads/zzgoa;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzb:Landroid/content/Context;

    const-string v2, "appops"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzd:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzc:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzje$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AppOpsManager;[Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method final synthetic zzg(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zze:J

    return-void
.end method

.method final synthetic zzh()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzf:J

    return-wide v0
.end method

.method final synthetic zzi(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzg:J

    return-void
.end method

.method final synthetic zzj(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzh:Z

    return-void
.end method
