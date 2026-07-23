.class public final Lcom/google/ads/interactivemedia/v3/impl/zzk;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

.field private final zze:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;Lcom/google/ads/interactivemedia/v3/api/customui/CustomUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zze:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

    invoke-static {p6}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 2
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 3
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzc:Ljava/util/Map;

    .line 4
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzc:Ljava/util/Map;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 5
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zze:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

    .line 6
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zze:Lcom/google/ads/interactivemedia/v3/api/AdPeriodInfo;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 7
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

    return-object v0
.end method

.method public final getAdData()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzc:Ljava/util/Map;

    return-object v0
.end method

.method public final getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzc:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzb:Lcom/google/ads/interactivemedia/v3/api/Ad;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzd:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzd()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object v3, v4, v1

    const-string v1, "AdEvent[type=%s, ad=%s, adProgressInfo=%s, customUi=%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzk;->zzc:Ljava/util/Map;

    if-nez v2, :cond_0

    const-string v0, "]"

    goto :goto_1

    .line 12
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ", "

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "}"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const-string v2, ", adData=%s]"

    .line 12
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
