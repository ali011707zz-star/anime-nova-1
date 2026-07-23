.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData$Builder;
.super Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private set$0:B

.field private volume:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData;
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData$Builder;->set$0:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData$Builder;->volume:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData;-><init>(F[B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public volume(F)Lcom/google/ads/interactivemedia/v3/impl/data/VolumeUpdateData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData$Builder;->volume:F

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_VolumeUpdateData$Builder;->set$0:B

    return-object p0
.end method
