.class public final Lcom/google/ads/interactivemedia/v3/internal/zzrw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(I)Ljava/util/HashSet;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrh;->zzb(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(I)V

    return-object p0
.end method

.method static zzb(Ljava/util/Set;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method
