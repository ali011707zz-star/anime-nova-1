.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VideoEnvironmentData;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Integer;Z)Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VideoEnvironmentData;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VideoEnvironmentData;-><init>(Ljava/lang/Integer;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract downloadBandwidthKbps()Ljava/lang/Integer;
.end method

.method public abstract rendersUiNatively()Z
.end method
