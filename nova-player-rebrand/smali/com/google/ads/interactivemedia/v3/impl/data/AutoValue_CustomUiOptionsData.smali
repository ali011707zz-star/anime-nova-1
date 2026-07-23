.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final aboutThisAdSupport:Z

.field private final skippableSupport:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;-><init>()V

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->skippableSupport:Z

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->aboutThisAdSupport:Z

    return-void
.end method


# virtual methods
.method public aboutThisAdSupport()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->aboutThisAdSupport:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->skippableSupport:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;->skippableSupport()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->aboutThisAdSupport:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;->aboutThisAdSupport()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->skippableSupport:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->aboutThisAdSupport:Z

    if-eq v3, v4, :cond_1

    move v1, v2

    :cond_1
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public skippableSupport()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->skippableSupport:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->skippableSupport:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;->aboutThisAdSupport:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x3a

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CustomUiOptionsData{skippableSupport="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", aboutThisAdSupport="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
