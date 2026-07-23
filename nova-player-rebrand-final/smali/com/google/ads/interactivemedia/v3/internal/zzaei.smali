.class final Lcom/google/ads/interactivemedia/v3/internal/zzaei;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabo;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzaek;

.field zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabq;

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzael;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzael;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzael;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabo;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaek;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaek;

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    return-void
.end method

.method private final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaek;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabq;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabq;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
