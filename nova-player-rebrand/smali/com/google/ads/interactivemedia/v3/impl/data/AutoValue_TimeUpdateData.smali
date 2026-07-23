.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final currentTime:J

.field private final duration:J

.field private final timeUnit:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->currentTime:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->duration:J

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->timeUnit:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null timeUnit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public currentTime()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->currentTime:J

    return-wide v0
.end method

.method public duration()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->duration:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->currentTime:J

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;->currentTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->duration:J

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;->duration()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->timeUnit:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TimeUpdateData;->timeUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->duration:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->currentTime:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->timeUnit:Ljava/lang/String;

    ushr-long v4, v0, v4

    xor-long/2addr v0, v4

    const v4, 0xf4243

    xor-int/2addr v2, v4

    mul-int/2addr v2, v4

    long-to-int v0, v0

    xor-int/2addr v0, v2

    mul-int/2addr v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public timeUnit()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->timeUnit:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->currentTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->duration:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TimeUpdateData;->timeUnit:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v2, 0x26

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0xb

    add-int/2addr v2, v7

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TimeUpdateData{currentTime="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeUnit="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
