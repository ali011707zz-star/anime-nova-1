.class final Lcom/google/ads/interactivemedia/v3/internal/zzqi;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqk;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd(Ljava/lang/Object;I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzi(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
