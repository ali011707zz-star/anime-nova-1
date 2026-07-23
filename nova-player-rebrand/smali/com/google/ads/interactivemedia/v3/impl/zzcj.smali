.class public final Lcom/google/ads/interactivemedia/v3/impl/zzcj;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field private final zzb:Landroid/os/Handler;

.field private zzc:Lcom/google/ads/interactivemedia/v3/impl/zzby;

.field private zzd:Lcom/google/ads/interactivemedia/v3/internal/zzey;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzdx;

.field private final zzg:Ljava/util/Set;

.field private zzh:Z


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdx;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzg:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzh:Z

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzb:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzey;

    .line 3
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzey;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzey;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/internal/zzafx;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/impl/zzcj;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafx;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzgb;

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzgb;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-static {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzei;->zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    move-result-object v4

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/zzcc;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzuj;Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V

    .line 6
    invoke-interface {p3, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/impl/zzbw;

    invoke-direct {p0, v0, v3, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbw;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;)V

    .line 7
    invoke-static {v4, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zztp;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private final zzp(Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "WebView not available at evaluateJavascript"

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/zzcg;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zza()Landroid/webkit/WebView;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-interface {p3, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzdx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzcf;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcf;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzb:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final zze(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzca;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzca;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzb:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final zzf(Lcom/google/ads/interactivemedia/v3/impl/zzby;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzby;

    return-void
.end method

.method protected final zzg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Received Javascript msg: "

    const-string v1, ", Message Type: "

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzey;

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0x34

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v3, "4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_1
    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zzb(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 1
    :cond_4
    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    move-result-object v2

    .line 3
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzby;

    if-nez p1, :cond_5

    const-string p1, "Received JS Message without a listener."

    .line 6
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_5
    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzby;->zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void

    .line 4
    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid internal message. Message could not be be parsed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x68

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid internal message. Make sure the Google IMA SDK library is up to date. Message: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_6
    const-string p1, "Received JS Message after JavaScriptWebView destroyed"

    .line 8
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzcb;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzcb;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzb:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzi(Lcom/google/ads/interactivemedia/v3/impl/zzci;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzh:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzci;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic zzj(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzcd;

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzcd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzce;

    invoke-direct {v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzce;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzuj;)V

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzp(Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method final synthetic zzk(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzey;->zzc(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sending Javascript msg: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; URL: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzp(Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    return-void

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Attempted to send bridge message after cleanup: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/zzcg;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zza()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzby;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzey;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzg:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method final synthetic zzm(Landroid/content/Context;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 3
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 5
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 11
    invoke-virtual {v1, p2, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    const-string v1, "WEB_MESSAGE_LISTENER"

    .line 12
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->baseUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "%s://%s"

    .line 13
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v0

    aput-object v5, v7, v2

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string v4, "%s:%s"

    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbx;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbx;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;)V

    const-string v1, "androidWebViewCompatSender"

    .line 17
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;->zzj(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v2

    .line 18
    invoke-static {p2, v1, v2, v0}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    const-string v0, "4"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 42
    :goto_1
    const-string v1, "Failed to add web message listener to the WebView, falling back to use AFMA."

    .line 19
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_1
    const-string v0, "0"

    :goto_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 20
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzch;

    invoke-direct {v2, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzch;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Lcom/google/ads/interactivemedia/v3/internal/zzafx;)V

    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 21
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zza(Landroid/content/Context;Landroid/webkit/WebView;)Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->baseUri()Landroid/net/Uri;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sdk_version"

    const-string v3, "a.3.38.0"

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->language()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hl"

    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "omv"

    const-string v3, "1.5.2-google_20241009"

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->packageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app"

    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mt"

    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->testingConfiguration()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->testingConfiguration()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p3

    .line 29
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    .line 30
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;-><init>()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzpc;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpc;-><init>()V

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzvq;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzpb;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpb;-><init>()V

    .line 32
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpb;)Lcom/google/ads/interactivemedia/v3/internal/zzuy;

    .line 33
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuy;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzux;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzd(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tcnfp"

    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 37
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    .line 39
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    :try_start_1
    invoke-static {v2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzph;->zzb(Ljava/lang/Appendable;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "deid="

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 43
    invoke-virtual {v1, p3}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/AssertionError;

    .line 42
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 44
    :cond_2
    :goto_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 45
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzay;

    .line 46
    invoke-direct {p3, p2, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzay;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;)V

    .line 47
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method final synthetic zzn()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzh:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzg:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/zzci;

    .line 3
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/impl/zzci;->zza()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic zzo(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzg:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/zzci;

    .line 3
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzci;->zzb(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
