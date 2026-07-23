.class public final Lcom/google/ads/interactivemedia/v3/internal/zzei;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0

    :cond_0
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzei;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object p1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzeh;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzeh;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0

    .line 7
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
