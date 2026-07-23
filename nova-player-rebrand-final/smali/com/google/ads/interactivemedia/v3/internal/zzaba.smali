.class final Lcom/google/ads/interactivemedia/v3/internal/zzaba;
.super Lcom/google/ads/interactivemedia/v3/internal/zzwv;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzyh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzyh;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzo()V

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zza:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzv()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    .line 4
    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zza:I

    return-void

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 5
    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zza:I

    return-void

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    .line 6
    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zza:I

    return-void

    :cond_4
    const-string v0, "a name"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzx(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
