.class public final Lcom/google/ads/interactivemedia/v3/internal/zzz;
.super Lcom/google/ads/interactivemedia/v3/internal/zzaco;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzi()Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/ads/interactivemedia/v3/internal/zzz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzag()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzh(Z)V

    return-object p0
.end method
