.class public final Lcom/google/ads/interactivemedia/v3/internal/zzdh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzdq;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdt;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzdt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    iget-object p1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzdp;)V

    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzds;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzds;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    iget-object p1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzdp;)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzdr;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzdr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzdp;)V

    return-void
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zza:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zze(Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zza:Lorg/json/JSONObject;

    return-void
.end method
