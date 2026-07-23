.class final Lcom/google/ads/interactivemedia/v3/internal/zzhl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zznv;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzho;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzho;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzho;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzn()Lcom/google/ads/interactivemedia/v3/internal/zznf;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzho;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzn()Lcom/google/ads/interactivemedia/v3/internal/zznf;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1, v0, v1, p4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzf(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
