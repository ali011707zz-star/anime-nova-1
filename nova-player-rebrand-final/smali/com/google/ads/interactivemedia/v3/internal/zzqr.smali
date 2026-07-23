.class final Lcom/google/ads/interactivemedia/v3/internal/zzqr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzpw;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzpw;-><init>(II)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
