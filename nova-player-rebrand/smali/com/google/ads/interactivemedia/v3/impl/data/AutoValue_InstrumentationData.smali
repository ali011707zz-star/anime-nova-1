.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final adErrorEvent:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

.field private final androidDeviceInfoProtoBase64String:Ljava/lang/String;

.field private final component:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

.field private final latencyMeasurementProtoBase64String:Ljava/lang/String;

.field private final loggableException:Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

.field private final method:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

.field private final timestamp:J


# direct methods
.method constructor <init>(JLcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->timestamp:J

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->component:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->method:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->adErrorEvent:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->loggableException:Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->latencyMeasurementProtoBase64String:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->androidDeviceInfoProtoBase64String:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adErrorEvent()Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->adErrorEvent:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    return-object v0
.end method

.method public androidDeviceInfoProtoBase64String()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->androidDeviceInfoProtoBase64String:Ljava/lang/String;

    return-object v0
.end method

.method public component()Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->component:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->timestamp:J

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->timestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->component:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->component()Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->component()Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->method:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->method()Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->method()Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->adErrorEvent:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->adErrorEvent()Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->adErrorEvent()Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->loggableException:Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->loggableException()Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->loggableException()Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->latencyMeasurementProtoBase64String:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->latencyMeasurementProtoBase64String()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->latencyMeasurementProtoBase64String()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->androidDeviceInfoProtoBase64String:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->androidDeviceInfoProtoBase64String()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData;->androidDeviceInfoProtoBase64String()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    return v0

    :cond_8
    :goto_6
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->component:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 6
    :goto_0
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->timestamp:J

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->method:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    const/16 v5, 0x20

    ushr-long v5, v2, v5

    xor-long/2addr v2, v5

    long-to-int v2, v2

    const v3, 0xf4243

    xor-int/2addr v2, v3

    mul-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->adErrorEvent:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    mul-int/2addr v0, v3

    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->loggableException:Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->latencyMeasurementProtoBase64String:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->androidDeviceInfoProtoBase64String:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    xor-int/2addr v0, v1

    return v0
.end method

.method public latencyMeasurementProtoBase64String()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->latencyMeasurementProtoBase64String:Ljava/lang/String;

    return-object v0
.end method

.method public loggableException()Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->loggableException:Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    return-object v0
.end method

.method public method()Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->method:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->loggableException:Lcom/google/ads/interactivemedia/v3/impl/data/LoggableException;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->adErrorEvent:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->method:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->component:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->latencyMeasurementProtoBase64String:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_InstrumentationData;->androidDeviceInfoProtoBase64String:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v6, v6, 0x2a

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x9

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, 0xf

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x14

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x26

    add-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x25

    add-int/2addr v6, v14

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "InstrumentationData{timestamp="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", component="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", method="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", adErrorEvent="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loggableException="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", latencyMeasurementProtoBase64String="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", androidDeviceInfoProtoBase64String="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
