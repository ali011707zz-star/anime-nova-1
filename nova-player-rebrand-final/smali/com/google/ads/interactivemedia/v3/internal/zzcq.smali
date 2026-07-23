.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcq;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzcs;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzcr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcs;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcs;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcs;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzcp;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzcp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzcr;

    return-object v0
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzcp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcs;

    return-object v0
.end method
