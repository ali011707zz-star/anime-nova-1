.class public final Lcom/google/android/gms/ads/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/ads/zzazc;


# static fields
.field private static final zzc:J


# instance fields
.field protected zza:Z

.field final zzb:Ljava/util/concurrent/CountDownLatch;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfvh;

.field private zzk:Landroid/content/Context;

.field private final zzl:Landroid/content/Context;

.field private zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzo:Z

.field private zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/ads/internal/zzk;->zzc:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzl:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzi:Ljava/util/concurrent/Executor;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzde:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzo:Z

    .line 8
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfvh;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lcom/google/android/gms/internal/ads/zzfvh;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzdb:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzg:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzdf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzh:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzdd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    goto :goto_0

    .line 23
    :cond_0
    iput v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    .line 14
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzeo:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzm()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zza:Z

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzeh:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 21
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzz()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->run()V

    return-void
.end method

.method private final zzq()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4
    :try_start_0
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 6
    aget-object v2, v2, v4

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzazc;->zzd(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 5
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzazc;->zze(III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzr(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavi;->zze()Lcom/google/android/gms/internal/ads/zzavh;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzavh;->zzb(Z)Lcom/google/android/gms/internal/ads/zzavh;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavh;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavi;

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzazg;->zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;)Lcom/google/android/gms/internal/ads/zzazg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final zzs()Lcom/google/android/gms/internal/ads/zzazc;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazc;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazc;

    return-object v0
.end method

.method private static final zzt(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static final zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZ)Lcom/google/android/gms/internal/ads/zzayz;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavi;->zze()Lcom/google/android/gms/internal/ads/zzavh;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzavh;->zzb(Z)Lcom/google/android/gms/internal/ads/zzavh;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavi;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzayz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Z)Lcom/google/android/gms/internal/ads/zzayz;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzeo:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzm()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zza:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 4
    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzbD:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzp()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzk;->zzr(Z)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzi:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Lcom/google/android/gms/ads/internal/zzk;Z)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v7, p0, Lcom/google/android/gms/ads/internal/zzk;->zzo:Z

    .line 10
    invoke-static {v5, v6, v3, v7}, Lcom/google/android/gms/ads/internal/zzk;->zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZ)Lcom/google/android/gms/internal/ads/zzayz;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-boolean v6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzh:Z

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayz;->zzb()Z

    move-result v5

    if-nez v5, :cond_3

    iput v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    .line 13
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzk;->zzr(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 18
    :try_start_2
    iput v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    .line 14
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzk;->zzr(Z)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lcom/google/android/gms/internal/ads/zzfvh;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const/16 v1, 0x7ef

    .line 16
    invoke-virtual {v3, v1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void

    .line 13
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 18
    throw v1
.end method

.method public final zza()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Interrupted during GADSignals creation."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zza()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()V

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    const-string v0, "2"

    return-object v0

    :cond_0
    const-string v0, "1"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()V

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zzd(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze(III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()V

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzazc;->zze(III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzd:Ljava/util/List;

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

.method public final zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzme:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzq()V

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzk;->zzt(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzazc;->zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzk;->zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zzh(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final zzi([Ljava/lang/StackTraceElement;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzdC:Lcom/google/android/gms/internal/ads/zzbgv;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzb:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zzi([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zzi([Ljava/lang/StackTraceElement;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public final zzj(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzk;->zza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzme:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 8
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzazc;->zzj(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzk;->zzs()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzme:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 13
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzazc;->zzj(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 8
    :catch_0
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public final zzk(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzj;-><init>(Lcom/google/android/gms/ads/internal/zzk;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzi:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzdv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

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
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    sget-wide v1, Lcom/google/android/gms/ads/internal/zzk;->zzc:J

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayv;->zza(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    const/16 p1, 0x11

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzm()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzh;-><init>(Lcom/google/android/gms/ads/internal/zzk;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lcom/google/android/gms/internal/ads/zzfvh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfwy;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzk:Landroid/content/Context;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfwe;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfvh;)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbch;Lcom/google/android/gms/internal/ads/zzfwf;Z)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfwy;->zzd(I)Z

    move-result v0

    return v0
.end method

.method final synthetic zzn(Z)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzl:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzn:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzo:Z

    .line 2
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/gms/ads/internal/zzk;->zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZ)Lcom/google/android/gms/internal/ads/zzayz;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayz;->zzm()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lcom/google/android/gms/internal/ads/zzfvh;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0x7eb

    .line 5
    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final synthetic zzo()Lcom/google/android/gms/internal/ads/zzfvh;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzj:Lcom/google/android/gms/internal/ads/zzfvh;

    return-object v0
.end method

.method protected final zzp()I
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzg:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzp:I

    return v0
.end method
