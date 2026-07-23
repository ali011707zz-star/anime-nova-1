.class public abstract Lcom/google/android/gms/internal/ads/zzalb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalb;->zza:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzagc;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzalb;->zzc(Lcom/google/android/gms/internal/ads/zzaev;ZZ)Lcom/google/android/gms/internal/ads/zzagc;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaev;Z)Lcom/google/android/gms/internal/ads/zzagc;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzalb;->zzc(Lcom/google/android/gms/internal/ads/zzaev;ZZ)Lcom/google/android/gms/internal/ads/zzagc;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzaev;ZZ)Lcom/google/android/gms/internal/ads/zzagc;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x1000

    if-eqz v6, :cond_1

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v2

    .line 2
    :cond_1
    :goto_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    long-to-int v7, v7

    const/4 v8, 0x0

    move v10, v8

    move v11, v10

    :goto_1
    if-ge v10, v7, :cond_19

    const/16 v13, 0x8

    .line 3
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v14

    const/4 v15, 0x1

    .line 4
    invoke-interface {v0, v14, v8, v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzh([BIIZ)Z

    move-result v14

    if-nez v14, :cond_2

    :goto_2
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 5
    :cond_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v16

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v14

    const-wide/16 v18, 0x1

    cmp-long v18, v16, v18

    const-wide/16 v19, 0x8

    if-nez v18, :cond_3

    move-wide/from16 v21, v4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 7
    invoke-interface {v0, v4, v13, v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    const/16 v4, 0x10

    .line 8
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzer;->zzD()J

    move-result-wide v16

    move-object v5, v9

    :goto_3
    move-wide/from16 v8, v16

    const/16 v17, 0x0

    goto :goto_4

    :cond_3
    move-wide/from16 v21, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_4

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v4

    cmp-long v18, v4, v21

    if-eqz v18, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzm()J

    move-result-wide v16

    sub-long v4, v4, v16

    add-long v16, v4, v19

    :cond_4
    move-object v5, v9

    move v4, v13

    goto :goto_3

    :goto_4
    int-to-long v12, v4

    cmp-long v23, v8, v12

    if-gez v23, :cond_7

    move/from16 v23, v15

    const v15, 0x66726565

    if-ne v14, v15, :cond_6

    const/16 v15, 0x8

    if-ne v4, v15, :cond_5

    move-wide/from16 v8, v19

    const v14, 0x66726565

    goto :goto_5

    :cond_5
    const v14, 0x66726565

    .line 20
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajv;

    invoke-direct {v0, v14, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(IJI)V

    return-object v0

    :cond_7
    move/from16 v23, v15

    :goto_5
    add-int/2addr v10, v4

    const v4, 0x6d6f6f76

    if-ne v14, v4, :cond_9

    long-to-int v4, v8

    add-int/2addr v7, v4

    if-eqz v6, :cond_8

    int-to-long v8, v7

    cmp-long v4, v8, v2

    if-lez v4, :cond_8

    long-to-int v7, v2

    :cond_8
    move-object v9, v5

    move-wide/from16 v4, v21

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    const v4, 0x7472616b

    if-eq v14, v4, :cond_a

    const v4, 0x6d646961

    if-eq v14, v4, :cond_a

    const v4, 0x6d696e66

    if-ne v14, v4, :cond_b

    :cond_a
    move-wide/from16 v19, v2

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_b
    const v4, 0x6d6f6f66

    if-eq v14, v4, :cond_c

    const v4, 0x6d766578

    if-ne v14, v4, :cond_d

    :cond_c
    move/from16 v8, v23

    goto/16 :goto_b

    :cond_d
    const v4, 0x6d646174

    if-ne v14, v4, :cond_e

    const/4 v4, 0x0

    goto :goto_6

    :cond_e
    move/from16 v4, v23

    :goto_6
    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v11, v4

    const v4, 0x7374626c

    if-ne v14, v4, :cond_10

    const-wide/32 v14, 0xf4240

    cmp-long v14, v8, v14

    if-lez v14, :cond_f

    :goto_7
    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_f
    move v14, v4

    :cond_10
    move-wide/from16 v19, v2

    int-to-long v2, v10

    move-wide/from16 v24, v2

    int-to-long v2, v7

    add-long v24, v24, v8

    sub-long v24, v24, v12

    cmp-long v2, v24, v2

    if-ltz v2, :cond_11

    goto :goto_7

    :cond_11
    sub-long/2addr v8, v12

    long-to-int v2, v8

    add-int/2addr v10, v2

    const v3, 0x66747970

    if-ne v14, v3, :cond_17

    const/16 v15, 0x8

    if-ge v2, v15, :cond_12

    int-to-long v0, v2

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajv;

    invoke-direct {v2, v3, v0, v1, v15}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(IJI)V

    return-object v2

    .line 12
    :cond_12
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 13
    invoke-interface {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    .line 15
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzalb;->zzd(IZ)Z

    move-result v3

    or-int/2addr v3, v11

    const/4 v8, 0x4

    .line 16
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v9

    div-int/2addr v9, v8

    if-nez v3, :cond_15

    if-lez v9, :cond_15

    new-array v12, v9, [I

    move v8, v4

    :goto_8
    if-ge v8, v9, :cond_14

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v11

    aput v11, v12, v8

    .line 19
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/zzalb;->zzd(IZ)Z

    move-result v11

    if-eqz v11, :cond_13

    move/from16 v15, v23

    goto :goto_9

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_14
    move v15, v3

    goto :goto_9

    :cond_15
    move v15, v3

    move-object/from16 v12, v17

    :goto_9
    if-eqz v15, :cond_16

    move v11, v15

    goto :goto_a

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalg;

    .line 21
    invoke-direct {v0, v2, v12}, Lcom/google/android/gms/internal/ads/zzalg;-><init>(I[I)V

    return-object v0

    :cond_17
    const/4 v4, 0x0

    if-eqz v2, :cond_18

    .line 20
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzk(I)V

    :cond_18
    :goto_a
    move v8, v4

    move-object v9, v5

    move-wide/from16 v2, v19

    move-wide/from16 v4, v21

    goto/16 :goto_1

    :cond_19
    move v4, v8

    goto/16 :goto_2

    :goto_b
    if-nez v11, :cond_1a

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakx;->zza:Lcom/google/android/gms/internal/ads/zzakx;

    return-object v0

    :cond_1a
    move/from16 v0, p1

    if-eq v0, v8, :cond_1c

    if-eqz v8, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzakp;

    return-object v0

    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    return-object v0

    :cond_1c
    return-object v17
.end method

.method private static zzd(IZ)Z
    .locals 4

    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_2

    if-nez p1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    return v2

    .line 1
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzalb;->zza:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v3, 0x1d

    if-ge v1, v3, :cond_4

    aget v3, p1, v1

    if-ne v3, p0, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
