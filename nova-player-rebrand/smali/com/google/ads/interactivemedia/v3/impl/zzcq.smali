.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzcq;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzct;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzct;Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcq;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzct;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcq;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcq;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzct;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcq;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzct;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object v0

    return-object v0
.end method
