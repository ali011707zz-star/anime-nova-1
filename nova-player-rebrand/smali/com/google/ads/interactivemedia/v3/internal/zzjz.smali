.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjz;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zzh:Ljava/util/List;

.field private final zzi:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;IILandroid/content/Context;)V
    .locals 7

    .line 1
    const-string v3, "uHu4aeoXgHtmEAr/p8TbphROLjKobmRTgSnNeTPf/24="

    const/16 v6, 0x1f

    const-string v2, "JC98YOkW1OV00In88Kxh39aoA4/Lc5LugpNahl16Tw21h78xPzCO3AkqsFSMWF+O"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzh:Ljava/util/List;

    iput-object p7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzi:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzq(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzr(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzi:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb()Landroid/content/Context;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzh:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzh:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzh:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzh:Ljava/util/List;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzq(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjz;->zzh:Ljava/util/List;

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzr(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
