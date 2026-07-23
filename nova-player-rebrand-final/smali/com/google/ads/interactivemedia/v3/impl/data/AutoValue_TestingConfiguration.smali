.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;
.super Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final disableExperiments:Z

.field private final disableOnScreenDetection:Z

.field private final disableSkipFadeTransition:Z

.field private final enableMonitorAppLifecycle:Z

.field private final extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final forceAndroidTvMode:Z

.field private final forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqu<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final forceTvMode:Z

.field private final ignoreStrictModeFalsePositives:Z

.field private final useTestStreamManager:Z

.field private final useVideoElementMock:Z

.field private final videoElementMockDuration:F


# virtual methods
.method public disableExperiments()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableExperiments:Z

    return v0
.end method

.method public disableOnScreenDetection()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableOnScreenDetection:Z

    return v0
.end method

.method public disableSkipFadeTransition()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableSkipFadeTransition:Z

    return v0
.end method

.method public enableMonitorAppLifecycle()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->enableMonitorAppLifecycle:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableExperiments:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->disableExperiments()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableOnScreenDetection:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->disableOnScreenDetection()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableSkipFadeTransition:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->disableSkipFadeTransition()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useVideoElementMock:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->useVideoElementMock()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->videoElementMockDuration:F

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->videoElementMockDuration()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useTestStreamManager:Z

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->useTestStreamManager()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->enableMonitorAppLifecycle:Z

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->enableMonitorAppLifecycle()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceTvMode:Z

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceTvMode()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceAndroidTvMode:Z

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceAndroidTvMode()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->ignoreStrictModeFalsePositives:Z

    .line 12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->extraParams()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->extraParams()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public extraParams()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object v0
.end method

.method public forceAndroidTvMode()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceAndroidTvMode:Z

    return v0
.end method

.method public forceExperimentIds()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method public forceTvMode()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceTvMode:Z

    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->hashCode()I

    move-result v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableExperiments:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    const/4 v5, 0x1

    if-eq v5, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableOnScreenDetection:Z

    if-eq v5, v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    const v7, 0xf4243

    xor-int/2addr v2, v7

    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableSkipFadeTransition:Z

    if-eq v5, v8, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    mul-int/2addr v2, v7

    xor-int/2addr v2, v6

    mul-int/2addr v2, v7

    xor-int/2addr v2, v8

    mul-int/2addr v2, v7

    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useVideoElementMock:Z

    if-eq v5, v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->videoElementMockDuration:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useTestStreamManager:Z

    if-eq v5, v2, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->enableMonitorAppLifecycle:Z

    if-eq v5, v2, :cond_6

    move v2, v4

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceTvMode:Z

    if-eq v5, v2, :cond_7

    move v2, v4

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceAndroidTvMode:Z

    if-eq v5, v2, :cond_8

    move v2, v4

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->ignoreStrictModeFalsePositives:Z

    if-eq v5, v2, :cond_9

    move v3, v4

    :cond_9
    xor-int/2addr v0, v3

    mul-int/2addr v0, v7

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    if-nez v2, :cond_a

    goto :goto_9

    .line 3
    :cond_a
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->hashCode()I

    move-result v1

    :goto_9
    xor-int/2addr v0, v1

    return v0
.end method

.method public ignoreStrictModeFalsePositives()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->ignoreStrictModeFalsePositives:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableExperiments:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableOnScreenDetection:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->disableSkipFadeTransition:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    iget-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useVideoElementMock:Z

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->videoElementMockDuration:F

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useTestStreamManager:Z

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v16, v4

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->enableMonitorAppLifecycle:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v18, v6

    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceTvMode:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v20, v8

    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->forceAndroidTvMode:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v22, v9

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->ignoreStrictModeFalsePositives:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v16, v16, 0x43

    add-int v16, v16, v18

    add-int/lit8 v16, v16, 0x1c

    add-int v16, v16, v20

    add-int/lit8 v16, v16, 0x15

    add-int v16, v16, v22

    add-int/lit8 v16, v16, 0x16

    add-int v16, v16, v11

    add-int/lit8 v16, v16, 0x1b

    add-int v16, v16, v13

    add-int/lit8 v16, v16, 0x17

    add-int v16, v16, v15

    add-int/lit8 v16, v16, 0x1c

    add-int v16, v16, v17

    add-int/lit8 v16, v16, 0xe

    add-int v16, v16, v19

    add-int/lit8 v16, v16, 0x15

    add-int v16, v16, v21

    add-int/lit8 v16, v16, 0x21

    add-int v16, v16, v23

    add-int/lit8 v16, v16, 0xe

    add-int v16, v16, v24

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v16, 0x1

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "TestingConfiguration{disableExperiments="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disableOnScreenDetection="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disableSkipFadeTransition="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", forceExperimentIds="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", useVideoElementMock="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", videoElementMockDuration="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", useTestStreamManager="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enableMonitorAppLifecycle="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceTvMode="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceAndroidTvMode="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ignoreStrictModeFalsePositives="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", extraParams="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useTestStreamManager()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useTestStreamManager:Z

    return v0
.end method

.method public useVideoElementMock()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->useVideoElementMock:Z

    return v0
.end method

.method public videoElementMockDuration()F
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;->videoElementMockDuration:F

    return v0
.end method
