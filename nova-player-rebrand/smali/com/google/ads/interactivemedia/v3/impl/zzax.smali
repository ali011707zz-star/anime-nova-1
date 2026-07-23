.class final Lcom/google/ads/interactivemedia/v3/impl/zzax;
.super Lcom/google/ads/interactivemedia/v3/impl/zzbp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zza:Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzc:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null sessionId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbp;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/zzbp;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zza:Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbp;->zza()Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbp;->zzb()Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbp;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zza:Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzc:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zza:Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x26

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzc:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CustomUiImpl{uiConfig="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", messageSender="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zza:Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;

    return-object v0
.end method

.method final zzb()Lcom/google/ads/interactivemedia/v3/impl/zzbz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzb:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzax;->zzc:Ljava/lang/String;

    return-object v0
.end method
