.class public final Lcom/google/ads/interactivemedia/v3/internal/zzhi;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field protected static volatile zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

.field private static final zzd:Landroid/os/ConditionVariable;

.field private static volatile zze:Ljava/util/Random;


# instance fields
.field protected volatile zzb:Ljava/lang/Boolean;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zziv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzd:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zze:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzhh;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzhi;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzc()Landroid/os/ConditionVariable;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzd:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static final zzd()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zze:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zze:Ljava/util/Random;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    .line 2
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zze:Ljava/util/Random;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zze:Ljava/util/Random;

    .line 4
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzd:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzb:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    if-eqz p5, :cond_0

    .line 6
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zze(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    :cond_0
    if-eqz p6, :cond_1

    new-instance p3, Ljava/io/StringWriter;

    .line 7
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    new-instance p4, Ljava/io/PrintWriter;

    .line 8
    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p6, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 9
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzn;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzn;

    :cond_1
    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzor;

    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p4

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/zzr;

    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzor;->zza([B)Lcom/google/ads/interactivemedia/v3/internal/zzoq;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzc(I)Lcom/google/ads/interactivemedia/v3/internal/zzoq;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 13
    invoke-virtual {p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzoq;

    .line 14
    :cond_2
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zza()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method final synthetic zzb()Lcom/google/ads/interactivemedia/v3/internal/zziv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    return-object v0
.end method
