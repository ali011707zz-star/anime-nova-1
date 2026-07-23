.class final Lcom/google/ads/interactivemedia/v3/impl/zzbe;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 p1, 0x47

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzr()Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdp;->zze()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 5
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->resizeAndPositionVideo:Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzr()Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdp;->zzc(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzt()Lcom/google/ads/interactivemedia/v3/impl/zzda;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zzb(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzt()Lcom/google/ads/interactivemedia/v3/impl/zzda;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzda;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbe;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzs()Lcom/google/ads/interactivemedia/v3/impl/zzbl;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbl;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;)V

    return-void
.end method
