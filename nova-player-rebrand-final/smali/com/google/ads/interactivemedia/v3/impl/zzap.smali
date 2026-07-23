.class public final Lcom/google/ads/interactivemedia/v3/impl/zzap;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

.field private final zzc:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zza:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zzb:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zzc:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zza:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zzb:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zzc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zza:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object v0
.end method

.method public final getStreamManager()Lcom/google/ads/interactivemedia/v3/api/StreamManager;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zzb:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzap;->zzc:Ljava/lang/Object;

    return-object v0
.end method
