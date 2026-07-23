.class public final Lcom/google/ads/interactivemedia/v3/internal/zzho;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/ads/interactivemedia/v3/internal/zzhj;


# static fields
.field private static final zzb:J


# instance fields
.field final zza:Ljava/util/concurrent/CountDownLatch;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzd:Landroid/content/Context;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zznf;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

.field private final zzh:Z

.field private final zzi:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzb:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zza:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzi:Ljava/util/List;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzd()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzh:Z

    .line 7
    invoke-static {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/ads/interactivemedia/v3/internal/zznf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zze:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 8
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzo()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 3
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    aget-object v3, v3, v5

    check-cast v3, Landroid/view/MotionEvent;

    invoke-interface {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzg(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzh(III)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzp(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzo()V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzr(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private final zzq()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzr(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzhp;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzhp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzk;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhr;->zzt(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzhp;)Lcom/google/ads/interactivemedia/v3/internal/zzhr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static final zzr(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    .line 2
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzn()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    :goto_0
    move v4, v6

    goto :goto_1

    .line 16
    :cond_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zze:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzhl;

    .line 3
    invoke-direct {v8, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzho;)V

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/zzom;

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    .line 4
    invoke-static {v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/zznu;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zznf;)I

    move-result v4

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v7

    .line 6
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v9, v10, v4, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzom;-><init>(Landroid/content/Context;ILcom/google/ads/interactivemedia/v3/internal/zznv;Z)V

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzom;->zzd(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zza()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-eq v4, v6, :cond_2

    .line 17
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzq()Z

    .line 18
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzn()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzhm;

    invoke-direct {v4, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzho;)V

    .line 19
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 9
    :cond_2
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    .line 10
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzr(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf:Ljava/util/concurrent/Executor;

    .line 11
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzc()Z

    move-result v7

    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzh:Z

    .line 12
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zza(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzc()Z

    move-result v4

    if-nez v4, :cond_4

    .line 15
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zza()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzq()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 8
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    .line 20
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zza()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzq()Z

    :cond_3
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zze:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const/16 v0, 0x7ef

    .line 23
    invoke-virtual {v4, v0, v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_4
    :goto_3
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 23
    :goto_4
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    throw v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzhj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzhn;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzho;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzac;->zza()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzb:J

    const/4 v3, 0x1

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzhc;->zza(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    const/16 p1, 0x11

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzp(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    .line 2
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzd:Landroid/content/Context;

    .line 3
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzr(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzc()Z

    move-result v2

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzh:Z

    .line 5
    invoke-static {v3, v4, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzb(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zze:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v0, 0x7eb

    .line 8
    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zze()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zza:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zza:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    .line 4
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzf()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final zzg(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzo()V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzg(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzi:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzh(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzo()V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzh(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzi:Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzo()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzr(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zzj(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzj(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzk(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzk(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzac;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzb:J

    sub-long/2addr v1, v3

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzac;->zzc()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzp(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzp(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzn()Lcom/google/ads/interactivemedia/v3/internal/zznf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zze:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    return-object v0
.end method
