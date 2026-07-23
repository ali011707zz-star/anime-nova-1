.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;
.super Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private autoPlayAdBreaks:Z

.field private debugMode:Z

.field private featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numRedirects:I

.field private playerType:Ljava/lang/String;

.field private playerVersion:Ljava/lang/String;

.field private ppid:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private set$0:B

.field private supportsMultipleVideoDisplayChannels:Z

.field private testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;
    .locals 14

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " supportsMultipleVideoDisplayChannels"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " numRedirects"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " autoPlayAdBreaks"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    const-string v1, " debugMode"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->supportsMultipleVideoDisplayChannels:Z

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->ppid:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->playerType:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->playerVersion:Ljava/lang/String;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->numRedirects:I

    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->autoPlayAdBreaks:Z

    iget-boolean v9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->debugMode:Z

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->sessionId:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iget-object v12, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzqx;[B)V

    return-object v2
.end method

.method setAutoPlayAdBreaks(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->autoPlayAdBreaks:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setDebugMode(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->debugMode:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setFeatureFlags(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->featureFlags:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object p0
.end method

.method setNumRedirects(I)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->numRedirects:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setPlayerType(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->playerType:Ljava/lang/String;

    return-object p0
.end method

.method setPlayerVersion(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->playerVersion:Ljava/lang/String;

    return-object p0
.end method

.method setPpid(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->ppid:Ljava/lang/String;

    return-object p0
.end method

.method setSessionId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method setSupportsMultipleVideoDisplayChannels(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->supportsMultipleVideoDisplayChannels:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->set$0:B

    return-object p0
.end method

.method setTestingConfig(Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;->testingConfig:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    return-object p0
.end method
