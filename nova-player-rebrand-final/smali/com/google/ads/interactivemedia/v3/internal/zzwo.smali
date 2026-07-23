.class final Lcom/google/ads/interactivemedia/v3/internal/zzwo;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzux;

.field final synthetic zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

.field final synthetic zze:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

.field private volatile zzf:Lcom/google/ads/interactivemedia/v3/internal/zzvp;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzwp;ZZLcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zza:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzb:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    return-void
.end method

.method private final zza()Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzux;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzwp;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzux;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzvq;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzn()V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwo;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V

    return-void
.end method
