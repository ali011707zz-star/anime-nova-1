.class public final Lcom/google/ads/interactivemedia/v3/internal/zzfx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzga;

.field private final zzc:Landroid/view/View;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzdx;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbz;Lcom/google/ads/interactivemedia/v3/internal/zzga;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzdx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzga;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzc:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze()Ljava/lang/String;

    move-result-object v6

    .line 4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzga;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzc:Landroid/view/View;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzd(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;->gestureSignal(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData;

    move-result-object v5

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 12
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->gestureSignal:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->viewSignalResponse:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 13
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->clickString:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzga;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzc:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzdx;

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzga;->zzc(Ljava/lang/String;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzdx;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;->gestureSignal(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData;

    move-result-object v5

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 8
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->gestureSignal:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->clickSignalResponse:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfx;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 9
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    return-void
.end method
