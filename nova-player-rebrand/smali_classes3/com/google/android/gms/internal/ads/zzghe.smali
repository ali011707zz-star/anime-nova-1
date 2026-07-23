.class final Lcom/google/android/gms/internal/ads/zzghe;
.super Lcom/google/android/gms/internal/ads/zzghb;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgfx;

.field private final zzc:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Ljava/util/Map;Landroid/util/DisplayMetrics;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 7

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zza(I)Lcom/google/android/gms/internal/ads/zzgoc;

    move-result-object v6

    const-string v2, "HAMf3XP8KIibPGIFc5yJF+oNVlSUbFLkUHSZdrZ2Dhl4Bh9ge4/6z6Usrb+mfprj"

    const-string v3, "vYv0JfNJ2rw4TIvbzqBhbKW0tXWLxxqXfI+gpZUSK1Y="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgoc;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzghe;->zzb:Lcom/google/android/gms/internal/ads/zzgfx;

    iput-object p3, v1, Lcom/google/android/gms/internal/ads/zzghe;->zza:Ljava/util/Map;

    iput-object p4, v1, Lcom/google/android/gms/internal/ads/zzghe;->zzc:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static zzb(DLandroid/util/DisplayMetrics;)J
    .locals 2

    .line 1
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzawg;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzghe;->zza:Ljava/util/Map;

    const-string v3, "nv"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzghe;->zzc:Landroid/util/DisplayMetrics;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const-string v8, ""

    move-object/from16 v9, p1

    .line 2
    invoke-virtual {v9, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxd;->zza()Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object v8

    .line 4
    aget-object v9, v6, v7

    if-eqz v9, :cond_0

    aget-object v10, v6, v3

    if-eqz v10, :cond_0

    .line 5
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 6
    aget-object v9, v6, v3

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaxc;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 7
    :cond_0
    aget-object v9, v6, v5

    if-eqz v9, :cond_1

    .line 8
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaxc;->zzh(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_1
    const/4 v9, 0x3

    .line 9
    aget-object v10, v6, v9

    if-eqz v10, :cond_2

    .line 10
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaxc;->zzf(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_2
    const/4 v10, 0x4

    .line 11
    aget-object v11, v6, v10

    if-eqz v11, :cond_3

    .line 12
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/ads/zzaxc;->zzc(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_3
    const/4 v11, 0x5

    .line 13
    aget-object v11, v6, v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_5

    .line 14
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-eqz v11, :cond_4

    move v11, v5

    goto :goto_0

    :cond_4
    move v11, v3

    .line 15
    :goto_0
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzaxc;->zzs(I)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_5
    const/4 v11, 0x6

    .line 16
    aget-object v11, v6, v11

    if-eqz v11, :cond_6

    .line 17
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzaxc;->zzj(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_6
    const/4 v11, 0x7

    .line 18
    aget-object v11, v6, v11

    if-eqz v11, :cond_7

    .line 19
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzaxc;->zzi(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_7
    const/16 v11, 0x8

    .line 20
    aget-object v6, v6, v11

    if-eqz v6, :cond_9

    .line 21
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v6, v14, v12

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_1

    :cond_8
    move v6, v3

    .line 22
    :goto_1
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzt(I)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 23
    :cond_9
    monitor-enter p2

    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzghe;->zzb:Lcom/google/android/gms/internal/ads/zzgfx;

    const-string v11, "LTqeYOkKjRvgMVLXGWwl9QUpPl0hs86RILvnzsnpkgBkbbANt+0KM6wwB7tA8s8M"

    const-string v14, "qJFn6bhMeF50E1eku7tYH88ZkNeM8ctWC3me80VkO1s="

    .line 24
    invoke-interface {v6, v11, v14}, Lcom/google/android/gms/internal/ads/zzgfx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v11, 0x0

    if-eqz v6, :cond_1b

    .line 25
    const-string v14, "nv"

    .line 26
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/MotionEvent;

    const-string v15, ""

    move/from16 v16, v3

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v14, v3, v7

    aput-object v4, v3, v16

    .line 27
    invoke-virtual {v6, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-eqz v3, :cond_1a

    .line 28
    aget-object v6, v3, v7

    if-eqz v6, :cond_a

    .line 29
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzawg;->zzh(J)Lcom/google/android/gms/internal/ads/zzawg;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 30
    :cond_a
    :goto_2
    aget-object v6, v3, v16

    if-eqz v6, :cond_b

    .line 31
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzawg;->zzi(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 32
    :cond_b
    aget-object v5, v3, v5

    if-eqz v5, :cond_c

    .line 33
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzj(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 34
    :cond_c
    aget-object v5, v3, v9

    if-eqz v5, :cond_d

    .line 35
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzv(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 36
    :cond_d
    aget-object v3, v3, v10

    if-eqz v3, :cond_e

    .line 37
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzw(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_e
    const-string v3, "oe"

    .line 38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzger;

    if-nez v3, :cond_f

    goto :goto_3

    .line 59
    :cond_f
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zza:J

    cmp-long v9, v5, v12

    if-lez v9, :cond_10

    .line 39
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzz(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_10
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzb:J

    cmp-long v9, v5, v12

    if-lez v9, :cond_11

    .line 40
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzy(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_11
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzc:J

    cmp-long v9, v5, v12

    if-lez v9, :cond_12

    .line 41
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzx(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_12
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzd:J

    cmp-long v3, v5, v12

    if-lez v3, :cond_13

    .line 42
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzA(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 38
    :cond_13
    :goto_3
    const-string v3, "oe"

    .line 43
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzger;

    if-nez v3, :cond_14

    goto/16 :goto_4

    .line 70
    :cond_14
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zza:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_17

    .line 44
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zze:D

    if-eqz v4, :cond_16

    .line 45
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 46
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzl(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzh:F

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 47
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 48
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzm(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzi:F

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 49
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 50
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzn(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    float-to-double v5, v5

    .line 51
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzq(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    float-to-double v5, v5

    .line 52
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzr(J)Lcom/google/android/gms/internal/ads/zzaxc;

    const-string v5, "nv"

    .line 53
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    if-eqz v5, :cond_17

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzger;->zzh:F

    sub-float/2addr v6, v9

    .line 54
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    add-float/2addr v6, v9

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v6, v9

    float-to-double v9, v6

    .line 55
    invoke-static {v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v9

    cmp-long v6, v9, v12

    if-eqz v6, :cond_15

    .line 56
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaxc;->zzo(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_15
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzger;->zzi:F

    sub-float/2addr v6, v3

    .line 57
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    add-float/2addr v6, v3

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v6, v3

    float-to-double v5, v6

    .line 58
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    cmp-long v3, v5, v12

    if-eqz v3, :cond_17

    .line 59
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzp(J)Lcom/google/android/gms/internal/ads/zzaxc;

    goto :goto_4

    .line 71
    :cond_16
    throw v11

    .line 60
    :cond_17
    :goto_4
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzawg;->zzJ(Lcom/google/android/gms/internal/ads/zzaxc;)Lcom/google/android/gms/internal/ads/zzawg;

    const-string v3, "ro"

    .line 61
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v0, :cond_19

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_5
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-gt v7, v3, :cond_19

    .line 63
    aget-object v3, v0, v7

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxd;->zza()Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object v5

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzges;->zza:F

    float-to-double v8, v6

    if-eqz v4, :cond_18

    .line 65
    invoke-static {v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzges;->zzb:F

    float-to-double v8, v3

    .line 66
    invoke-static {v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzaxc;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaxd;

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zzK(Lcom/google/android/gms/internal/ads/zzaxd;)Lcom/google/android/gms/internal/ads/zzawg;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 69
    :cond_18
    throw v11

    .line 70
    :cond_19
    monitor-exit p2

    return-void

    .line 72
    :cond_1a
    throw v11

    .line 73
    :cond_1b
    throw v11

    .line 70
    :goto_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
