.class final Lcom/google/ads/interactivemedia/v3/internal/zzxb;
.super Ljava/util/AbstractSet;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzxe;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxa;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxa;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxb;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;->zze(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzxd;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzxe;->zzb:I

    return v0
.end method
