.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zze;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zze;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Double;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zze;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;

    move-result-object p1

    return-object p1
.end method
