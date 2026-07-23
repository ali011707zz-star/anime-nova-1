.class public final Lcom/google/ads/interactivemedia/v3/internal/zzvn;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static synthetic zza(ILcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Number;
    .locals 0

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzww;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzww;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzj()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
