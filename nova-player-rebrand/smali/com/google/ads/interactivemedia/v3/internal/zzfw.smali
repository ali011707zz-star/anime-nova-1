.class public final Lcom/google/ads/interactivemedia/v3/internal/zzfw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzd:Landroid/content/Context;

.field private final zze:Ljava/util/concurrent/ExecutorService;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

.field private zzg:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zze:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zza:Ljava/util/List;

    .line 2
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method

.method static final synthetic zzj(Lcom/google/android/gms/tasks/Task;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzo(Lcom/google/android/gms/tasks/Task;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zzk(Lcom/google/android/gms/tasks/Task;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzo(Lcom/google/android/gms/tasks/Task;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzl(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfu;

    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfu;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zze:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zzm(Lcom/google/ads/interactivemedia/v3/internal/zzfk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zzn(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->NATIVE_ESP:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final zzo(Lcom/google/android/gms/tasks/Task;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static final zzp(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Exception with SecureSignalsAdapter "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Exception;

    .line 2
    invoke-direct {v0, p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/util/List;Ljava/lang/Integer;)Lcom/google/android/gms/tasks/Task;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "No adapters to load"

    .line 2
    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzg:Ljava/lang/Integer;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignalsAdapter;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8
    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 9
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfk;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzd:Landroid/content/Context;

    .line 11
    invoke-direct {v1, v0, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;-><init>(Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignalsAdapter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zza:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->LOAD_ADAPTER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    new-instance v2, Ljava/lang/Exception;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Exception with SecureSignalsAdapter "

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzn(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Exception;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zza:Ljava/util/List;

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfv;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zze:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfm;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfn;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zze:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzfp;

    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzfq;

    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzfr;

    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzg:Ljava/lang/Integer;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tasks/Tasks;->withTimeout(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfs;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfs;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method final synthetic zzd(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzl(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zza:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzm(Lcom/google/ads/interactivemedia/v3/internal/zzfk;)V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->INIT:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzn(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzl(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzh(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->COLLECT_SIGNALS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzn(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzi(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzm(Lcom/google/ads/interactivemedia/v3/internal/zzfk;)V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->COLLECT_SIGNALS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    .line 3
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzp(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzn(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Exception;)V

    return-void
.end method
