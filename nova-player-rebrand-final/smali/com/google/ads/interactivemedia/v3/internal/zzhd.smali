.class final Lcom/google/ads/interactivemedia/v3/internal/zzhd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zznv;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zznf;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

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

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 2
    invoke-virtual {p2, p1, v0, v1, p4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzf(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
