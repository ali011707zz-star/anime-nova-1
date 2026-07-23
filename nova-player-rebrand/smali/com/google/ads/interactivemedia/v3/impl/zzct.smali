.class final Lcom/google/ads/interactivemedia/v3/impl/zzct;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzcr;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzub;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzpl;ZLcom/google/ads/interactivemedia/v3/impl/zzbz;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzcs;

    .line 2
    invoke-direct {p2, p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzcs;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzcp;

    const/4 p1, 0x0

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcp;-><init>([B)V

    .line 2
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/zzuh;->zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcr;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzcr;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcr;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb()Lcom/google/ads/interactivemedia/v3/impl/zzbz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    return-object v0
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->networkRequest:Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;

    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected network request of type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzcq;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcq;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzct;Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;)V

    .line 6
    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzco;

    .line 7
    invoke-direct {v2, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzco;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzct;Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zztp;Ljava/util/concurrent/Executor;)V

    return-void
.end method
