.class public final Lcom/google/ads/interactivemedia/v3/internal/zzxk;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzxj;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzxj;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxj;->zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzb(Ljava/util/List;Ljava/lang/Class;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zza()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
