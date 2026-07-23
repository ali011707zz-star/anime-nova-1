.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzqx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Map;"
    }
.end annotation


# instance fields
.field private transient zza:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

.field private transient zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

.field private transient zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqp;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrr;->zzl(I[Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzqw;)Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 0

    .line 1
    const-string p0, "IABTCF_AddtlConsent"

    const-string p1, "String"

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    const-string p2, "IABTCF_gdprApplies"

    const-string p3, "Number"

    invoke-static {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    const-string p4, "IABTCF_TCString"

    invoke-static {p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const-string p5, "IABUSPrivacy_String"

    invoke-static {p5, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    const-string p6, "IABGPP_HDR_GppString"

    invoke-static {p6, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    const-string p7, "IABGPP_GppSID"

    invoke-static {p7, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p8, 0xc

    new-array p8, p8, [Ljava/lang/Object;

    const/4 p9, 0x0

    aput-object p0, p8, p9

    const/4 p0, 0x1

    aput-object p1, p8, p0

    const/4 p0, 0x2

    aput-object p2, p8, p0

    const/4 p0, 0x3

    aput-object p3, p8, p0

    const/4 p0, 0x4

    aput-object p4, p8, p0

    const/4 p0, 0x5

    aput-object p1, p8, p0

    const/4 p0, 0x6

    aput-object p5, p8, p0

    const/4 p2, 0x7

    aput-object p1, p8, p2

    const/16 p2, 0x8

    aput-object p6, p8, p2

    const/16 p2, 0x9

    aput-object p1, p8, p2

    const/16 p2, 0xa

    aput-object p7, p8, p2

    const/16 p2, 0xb

    aput-object p1, p8, p2

    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p8, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrr;->zzl(I[Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzqw;)Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzk()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    .line 7
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;-><init>(I)V

    .line 8
    invoke-virtual {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zzb(Ljava/lang/Iterable;)Lcom/google/ads/interactivemedia/v3/internal/zzqw;

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqw;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqx;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzi()Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrw;->zzb(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "size"

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpz;->zzb(ILjava/lang/String;)I

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x40000000

    .line 3
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzi()Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    :cond_0
    return-object v0
.end method

.method abstract zzf()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
.end method

.method public zzg()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    :cond_0
    return-object v0
.end method

.method abstract zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqz;
.end method

.method public zzi()Lcom/google/ads/interactivemedia/v3/internal/zzqp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzj()Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqx;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqp;

    :cond_0
    return-object v0
.end method

.method abstract zzj()Lcom/google/ads/interactivemedia/v3/internal/zzqp;
.end method

.method abstract zzk()Z
.end method
