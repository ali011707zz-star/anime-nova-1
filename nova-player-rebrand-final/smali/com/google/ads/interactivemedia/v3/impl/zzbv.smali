.class public final Lcom/google/ads/interactivemedia/v3/impl/zzbv;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbz;


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

.field private final zzd:Ljava/util/Queue;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

.field private zzf:Z


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzd:Ljava/util/Queue;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzf:Z

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/internal/zzafx;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/impl/zzbv;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    invoke-static {p0, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/internal/zzafx;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzbu;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbu;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;)V

    const-string p2, "*"

    invoke-virtual {v0, p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    return-object v0
.end method

.method private final zzl()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzf:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zze(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    return-object v0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzdx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v3, 0x17

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received js message: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/zzby;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzby;->zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzux;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzux;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzd(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2e

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "google.ima.NativeBridge.calculateIdlessState("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/ads/interactivemedia/v3/impl/zzci;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzi(Lcom/google/ads/interactivemedia/v3/impl/zzci;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzh()V

    return-void
.end method

.method public final zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sending js message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzd:Ljava/util/Queue;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzl()V

    return-void
.end method

.method final synthetic zzk(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzcj;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Webview is not present during initialization."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zzb(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcj;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/zzcg;

    .line 5
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->omid:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzf:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zza()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcg;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    move-result-object v0

    invoke-direct {v2, p1, v3, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;-><init>(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzl()V

    return-void
.end method
