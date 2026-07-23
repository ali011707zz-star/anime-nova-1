.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzdo;
.super Lcom/google/ads/interactivemedia/v3/internal/zzdp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field protected final zza:Ljava/util/HashSet;

.field protected final zzb:Lorg/json/JSONObject;

.field protected final zzc:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;)V

    new-instance p1, Ljava/util/HashSet;

    .line 2
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdo;->zza:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdo;->zzb:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdo;->zzc:J

    return-void
.end method
