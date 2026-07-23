.class public final Lcom/google/ads/interactivemedia/v3/internal/zzet;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/util/Queue;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfa;

.field private zzd:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/internal/zzfa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza:Ljava/util/Queue;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfa;

    return-void
.end method

.method public static zza()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;->zzb(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzd(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzafw;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafw;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    invoke-virtual {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    return-object p0
.end method

.method private final zzj(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->nativeInstrumentation:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const-string v3, "*"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd:I

    add-int/lit8 v1, p1, -0x1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    if-eq v1, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void

    .line 1
    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza:Ljava/util/Queue;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd:I

    return-void

    .line 5
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 2
    throw p1
.end method


# virtual methods
.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    .line 3
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->LATENCY_MEASUREMENT_TRACKER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->FLUSH_LATENCY_MEASUREMENT:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->createForLatencyMeasurement(JLcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;

    move-result-object v1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzj(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zze()V

    return-void
.end method

.method public final zzg(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->create(JLcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzj(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;)V

    return-void
.end method

.method public final zzh(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->create(JLcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzj(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;)V

    return-void
.end method

.method public final zzi(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 1
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 2
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zzd:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza:Ljava/util/Queue;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method
