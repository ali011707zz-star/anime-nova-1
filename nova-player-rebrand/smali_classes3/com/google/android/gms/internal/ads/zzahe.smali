.class final Lcom/google/android/gms/internal/ads/zzahe;
.super Lcom/google/android/gms/internal/ads/zzaeg;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafh;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzahc;-><init>(Lcom/google/android/gms/internal/ads/zzafh;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahd;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Lcom/google/android/gms/internal/ads/zzafh;I[B)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafh;->zza()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzj:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    if-lez v5, :cond_0

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    int-to-long v9, v6

    int-to-long v5, v5

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    :goto_0
    move-wide v13, v5

    goto :goto_1

    .line 4
    :cond_0
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzafh;->zza:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:I

    const-wide/16 v9, 0x1000

    if-ne v5, v6, :cond_1

    if-lez v5, :cond_1

    int-to-long v9, v5

    :cond_1
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    int-to-long v5, v5

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzh:I

    int-to-long v11, v11

    mul-long/2addr v9, v5

    mul-long/2addr v9, v11

    const-wide/16 v5, 0x8

    div-long/2addr v9, v5

    const-wide/16 v5, 0x40

    add-long/2addr v5, v9

    goto :goto_0

    :goto_1
    const/4 v5, 0x6

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:I

    .line 3
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 4
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(Lcom/google/android/gms/internal/ads/zzaed;Lcom/google/android/gms/internal/ads/zzaef;JJJJJJI)V

    return-void
.end method
