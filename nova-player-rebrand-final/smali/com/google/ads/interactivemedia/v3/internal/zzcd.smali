.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzcd;


# instance fields
.field private final zzb:Ljava/util/ArrayList;

.field private final zzc:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzb:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzc:Ljava/util/ArrayList;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzc:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzg()Z

    move-result v1

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/omid/library/adsession/zze;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzb:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzg()Z

    move-result v1

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzg()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zze()V

    :cond_0
    return-void
.end method

.method public final zze()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzb:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzc:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
