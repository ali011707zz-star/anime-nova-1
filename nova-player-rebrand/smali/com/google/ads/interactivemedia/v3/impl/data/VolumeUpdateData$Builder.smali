.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;
.end method

.method public abstract volume(F)Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;
.end method

.method public volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;->volume(F)Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;

    move-result-object p1

    return-object p1
.end method
