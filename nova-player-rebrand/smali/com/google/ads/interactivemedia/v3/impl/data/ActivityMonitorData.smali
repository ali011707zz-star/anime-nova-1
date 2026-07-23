.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract appState()Ljava/lang/String;
.end method

.method public abstract eventId()Ljava/lang/String;
.end method

.method public abstract nativeTime()J
.end method

.method public abstract nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
.end method

.method public abstract nativeViewHidden()Z
.end method

.method public abstract nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
.end method

.method public abstract nativeVolume()D
.end method

.method public abstract queryId()Ljava/lang/String;
.end method
