.class final Lcom/google/ads/interactivemedia/v3/impl/zzbn;
.super Lcom/google/ads/interactivemedia/v3/impl/zzdj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field protected final zza:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V
    .locals 0

    const-wide/16 p2, 0xc8

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzdj;-><init>(J)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbn;->zza:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbn;->zza:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IMASDK"

    const-string v1, "ContentProgressProvider.getContentProgress() is null. Use VideoProgressUpdate.VIDEO_TIME_NOT_READY instead."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    :cond_0
    return-object v0
.end method
