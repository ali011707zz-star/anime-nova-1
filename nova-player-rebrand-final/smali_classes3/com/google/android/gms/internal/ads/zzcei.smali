.class public abstract Lcom/google/android/gms/internal/ads/zzcei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgzy;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgzy;

.field public static final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzgzz;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzgzy;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzgzy;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v1, "Default"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfym;->zza()Lcom/google/android/gms/internal/ads/zzfyk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcef;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto/16 :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmL:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzmM:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcef;

    .line 18
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0xa

    .line 19
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zze(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    new-instance v11, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v11}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v12, Lcom/google/android/gms/internal/ads/zzcef;

    .line 12
    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    const v7, 0x7fffffff

    const-wide/16 v8, 0xa

    .line 13
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v0, v5

    .line 4
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Ljava/util/concurrent/Executor;[B)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 24
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v1, "Loader"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfym;->zza()Lcom/google/android/gms/internal/ads/zzfyk;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcef;

    .line 26
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 27
    invoke-interface {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfyk;->zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_2
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcef;

    .line 29
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-wide/16 v7, 0xa

    .line 30
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    move-object v0, v4

    .line 27
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    .line 32
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Ljava/util/concurrent/Executor;[B)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 33
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v1, "Activeview"

    if-eqz v0, :cond_3

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfym;->zza()Lcom/google/android/gms/internal/ads/zzfyk;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcef;

    .line 35
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfyk;->zzc(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_2

    .line 48
    :cond_3
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcef;

    .line 38
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    .line 39
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    move-object v0, v4

    .line 36
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    .line 41
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Ljava/util/concurrent/Executor;[B)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzc:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcee;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcef;

    const-string v3, "Schedule"

    .line 43
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 44
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcee;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhaf;->zzc(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzgzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zze:Lcom/google/android/gms/internal/ads/zzgzz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzceg;

    .line 46
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzceg;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    .line 47
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Ljava/util/concurrent/Executor;[B)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzf:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    .line 48
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Ljava/util/concurrent/Executor;[B)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    return-void
.end method
