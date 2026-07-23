.class final Lcom/google/ads/interactivemedia/v3/impl/zzv;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzci;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzan;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->WEB_VIEW_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "IMA WebView encountered an error."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzan;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzu(Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzt()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zzn()Lcom/google/ads/interactivemedia/v3/impl/zzbq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbq;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
