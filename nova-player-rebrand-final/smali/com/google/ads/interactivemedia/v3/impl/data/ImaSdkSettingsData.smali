.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ImaSdkSettingsData$Builder;-><init>()V

    return-object v0
.end method

.method public static createFromImaSdkSettingsImpl(Lcom/google/ads/interactivemedia/v3/impl/zzbt;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setSupportsMultipleVideoDisplayChannels(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getPpid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setPpid(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setPlayerType(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getPlayerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setPlayerVersion(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getMaxRedirects()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setNumRedirects(I)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getAutoPlayAdBreaks()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setAutoPlayAdBreaks(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->isDebugMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setDebugMode(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setTestingConfig(Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->getFeatureFlags()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->setFeatureFlags(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;

    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/ImaSdkSettingsData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract autoPlayAdBreaks()Z
.end method

.method public abstract debugMode()Z
.end method

.method public abstract featureFlags()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
.end method

.method public abstract numRedirects()I
.end method

.method public abstract playerType()Ljava/lang/String;
.end method

.method public abstract playerVersion()Ljava/lang/String;
.end method

.method public abstract ppid()Ljava/lang/String;
.end method

.method public abstract sessionId()Ljava/lang/String;
.end method

.method public abstract supportsMultipleVideoDisplayChannels()Z
.end method

.method public abstract testingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
.end method
