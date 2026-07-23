.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zza;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzc;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zza;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzc;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zza;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzc;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/zzc;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzh()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;

    .line 1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->appStateChanged:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzg()Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    const/4 p1, 0x0

    return-object p1
.end method
