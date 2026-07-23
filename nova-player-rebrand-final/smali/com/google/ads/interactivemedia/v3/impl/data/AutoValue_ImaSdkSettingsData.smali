.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;
    }
.end annotation


# instance fields
.field private final autoPlayAdBreaks:Z

.field private final debugMode:Z

.field private final featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final numRedirects:I

.field private final playerType:Ljava/lang/String;

.field private final playerVersion:Ljava/lang/String;

.field private final ppid:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final supportsMultipleVideoDisplayChannels:Z

.field private final testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzqx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;-><init>()V

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->supportsMultipleVideoDisplayChannels:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->ppid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerType:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerVersion:Ljava/lang/String;

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->numRedirects:I

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->autoPlayAdBreaks:Z

    iput-boolean p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->debugMode:Z

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->sessionId:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzqx;[B)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzqx;)V

    return-void
.end method


# virtual methods
.method public autoPlayAdBreaks()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->autoPlayAdBreaks:Z

    return v0
.end method

.method public debugMode()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->debugMode:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->supportsMultipleVideoDisplayChannels:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->supportsMultipleVideoDisplayChannels()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->ppid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->ppid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->ppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerType:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->playerType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->playerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerVersion:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->playerVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->playerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->numRedirects:I

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->numRedirects()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->autoPlayAdBreaks:Z

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->autoPlayAdBreaks()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->debugMode:Z

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->debugMode()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->sessionId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->sessionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->sessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-nez v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->testingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->testingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    if-nez v1, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->featureFlags()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->featureFlags()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->equals(Ljava/lang/Object;)Z

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

.method public featureFlags()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->ppid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 6
    :goto_0
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->supportsMultipleVideoDisplayChannels:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    const/4 v5, 0x1

    if-eq v5, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const v6, 0xf4243

    xor-int/2addr v2, v6

    mul-int/2addr v2, v6

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerType:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 2
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    mul-int/2addr v0, v6

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    .line 3
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    .line 6
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->numRedirects:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->autoPlayAdBreaks:Z

    if-eq v5, v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->debugMode:Z

    if-eq v5, v2, :cond_5

    move v3, v4

    :cond_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v6

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_5

    .line 4
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_6

    .line 5
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    .line 6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->hashCode()I

    move-result v1

    :goto_7
    xor-int/2addr v0, v1

    return v0
.end method

.method public numRedirects()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->numRedirects:I

    return v0
.end method

.method public playerType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerType:Ljava/lang/String;

    return-object v0
.end method

.method public playerVersion()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public ppid()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->ppid:Ljava/lang/String;

    return-object v0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public supportsMultipleVideoDisplayChannels()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->supportsMultipleVideoDisplayChannels:Z

    return v0
.end method

.method public testingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->supportsMultipleVideoDisplayChannels:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->ppid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerType:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->playerVersion:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->numRedirects:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    iget-boolean v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->autoPlayAdBreaks:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->debugMode:Z

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v17, v4

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;->sessionId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v17, v17, 0x3f

    add-int v17, v17, v6

    add-int/lit8 v17, v17, 0xd

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0x10

    add-int v17, v17, v10

    add-int/lit8 v17, v17, 0xf

    add-int v17, v17, v12

    add-int/lit8 v17, v17, 0x13

    add-int v17, v17, v14

    add-int/lit8 v17, v17, 0xc

    add-int v17, v17, v16

    add-int/lit8 v17, v17, 0xc

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x10

    add-int v17, v17, v19

    add-int/lit8 v17, v17, 0xf

    add-int v17, v17, v20

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v17, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "ImaSdkSettingsData{supportsMultipleVideoDisplayChannels="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ppid="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", playerType="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", playerVersion="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", numRedirects="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", autoPlayAdBreaks="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", debugMode="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sessionId="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", testingConfig="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", featureFlags="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
