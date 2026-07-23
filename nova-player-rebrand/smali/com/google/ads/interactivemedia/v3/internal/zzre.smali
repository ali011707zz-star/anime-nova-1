.class public final Lcom/google/ads/interactivemedia/v3/internal/zzre;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    .line 1
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrg;->zza(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
