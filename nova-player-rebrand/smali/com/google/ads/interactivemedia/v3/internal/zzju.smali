.class public final Lcom/google/ads/interactivemedia/v3/internal/zzju;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

.field private final zzi:J

.field private final zzj:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;IILcom/google/ads/interactivemedia/v3/internal/zzhy;JJ)V
    .locals 7

    .line 1
    const-string v3, "/cnUVQvNHFqi3ggOmiA4o/IdQSFHoegJ/H9a2xERT14="

    const/16 v6, 0xb

    const-string v2, "1MiCMWad12oLn5alnMxHwTvbBZm7RpaUcGFZ/LjrpVbPksWcBk53Qc+euKdOo/dG"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzju;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    move-wide p1, p8

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzju;->zzi:J

    move-wide/from16 p1, p10

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzju;->zzj:J

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzju;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhy;->zzb()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzju;->zzi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzju;->zzj:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzhw;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhw;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 4
    monitor-enter v0

    :try_start_0
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhw;->zza:Ljava/lang/Long;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzf(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhw;->zzb:Ljava/lang/Long;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhw;->zzb:Ljava/lang/Long;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzT(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhw;->zzc:Ljava/lang/Long;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhw;->zzc:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzU(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
