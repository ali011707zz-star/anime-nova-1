.class final Lcom/google/ads/interactivemedia/v3/internal/zzzw;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

.field final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzaaz;Lcom/google/ads/interactivemedia/v3/internal/zzvp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzw;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaaz;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzw;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
