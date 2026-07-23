.class final Lcom/google/android/gms/internal/ads/zzrl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzrk;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzsj;

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzsj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzrk;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzrk;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzsj;

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void
.end method

.method private final zzf(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzf:J

    return-void

    :cond_0
    const-wide/32 v0, 0x989680

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzf:J

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzg:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zze:J

    goto :goto_0
.end method

.method private final zzg(JF)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrk;->zzc()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrk;->zzb()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p1

    move v8, p3

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzrl;->zzh(JJJF)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzh(JJJF)J
    .locals 0

    sub-long/2addr p5, p3

    .line 1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzb:I

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide p1

    .line 2
    invoke-static {p5, p6, p7}, Lcom/google/android/gms/internal/ads/zzfj;->zzv(JF)J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1
.end method


# virtual methods
.method public final zza(JFJ)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v1, p4

    .line 1
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzg:J

    sub-long v3, v5, v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzf:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzg:J

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zza()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzb()J

    move-result-wide v10

    .line 3
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gms/internal/ads/zzrl;->zzg(JF)J

    move-result-wide v12

    sub-long v14, v10, v5

    .line 4
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v7, v14, v16

    const-string v14, "AudioTrackAudioOutput"

    const-string v15, ", "

    const/16 v18, 0x2

    const/4 v9, 0x4

    if-lez v7, :cond_1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzc()J

    move-result-wide v12

    check-cast v7, Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzsd;->zzq()J

    move-result-wide v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v7, v7, 0x34

    add-int v7, v7, v16

    add-int/lit8 v7, v7, 0x2

    add-int v7, v7, v17

    add-int/lit8 v7, v7, 0x2

    add-int v7, v7, v19

    add-int/lit8 v7, v7, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    add-int v7, v7, v20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p1

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    move/from16 v20, v3

    move-wide v4, v10

    goto/16 :goto_0

    :cond_1
    move-wide v4, v5

    sub-long/2addr v12, v1

    .line 8
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-lez v6, :cond_2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzc()J

    move-result-wide v12

    check-cast v6, Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzsd;->zzq()J

    move-result-wide v6

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v16, v16, 0x36

    add-int v16, v16, v17

    add-int/lit8 v16, v16, 0x2

    add-int v16, v16, v20

    add-int/lit8 v16, v16, 0x2

    add-int v16, v16, v21

    add-int/lit8 v16, v16, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v20, v3

    add-int v3, v16, v22

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    goto :goto_0

    :cond_2
    move/from16 v20, v3

    move v1, v9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:I

    if-ne v2, v1, :cond_4

    const/4 v6, 0x0

    .line 12
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    goto :goto_0

    :cond_3
    move/from16 v20, v3

    move-wide v4, v5

    const/16 v18, 0x2

    .line 7
    :cond_4
    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:I

    const/4 v2, 0x1

    const/4 v9, 0x3

    if-eqz v1, :cond_c

    if-eq v1, v2, :cond_7

    move/from16 v2, v18

    if-eq v1, v2, :cond_6

    if-eq v1, v9, :cond_5

    goto/16 :goto_2

    :cond_5
    if-eqz v20, :cond_e

    const/4 v6, 0x0

    .line 13
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void

    :cond_6
    const/4 v6, 0x0

    if-nez v20, :cond_e

    .line 14
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void

    :cond_7
    if-eqz v20, :cond_b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzc()J

    move-result-wide v1

    move-wide v6, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzh:J

    cmp-long v3, v6, v1

    if-gtz v3, :cond_8

    goto :goto_1

    .line 20
    :cond_8
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:J

    move-wide/from16 v5, p1

    move/from16 v7, p3

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzrl;->zzh(JJJF)J

    move-result-wide v1

    .line 17
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gms/internal/ads/zzrl;->zzg(JF)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_9

    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void

    .line 14
    :cond_9
    :goto_1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzrl;->zze:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x1e8480

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 19
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void

    :cond_a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzc()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzh:J

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzb()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:J

    return-void

    :cond_b
    const/4 v6, 0x0

    .line 15
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void

    :cond_c
    if-eqz v20, :cond_d

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzb()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzrl;->zze:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_e

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzc()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzh:J

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzrk;->zzb()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:J

    .line 24
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void

    :cond_d
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzrl;->zze:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    .line 25
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    :cond_e
    :goto_2
    return-void
.end method

.method public final zzb()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzf(I)V

    return-void
.end method

.method public final zze(JF)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzrl;->zzg(JF)J

    move-result-wide p1

    return-wide p1
.end method
