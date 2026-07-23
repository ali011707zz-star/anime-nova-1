.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;
    }
.end annotation


# instance fields
.field private final appState:Ljava/lang/String;

.field private final eventId:Ljava/lang/String;

.field private final nativeTime:J

.field private final nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

.field private final nativeViewHidden:Z

.field private final nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

.field private final nativeVolume:D

.field private final queryId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->queryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->eventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->appState:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeTime:J

    iput-wide p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeVolume:D

    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewHidden:Z

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;[B)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)V

    return-void
.end method


# virtual methods
.method public appState()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->appState:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->queryId:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->queryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->eventId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->eventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->appState:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->appState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeTime:J

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->nativeTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeVolume:D

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->nativeVolume()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewHidden:Z

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->nativeViewHidden()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public eventId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->queryId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->eventId:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->appState:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeVolume:D

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeVolume:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    xor-long/2addr v2, v5

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewHidden:Z

    if-eq v5, v6, :cond_0

    const/16 v5, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v5, 0x4cf

    :goto_0
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeTime:J

    ushr-long v8, v6, v4

    mul-int/2addr v0, v1

    long-to-int v2, v2

    xor-long v3, v8, v6

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v5

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public nativeTime()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeTime:J

    return-wide v0
.end method

.method public nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    return-object v0
.end method

.method public nativeViewHidden()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewHidden:Z

    return v0
.end method

.method public nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    return-object v0
.end method

.method public nativeVolume()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeVolume:D

    return-wide v0
.end method

.method public queryId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->queryId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->eventId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->appState:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeTime:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeVolume:D

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;->nativeViewHidden:Z

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v4, 0x26

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0xb

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, 0xf

    add-int/2addr v4, v14

    add-int/lit8 v4, v4, 0x13

    add-int v4, v4, v16

    add-int/lit8 v4, v4, 0x13

    add-int v4, v4, v17

    add-int/lit8 v4, v4, 0x1a

    add-int v4, v4, v18

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ActivityMonitorData{queryId="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", eventId="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appState="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nativeTime="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", nativeVolume="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", nativeViewHidden="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", nativeViewBounds="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nativeViewVisibleBounds="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
