.class public final Lcom/google/ads/interactivemedia/v3/internal/zzga;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzub;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

.field private final zzd:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzet;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzet;)Lcom/google/ads/interactivemedia/v3/internal/zzga;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzfz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzfz;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzet;)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzga;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzga;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzub;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzet;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v1
.end method

.method private final zzf()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2
    :catch_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v1

    const-string v2, "3"

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzku;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlb;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 4
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->GET_SPAM_MS_PARAMETER_FROM_ADSHIELD:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final zzb(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfy;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzga;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->GET_SPAM_MS_PARAMETER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 6
    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-eq v1, p1, :cond_1

    const-string p1, "3"

    goto :goto_1

    .line 7
    :cond_1
    const-string p1, "17"

    :goto_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-object p1

    .line 2
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzf()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzdx;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 2
    :catch_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    const-string v1, "3"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ""

    .line 3
    :try_start_1
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzdx;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p3

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzku;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlb;->zzc(Landroid/view/MotionEvent;)V

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzku;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zza:Landroid/content/Context;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, p3, v0, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlb;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :goto_1
    const-string p2, "Failed to get click signal: "

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzd(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 10
    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-eq p2, p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "17"

    return-object p1
.end method

.method public final zzd(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2
    :catch_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v1

    const-string v2, "3"

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzku;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zza:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlb;->zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string v0, "Failed to get view signal: "

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-eq v0, p1, :cond_1

    return-object v2

    :cond_1
    const-string p1, "17"

    return-object p1
.end method

.method final synthetic zze()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
