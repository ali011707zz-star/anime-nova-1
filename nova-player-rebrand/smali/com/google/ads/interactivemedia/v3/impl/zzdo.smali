.class public final Lcom/google/ads/interactivemedia/v3/impl/zzdo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/impl/zzdp;
.implements Lcom/google/ads/interactivemedia/v3/impl/zzdh;
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

.field private zzd:Z

.field private final zze:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance p6, Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-direct {p6, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbn;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzd:Z

    .line 2
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzg:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzd:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzh:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    return-void
.end method

.method private final zzl(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->videoDisplay1:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzf:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method


# virtual methods
.method public final onContentComplete()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->contentComplete:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "*"

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method

.method public final onUserTextReceived(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzps;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->timedMetadata:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdn;->create(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/zzdn;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzl(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    return-void
.end method

.method public final onVolumeChanged(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->volumeChange:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzl(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zzb(Lcom/google/ads/interactivemedia/v3/impl/zzdh;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zzd()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const-string v0, "Destroying StreamVideoDisplay"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzbn;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zze()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzdh;)V

    return-void
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V
    .locals 0

    .line 1
    const-string p1, "Stream player does not support resizing."

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_2

    const/16 p1, 0x3c

    if-eq v0, p1, :cond_1

    const/16 p1, 0x40

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->resume()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 5
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->pause()V

    return-void

    :cond_2
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->streamUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzd:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzg:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 8
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    .line 12
    :cond_5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzgc;->zza(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    .line 14
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 17
    const-string v6, "http://www.dom.com/path?"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzgc;->zza(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    .line 19
    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 21
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 22
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 23
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 36
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 28
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    .line 30
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_9

    const-string v4, "&"

    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    :goto_2
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->subtitles:Ljava/util/List;

    .line 37
    invoke-interface {v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 33
    :cond_c
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 6
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Load message must contain video url."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakStarted()V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakEnded()V

    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdPeriodStarted()V

    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdPeriodEnded()V

    return-void
.end method

.method public final zzj(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->seek(J)V

    return-void
.end method

.method public final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    return-void
.end method

.method public final zzx(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zza:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VolumeProvider;->getVolume()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->start:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-direct {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzl(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzd:Z

    .line 3
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->timeupdate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;->create(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzl(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    return-void
.end method
