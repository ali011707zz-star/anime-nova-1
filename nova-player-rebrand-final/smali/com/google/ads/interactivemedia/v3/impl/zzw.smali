.class final Lcom/google/ads/interactivemedia/v3/impl/zzw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zztp;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/impl/zzan;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zza:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Error initializing the SDK"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzr()Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    move-result-object v1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/zzak;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zza:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzw;->zzb:Ljava/lang/String;

    .line 2
    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzak;)V

    return-void
.end method
