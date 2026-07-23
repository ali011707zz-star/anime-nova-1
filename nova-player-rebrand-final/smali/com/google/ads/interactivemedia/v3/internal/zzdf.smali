.class public final Lcom/google/ads/interactivemedia/v3/internal/zzdf;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzcg;

.field private final zzb:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzcg;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zzb:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcg;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzcg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcg;

    return-object v0
.end method

.method public final zzc()Ljava/util/ArrayList;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdf;->zzb:Ljava/util/ArrayList;

    return-object v0
.end method
