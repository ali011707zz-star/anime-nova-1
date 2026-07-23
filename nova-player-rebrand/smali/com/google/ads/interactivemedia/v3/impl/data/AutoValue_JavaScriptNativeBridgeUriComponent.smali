.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;
.super Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final baseUri:Landroid/net/Uri;

.field private final language:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final testingConfiguration:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;-><init>()V

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->baseUri:Landroid/net/Uri;

    if-eqz p2, :cond_2

    .line 2
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->language:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 3
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->packageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 4
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->testingConfiguration:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null testingConfiguration"

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null packageName"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null language"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null baseUri"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public baseUri()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->baseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->baseUri:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->baseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->language:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->language()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->packageName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->packageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->testingConfiguration:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->testingConfiguration()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->baseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->language:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->packageName:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->testingConfiguration:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    mul-int/2addr v0, v1

    .line 4
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public language()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->language:Ljava/lang/String;

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public testingConfiguration()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->testingConfiguration:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->testingConfiguration:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->baseUri:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->language:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v2, 0x36

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0xe

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x17

    add-int/2addr v2, v7

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "JavaScriptNativeBridgeUriComponent{baseUri="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", testingConfiguration="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
