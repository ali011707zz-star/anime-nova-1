.class final Lcom/google/ads/interactivemedia/v3/internal/zzqf;
.super Ljava/util/AbstractMap;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpy;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

.field private transient zzb:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzb:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzqg;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzb:Ljava/util/Set;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd(Ljava/lang/Object;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzg(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd(Ljava/lang/Object;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    .line 3
    aget-object v2, v2, p1

    .line 4
    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzi(II)V

    return-object v2
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzc:I

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
