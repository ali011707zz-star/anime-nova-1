.class final Lcom/google/ads/interactivemedia/v3/internal/zzeb;
.super Lcom/google/ads/interactivemedia/v3/internal/zzev;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

.field private final zze:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzafx;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzev;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    if-eqz p5, :cond_0

    .line 2
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zze:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null executorService"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null latencyEventsBuilder"

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
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzev;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzev;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zza()Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzb()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzb()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzc()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zze:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zze()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zze:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zze:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v1, v1, 0x46

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x12

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x17

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x12

    add-int/2addr v1, v9

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JsComponent{javaScriptNativeBridgeUriComponent="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", testingConfiguration="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", jsMessageRouter="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", latencyEventsBuilder="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", executorService="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    return-object v0
.end method

.method final zzb()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    return-object v0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/impl/zzbv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    return-object v0
.end method

.method public final zzd()Lcom/google/ads/interactivemedia/v3/internal/zzafx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-object v0
.end method

.method public final zze()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;->zze:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
