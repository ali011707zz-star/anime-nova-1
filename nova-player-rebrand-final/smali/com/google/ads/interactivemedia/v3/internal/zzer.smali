.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzer;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzes;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/impl/data/ImageSize;


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzer;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzes;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzer;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzer;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/ImageSize;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzes;->zzb(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
