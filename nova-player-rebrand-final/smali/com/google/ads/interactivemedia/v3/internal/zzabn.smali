.class final Lcom/google/ads/interactivemedia/v3/internal/zzabn;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabo;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

.field private zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzb:I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzb:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzb:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zzb:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb(I)B

    move-result v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
