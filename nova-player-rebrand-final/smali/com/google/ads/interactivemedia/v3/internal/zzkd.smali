.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkd;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

.field private zzi:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;IILcom/google/ads/interactivemedia/v3/internal/zzjc;)V
    .locals 7

    .line 1
    const-string v3, "jjLuguQ1TtUBIYvLkWHGRHLEQB49t1f8VaYjdD5pX6Q="

    const/16 v6, 0x35

    const-string v2, "7i2iPrjrwVOXQymI9kbzBw+Saen0JiBKsL25H084g9vqkkZvrS3PC/gXCAaliMdd"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    iput-object p7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzkd;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    if-eqz p7, :cond_0

    .line 2
    invoke-virtual {p7}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;->zzc()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzkd;->zzi:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkd;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkd;->zzi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzH(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    :cond_0
    return-void
.end method
