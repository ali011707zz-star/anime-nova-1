.class final Lcom/google/ads/interactivemedia/v3/internal/zzbx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:F

.field final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzby;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzby;F)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbx;->zza:F

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzby;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzby;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzbz;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbx;->zza:F

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzcl;->zzf(F)V

    return-void
.end method
