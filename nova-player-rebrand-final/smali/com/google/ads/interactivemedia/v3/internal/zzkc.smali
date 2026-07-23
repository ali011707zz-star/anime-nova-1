.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V
    .locals 7

    .line 1
    const-string v3, "2EDSTVCwfkpT+1duJ+umEyNIZ3jEP0NWyK78oeLPLhI="

    const/16 v6, 0x33

    const-string v2, "cOth2BAAthu6X8KDmzC58653OwqftcurhEiV9l+3uxMh7KBnOgbdhGM0zSnSPufi"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zziq;

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zziq;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/zziq;->zza:Ljava/lang/Long;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzF(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/zziq;->zzb:Ljava/lang/Long;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzG(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
