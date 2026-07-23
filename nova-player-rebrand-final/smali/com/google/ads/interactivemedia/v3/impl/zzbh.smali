.class abstract Lcom/google/ads/interactivemedia/v3/impl/zzbh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseRequest;


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field private zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method


# virtual methods
.method final zzl()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method final zzm()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method
