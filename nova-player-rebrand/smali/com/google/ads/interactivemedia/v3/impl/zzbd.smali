.class final Lcom/google/ads/interactivemedia/v3/impl/zzbd;
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

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    .line 3
    :cond_1
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_16

    const/4 v4, 0x2

    const-string v5, "adBreakTime"

    if-eq v0, v4, :cond_14

    const/4 v4, 0x3

    if-eq v0, v4, :cond_12

    const/4 v4, 0x4

    if-eq v0, v4, :cond_11

    const/4 v4, 0x5

    if-eq v0, v4, :cond_10

    const/16 v4, 0x16

    if-eq v0, v4, :cond_f

    const/16 v4, 0x17

    if-eq v0, v4, :cond_e

    const/16 v4, 0x22

    if-eq v0, v4, :cond_d

    const/16 v4, 0x23

    if-eq v0, v4, :cond_c

    const/16 v4, 0x34

    if-eq v0, v4, :cond_a

    const/16 v4, 0x35

    if-eq v0, v4, :cond_9

    const/16 v4, 0x59

    if-eq v0, v4, :cond_8

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_7

    packed-switch v0, :pswitch_data_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 74
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 51
    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 52
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 75
    :pswitch_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 76
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 77
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->seekTime:Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzh:D

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzv(Z)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->HIDE_AD_UI:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 9
    :pswitch_4
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->uiConfig:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzv(Z)V

    .line 11
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->uiConfig:Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzp()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzq()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzax;

    .line 12
    invoke-direct {v4, p1, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzax;-><init>(Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SHOW_AD_UI:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 13
    invoke-direct {p1, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    :cond_3
    :goto_0
    return-void

    .line 94
    :sswitch_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 95
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzn()V

    return-void

    .line 63
    :sswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 64
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 69
    :sswitch_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 70
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 3
    :sswitch_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSE_AD_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 4
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 71
    :sswitch_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 72
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 44
    :sswitch_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 45
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->attributionSrc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzu()Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzgd;)V

    return-void

    :sswitch_6
    if-eqz v2, :cond_4

    .line 95
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 96
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    :cond_4
    const-string p1, "Ad loaded message requires adData"

    .line 98
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    .line 99
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    const-string v4, "Ad loaded message did not contain adData."

    .line 100
    invoke-direct {v3, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V

    return-void

    .line 49
    :sswitch_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 50
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 79
    :sswitch_8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 80
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzd:Ljava/util/List;

    .line 82
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->cuepoints:Ljava/util/List;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/data/CuePointData;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzd:Ljava/util/List;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzbo;

    .line 84
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CuePointData;->start()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CuePointData;->end()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CuePointData;->played()Z

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/zzbo;-><init>(DDZ)V

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 88
    :sswitch_9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 89
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 57
    :sswitch_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 62
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 86
    :sswitch_b
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 87
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 35
    :pswitch_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 36
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzp;

    .line 37
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->currentTime:Ljava/lang/Double;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v5

    .line 38
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->duration:Ljava/lang/Double;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v6

    .line 39
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adPosition:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v7

    .line 40
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->totalAds:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v8

    .line 41
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adBreakDuration:Ljava/lang/Double;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v9

    .line 42
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adPeriodDuration:Ljava/lang/Double;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v10

    .line 43
    iget-object v11, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adsDurationsMs:Ljava/util/List;

    invoke-direct/range {v4 .. v11}, Lcom/google/ads/interactivemedia/v3/impl/zzp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Ljava/util/List;)V

    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzf:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 15
    :pswitch_6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 16
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzn;

    .line 17
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->totalAds:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v2

    .line 18
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adsDuration:Ljava/lang/Double;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v3

    .line 19
    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->totalDuration:Ljava/lang/Double;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v4

    .line 20
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->slateDuration:Ljava/lang/Double;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzg:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 13
    :pswitch_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 14
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 45
    :cond_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 46
    invoke-direct {p1, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 48
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 65
    :cond_9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 66
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 53
    :cond_a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 54
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 55
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->logData:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData$LogData;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData$LogData;->constructMap()Ljava/util/Map;

    move-result-object v1

    :cond_b
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzc:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 67
    :cond_c
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 68
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 56
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    .line 57
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->errorCode:Ljava/lang/Integer;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v3

    .line 58
    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->innerError:Ljava/lang/String;

    .line 59
    invoke-static {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzj;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 60
    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 61
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzo(Lcom/google/ads/interactivemedia/v3/impl/zzj;)V

    return-void

    .line 90
    :cond_e
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 91
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    :cond_f
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 93
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 33
    :cond_10
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 34
    invoke-direct {p1, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 23
    :cond_11
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 24
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 29
    :cond_12
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 30
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 31
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adBreakTime:Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 32
    invoke-static {v5, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v1

    :cond_13
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzc:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 25
    :cond_14
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 26
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 27
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->adBreakTime:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 28
    invoke-static {v5, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object v1

    :cond_15
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzc:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    .line 21
    :cond_16
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 22
    invoke-direct {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbc;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;Lcom/google/ads/interactivemedia/v3/impl/zzbp;)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_b
        0x10 -> :sswitch_a
        0x14 -> :sswitch_9
        0x1b -> :sswitch_8
        0x2c -> :sswitch_7
        0x32 -> :sswitch_6
        0x37 -> :sswitch_5
        0x3c -> :sswitch_4
        0x3f -> :sswitch_3
        0x48 -> :sswitch_2
        0x53 -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
