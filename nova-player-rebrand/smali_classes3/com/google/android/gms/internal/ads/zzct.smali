.class final Lcom/google/android/gms/internal/ads/zzct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:F

.field private final zzd:F

.field private final zze:F

.field private final zzf:I

.field private final zzg:I

.field private final zzh:I

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcr;

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:D


# direct methods
.method public constructor <init>(IIFFIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzct;->zzc:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzct;->zzd:F

    int-to-float p2, p1

    int-to-float p3, p5

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzct;->zze:F

    div-int/lit16 p2, p1, 0x190

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzct;->zzf:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzg:I

    add-int/2addr p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzh:I

    if-eqz p6, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcq;-><init>(Lcom/google/android/gms/internal/ads/zzct;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcs;-><init>(Lcom/google/android/gms/internal/ads/zzct;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    return-void
.end method

.method private final zzo(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(I)V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzr()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    mul-int/2addr v2, v3

    mul-int v4, p2, v3

    mul-int/2addr p1, v3

    .line 4
    invoke-static {v1, p1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    return-void
.end method

.method private final zzp()V
    .locals 27

    move-object/from16 v0, p0

    .line 26
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzc:F

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzd:F

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v1, v3, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz v1, :cond_1

    const-wide v8, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v1, v3, v8

    if-gez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    .line 25
    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/internal/ads/zzct;->zzo(II)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    :goto_0
    move/from16 v16, v2

    move v8, v5

    move/from16 v21, v7

    goto/16 :goto_d

    .line 26
    :cond_1
    :goto_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzct;->zzh:I

    if-ge v1, v8, :cond_2

    goto :goto_0

    :cond_2
    move v13, v6

    .line 35
    :goto_2
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    if-lez v9, :cond_3

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 21
    invoke-direct {v0, v13, v9}, Lcom/google/android/gms/internal/ads/zzct;->zzo(II)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    add-int/2addr v13, v9

    move/from16 v16, v2

    move-wide/from16 v23, v3

    move/from16 v21, v7

    move/from16 v22, v8

    :goto_3
    move v8, v5

    goto/16 :goto_c

    .line 24
    :cond_3
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zza:I

    const/16 v10, 0xfa0

    if-le v9, v10, :cond_4

    div-int/lit16 v9, v9, 0xfa0

    goto :goto_4

    :cond_4
    move v9, v7

    :goto_4
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    if-ne v10, v7, :cond_6

    if-ne v9, v7, :cond_5

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzct;->zzf:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzct;->zzg:I

    .line 6
    invoke-interface {v9, v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(III)I

    move-result v9

    move/from16 v16, v2

    move v11, v7

    goto :goto_8

    :cond_5
    move v10, v7

    .line 10
    :cond_6
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    .line 1
    invoke-interface {v11, v13, v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzd(II)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzct;->zzf:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzct;->zzg:I

    div-int v15, v14, v9

    move/from16 v16, v2

    div-int v2, v12, v9

    .line 2
    invoke-interface {v11, v6, v2, v15}, Lcom/google/android/gms/internal/ads/zzcr;->zze(III)I

    move-result v2

    if-eq v9, v7, :cond_a

    mul-int/2addr v2, v9

    mul-int/lit8 v9, v9, 0x4

    sub-int v15, v2, v9

    if-ge v15, v12, :cond_7

    goto :goto_5

    :cond_7
    move v12, v15

    :goto_5
    add-int/2addr v2, v9

    if-le v2, v14, :cond_8

    goto :goto_6

    :cond_8
    move v14, v2

    :goto_6
    if-ne v10, v7, :cond_9

    .line 3
    invoke-interface {v11, v13, v12, v14}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(III)I

    move-result v9

    :goto_7
    move v11, v10

    goto :goto_8

    .line 4
    :cond_9
    invoke-interface {v11, v13, v7}, Lcom/google/android/gms/internal/ads/zzcr;->zzd(II)V

    .line 5
    invoke-interface {v11, v6, v12, v14}, Lcom/google/android/gms/internal/ads/zzcr;->zze(III)I

    move-result v9

    goto :goto_7

    :cond_a
    move v9, v2

    goto :goto_7

    .line 6
    :goto_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzc()Z

    move-result v10

    if-eqz v10, :cond_b

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzct;->zzp:I

    move v15, v10

    goto :goto_9

    :cond_b
    move v15, v9

    :goto_9
    add-int v14, v13, v15

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzi()V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zzp:I

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v3, v9

    move-wide/from16 v17, v9

    int-to-double v9, v15

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    if-lez v12, :cond_d

    add-double v19, v3, v19

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    cmpl-double v12, v3, v17

    if-ltz v12, :cond_c

    move/from16 v21, v7

    move/from16 v22, v8

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    div-double v9, v9, v19

    add-double/2addr v9, v7

    .line 16
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    move-wide/from16 v23, v3

    int-to-double v3, v7

    sub-double/2addr v9, v3

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    move v10, v7

    goto :goto_a

    :cond_c
    move-wide/from16 v23, v3

    move/from16 v21, v7

    move/from16 v22, v8

    sub-double v17, v17, v23

    .line 19
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    mul-double v9, v9, v17

    div-double v9, v9, v19

    add-double/2addr v9, v3

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    int-to-double v3, v3

    sub-double/2addr v9, v3

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    move v10, v15

    .line 18
    :goto_a
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(I)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    move-object v9, v2

    .line 19
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(IIIII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int/2addr v15, v10

    add-int/2addr v13, v15

    goto/16 :goto_3

    :cond_d
    move-wide/from16 v23, v3

    move/from16 v21, v7

    move/from16 v22, v8

    move-wide/from16 v25, v9

    move-object v9, v2

    move-wide/from16 v2, v25

    sub-double v7, v17, v23

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v23, v17

    if-gez v4, :cond_e

    mul-double v2, v2, v23

    move-wide/from16 v17, v7

    .line 17
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    div-double v2, v2, v17

    add-double/2addr v2, v6

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-double v7, v6

    sub-double/2addr v2, v7

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    move v8, v5

    move v10, v6

    goto :goto_b

    :cond_e
    move-wide/from16 v17, v7

    add-double v6, v23, v23

    add-double v6, v6, v19

    move v8, v5

    .line 15
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    mul-double/2addr v2, v6

    div-double v2, v2, v17

    add-double/2addr v2, v4

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    move v10, v15

    :goto_b
    add-int v2, v15, v10

    .line 11
    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(I)V

    mul-int v3, v13, v11

    .line 12
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzr()Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/Object;

    move-result-object v5

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    mul-int/2addr v6, v11

    mul-int v7, v15, v11

    .line 14
    invoke-static {v4, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int v12, v3, v15

    move/from16 v25, v14

    move v14, v13

    move/from16 v13, v25

    .line 15
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(IIIII)V

    move v13, v14

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int/2addr v13, v10

    :goto_c
    add-int v2, v13, v22

    if-le v2, v1, :cond_16

    .line 21
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    sub-int/2addr v1, v13

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    mul-int/2addr v13, v3

    mul-int/2addr v3, v1

    .line 22
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzr()Ljava/lang/Object;

    move-result-object v4

    .line 23
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzr()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    .line 24
    invoke-static {v4, v13, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    .line 26
    :goto_d
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zze:F

    mul-float v1, v1, v16

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_15

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    if-ne v2, v8, :cond_f

    goto/16 :goto_12

    :cond_f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zza:I

    int-to-float v3, v2

    div-float/2addr v3, v1

    int-to-long v1, v2

    float-to-long v5, v3

    move-wide v11, v1

    move-wide v13, v5

    :goto_e
    const-wide/16 v1, 0x0

    cmp-long v3, v13, v1

    if-eqz v3, :cond_10

    cmp-long v3, v11, v1

    if-eqz v3, :cond_10

    const-wide/16 v5, 0x2

    rem-long v9, v13, v5

    cmp-long v3, v9, v1

    if-nez v3, :cond_10

    rem-long v9, v11, v5

    cmp-long v1, v9, v1

    if-nez v1, :cond_10

    div-long/2addr v13, v5

    div-long/2addr v11, v5

    goto :goto_e

    :cond_10
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    sub-int/2addr v1, v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzl(I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    mul-int v5, v8, v2

    .line 27
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Ljava/lang/Object;

    move-result-object v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    mul-int/2addr v7, v2

    mul-int v10, v1, v2

    .line 29
    invoke-static {v3, v5, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    const/4 v10, 0x0

    :goto_f
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_14

    :goto_10
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzm:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v5, v1

    mul-long v7, v5, v13

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzn:I

    move-wide v15, v5

    int-to-long v4, v3

    mul-long v17, v4, v11

    cmp-long v3, v7, v17

    if-lez v3, :cond_11

    move/from16 v3, v21

    .line 30
    invoke-interface {v9, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(I)V

    .line 31
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzcr;->zzb(IJJ)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzn:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzn:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    goto :goto_10

    :cond_11
    move/from16 v3, v21

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzm:I

    cmp-long v1, v15, v11

    if-nez v1, :cond_13

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzm:I

    cmp-long v4, v4, v13

    if-nez v4, :cond_12

    move v4, v3

    goto :goto_11

    :cond_12
    move v4, v1

    .line 32
    :goto_11
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzct;->zzn:I

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v21, v3

    goto :goto_f

    :cond_14
    if-eqz v1, :cond_15

    mul-int v3, v1, v2

    .line 33
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Ljava/lang/Object;

    move-result-object v5

    .line 34
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Ljava/lang/Object;

    move-result-object v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    sub-int/2addr v7, v1

    mul-int/2addr v7, v2

    const/4 v4, 0x0

    .line 35
    invoke-static {v5, v3, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    :cond_15
    :goto_12
    return-void

    :cond_16
    move v5, v8

    move/from16 v2, v16

    move/from16 v7, v21

    move/from16 v8, v22

    move-wide/from16 v3, v23

    const/4 v6, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcr;->zza()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final zzb(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcr;->zza()I

    move-result v3

    mul-int/2addr v2, v3

    div-int v2, v1, v2

    .line 3
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzj(I)V

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzn(Ljava/nio/ByteBuffer;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzct;->zzp()V

    return-void
.end method

.method public final zzc(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcr;->zza()I

    move-result v4

    mul-int/2addr v4, v0

    div-int/2addr v2, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3
    invoke-interface {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzo(Ljava/nio/ByteBuffer;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    mul-int/2addr v2, v0

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    mul-int/2addr v4, v0

    .line 6
    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzd()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    sub-int v2, v0, v1

    int-to-double v3, v1

    int-to-double v1, v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzct;->zzc:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzct;->zzd:F

    div-float/2addr v6, v7

    float-to-double v8, v6

    div-double/2addr v1, v8

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    add-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzct;->zze:F

    mul-float/2addr v3, v7

    float-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v5, v1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzh:I

    add-int/2addr v1, v1

    add-int v2, v0, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzj(I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    mul-int/2addr v0, v2

    .line 2
    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzm(II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzct;->zzp()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    const/4 v1, 0x0

    if-le v0, v5, :cond_0

    .line 4
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzp:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzq:D

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcr;->zzg()V

    return-void
.end method

.method public final zzf()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzct;->zzi:Lcom/google/android/gms/internal/ads/zzcr;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcr;->zza()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method final synthetic zzg()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzb:I

    return v0
.end method

.method final synthetic zzh()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzh:I

    return v0
.end method

.method final synthetic zzi()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzj:I

    return v0
.end method

.method final synthetic zzj()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzk:I

    return v0
.end method

.method final synthetic zzk()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzl:I

    return v0
.end method

.method final synthetic zzl()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzm:I

    return v0
.end method

.method final synthetic zzm()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzn:I

    return v0
.end method

.method final synthetic zzn()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzp:I

    return v0
.end method
