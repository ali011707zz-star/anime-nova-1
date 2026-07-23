.class abstract Lcom/google/ads/interactivemedia/v3/internal/zzqk;
.super Ljava/util/AbstractSet;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqk;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzc:I

    return v0
.end method

.method abstract zza(I)Ljava/lang/Object;
.end method
