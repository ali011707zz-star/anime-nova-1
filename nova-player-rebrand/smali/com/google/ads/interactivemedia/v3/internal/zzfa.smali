.class public final Lcom/google/ads/interactivemedia/v3/internal/zzfa;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzafo;

.field private final zzc:I

.field private zzd:I

.field private zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzd:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzc:I

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    move-result-object p1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;->zzb(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    .line 6
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafy;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzafx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-object v0
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzafx;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-void
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzez;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzd:I

    .line 2
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzez;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzez;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzez;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzc:I

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;->zzd(I)Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzez;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzb:I

    invoke-virtual {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;->zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    .line 6
    invoke-virtual {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzafo;)Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzafy;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzam(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzafx;)Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    .line 8
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    .line 9
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    return-object p1
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzd:I

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
