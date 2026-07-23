.class final Lcom/google/ads/interactivemedia/v3/internal/zzqj;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzqk;

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqk;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzm()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzc:I

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 3
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzd:I

    .line 4
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzc:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zze:I

    return-void
.end method

.method private final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqk;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzd:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zza()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zze:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqk;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zza(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzc:I

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzn()[I

    move-result-object v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zze:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zze:I

    return-object v1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zza()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    .line 2
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zze(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzc:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqk;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzqk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    .line 3
    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzh(II)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    .line 4
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzc:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzc:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzb:I

    :cond_1
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzc:I

    .line 5
    iget v0, v2, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzd:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqj;->zzd:I

    return-void
.end method
