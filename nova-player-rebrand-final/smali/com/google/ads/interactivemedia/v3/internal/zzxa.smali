.class final Lcom/google/ads/interactivemedia/v3/internal/zzxa;
.super Lcom/google/ads/interactivemedia/v3/internal/zzxc;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzxb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzxb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxe;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxc;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzxd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzxd;->zzf:Ljava/lang/Object;

    return-object v0
.end method
