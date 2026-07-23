.class public final Lcom/google/ads/interactivemedia/v3/internal/zzvf;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvc;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvc;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;-><init>(Z)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzvc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
