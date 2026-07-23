.class public final Lcom/google/ads/interactivemedia/v3/impl/zzcn;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzdp;
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/impl/zzo;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzql;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x2

    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzql;

    move-result-object p5

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zza:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 2
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object p4

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zze:Ljava/lang/String;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzo;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzcm;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzcm;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcn;[B)V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzo;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzcm;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzo;

    .line 4
    invoke-interface {p4, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    const-string v0, "Destroying NativeVideoDisplay"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzo;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->release()V

    return-void
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V
    .locals 0

    .line 1
    const-string p1, "Video player does not support resizing."

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 5
    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v4, 0x25

    if-eq v1, v4, :cond_5

    const/16 v4, 0x31

    if-eq v1, v4, :cond_2

    const/16 p1, 0x3c

    if-eq v1, p1, :cond_1

    const/16 p1, 0x40

    if-eq v1, p1, :cond_0

    const/16 p1, 0x56

    if-eq v1, p1, :cond_5

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 9
    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 8
    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 9
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-direct {v3, v1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 11
    :cond_3
    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 12
    invoke-interface {v0, v3, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->loadAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 10
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "Load message must contain video url."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 5
    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzb:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 6
    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->stopAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 0
    return-void
.end method

.method final synthetic zzf()Lcom/google/ads/interactivemedia/v3/impl/zzbz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    return-object v0
.end method

.method final synthetic zzg()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zze:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/ads/interactivemedia/v3/internal/zzql;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcn;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    return-object v0
.end method
