.class public abstract Lcom/google/android/gms/internal/ads/zzgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:[B

.field public static final zzb:[F

.field private static final zzc:Ljava/lang/Object;

.field private static zzd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zza:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zzb:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zzc:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zzd:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static zza([BI)I
    .locals 8

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zzc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-lt v2, p1, :cond_2

    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v2, v3, :cond_1

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/ads/zzgm;->zzd:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    .line 6
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    .line 7
    aput-byte v1, p0, v5

    add-int/lit8 v5, v5, 0x2

    .line 8
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    sub-int v1, p1, v5

    .line 9
    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    monitor-exit v0

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_4

    .line 1
    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_3

    aget-byte v4, p0, v5

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_3
    if-ge v2, p1, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgm;->zzd:[I

    .line 2
    array-length v5, v4

    if-gt v5, v3, :cond_5

    add-int/2addr v5, v5

    .line 3
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzgm;->zzd:[I

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgm;->zzd:[I

    add-int/lit8 v5, v3, 0x1

    .line 4
    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    .line 11
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzv;B)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgm;->zzq(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video/avc"

    .line 2
    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string v0, "video/hevc"

    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgm;->zzq(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video/avc"

    .line 2
    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "video/hevc"

    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zzd([BIILcom/google/android/gms/internal/ads/zzv;)Z
    .locals 5

    .line 1
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v0, "video/avc"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 2
    aget-byte p0, p0, v2

    and-int/lit8 p1, p0, 0x60

    shr-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_0

    return v4

    :cond_0
    and-int/lit8 p0, p0, 0x1f

    if-ne p0, v4, :cond_1

    return v3

    :cond_1
    const/16 p1, 0x9

    if-ne p0, p1, :cond_2

    return v3

    :cond_2
    if-eq p0, v1, :cond_3

    return v4

    :cond_3
    return v3

    :cond_4
    const-string v0, "video/hevc"

    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    add-int/2addr p2, v2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgn;

    .line 4
    invoke-direct {p1, p0, v2, p2}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgm;->zzl(Lcom/google/android/gms/internal/ads/zzgn;)Lcom/google/android/gms/internal/ads/zzga;

    move-result-object p0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzga;->zza:I

    const/16 p2, 0x23

    if-ne p1, p2, :cond_5

    return v3

    :cond_5
    if-gt p1, v1, :cond_7

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzga;->zzc:I

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzv;->zzF:I

    add-int/lit8 p1, p1, -0x1

    if-eq p0, p1, :cond_6

    return v4

    :cond_6
    return v3

    :cond_7
    return v4
.end method

.method public static zze([BII)Lcom/google/android/gms/internal/ads/zzgl;
    .locals 32

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgn;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v6

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v7

    const/16 v3, 0x56

    const/16 v4, 0x2c

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v10, 0xf4

    const/4 v11, 0x3

    const/4 v14, 0x1

    const/16 v15, 0x64

    if-eq v2, v15, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v13, 0x53

    if-eq v2, v13, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v13, 0x76

    if-eq v2, v13, :cond_1

    const/16 v13, 0x80

    if-eq v2, v13, :cond_1

    const/16 v13, 0x8a

    if-ne v2, v13, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v13, v14

    const/16 p1, 0x10

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_7

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v13

    if-ne v13, v11, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v16

    move v12, v11

    :goto_1
    const/16 p1, 0x10

    goto :goto_2

    :cond_2
    move v12, v13

    const/16 v16, 0x0

    goto :goto_1

    .line 8
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v17

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v18

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v19

    if-eqz v19, :cond_8

    if-eq v12, v11, :cond_3

    move v12, v1

    goto :goto_3

    :cond_3
    const/16 v12, 0xc

    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_8

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v10, 0x6

    if-ge v1, v10, :cond_4

    move/from16 v10, p1

    goto :goto_5

    :cond_4
    const/16 v10, 0x40

    :goto_5
    const/4 v8, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    :goto_6
    if-ge v8, v10, :cond_7

    if-eqz v20, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzh()I

    move-result v20

    add-int v9, v21, v20

    add-int/lit16 v9, v9, 0x100

    rem-int/lit16 v9, v9, 0x100

    move/from16 v20, v9

    :cond_5
    if-eqz v20, :cond_6

    move/from16 v21, v20

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x6e

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v10, 0xf4

    goto :goto_4

    :cond_8
    move/from16 v12, v17

    .line 14
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v8

    if-nez v8, :cond_9

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    const/16 v3, 0xf4

    :goto_8
    const/16 v19, 0x0

    goto :goto_a

    :cond_9
    if-ne v8, v14, :cond_b

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v8

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzh()I

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzh()I

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v9

    int-to-long v9, v9

    const/4 v15, 0x0

    :goto_9
    int-to-long v3, v15

    cmp-long v3, v3, v9

    if-gez v3, :cond_a

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_a
    move/from16 v19, v8

    move v8, v14

    const/16 v3, 0xf4

    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    const/16 v3, 0xf4

    const/4 v9, 0x0

    goto :goto_8

    .line 22
    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v4

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v10

    add-int/2addr v10, v14

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v15

    add-int/2addr v15, v14

    move/from16 v24, v15

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v15

    rsub-int/lit8 v25, v15, 0x2

    if-nez v15, :cond_c

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    :cond_c
    mul-int v24, v24, v25

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    mul-int/lit8 v10, v10, 0x10

    mul-int/lit8 v24, v24, 0x10

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v26

    const/16 v27, 0x2

    if-eqz v26, :cond_10

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v26

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v28

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v29

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v30

    if-nez v13, :cond_d

    move/from16 v31, v14

    goto :goto_d

    :cond_d
    if-ne v13, v11, :cond_e

    move/from16 v31, v14

    goto :goto_b

    :cond_e
    move/from16 v31, v27

    :goto_b
    if-ne v13, v14, :cond_f

    move/from16 v13, v27

    goto :goto_c

    :cond_f
    move v13, v14

    :goto_c
    mul-int v25, v25, v13

    :goto_d
    add-int v26, v26, v28

    mul-int v26, v26, v31

    sub-int v10, v10, v26

    add-int v29, v29, v30

    mul-int v29, v29, v25

    sub-int v24, v24, v29

    :cond_10
    const/16 v13, 0x2c

    if-eq v2, v13, :cond_12

    const/16 v13, 0x56

    if-eq v2, v13, :cond_12

    const/16 v13, 0x64

    if-eq v2, v13, :cond_12

    const/16 v13, 0x6e

    if-eq v2, v13, :cond_12

    const/16 v13, 0x7a

    if-eq v2, v13, :cond_12

    if-ne v2, v3, :cond_11

    move v2, v3

    goto :goto_e

    :cond_11
    move/from16 v13, p1

    goto :goto_f

    :cond_12
    :goto_e
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_11

    const/4 v13, 0x0

    .line 34
    :goto_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v20, -0x1

    if-eqz v3, :cond_21

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v3, 0x8

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v14

    const/16 v3, 0xff

    if-ne v14, v3, :cond_13

    move/from16 v3, p1

    .line 37
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v14

    .line 38
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v3

    if-eqz v14, :cond_15

    if-eqz v3, :cond_15

    int-to-float v14, v14

    int-to-float v3, v3

    div-float v17, v14, v3

    goto :goto_10

    :cond_13
    const/16 v3, 0x11

    if-ge v14, v3, :cond_14

    .line 69
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgm;->zzb:[F

    .line 39
    aget v17, v3, v14

    goto :goto_10

    .line 40
    :cond_14
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "NalUnitUtil"

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_15
    :goto_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 43
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    .line 44
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    const/4 v11, 0x1

    if-eq v11, v3, :cond_17

    move/from16 v14, v27

    goto :goto_11

    :cond_17
    move v14, v11

    .line 46
    :goto_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0x8

    .line 47
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v11

    .line 48
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v20

    .line 49
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 50
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v3

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v20

    move/from16 v11, v20

    :goto_12
    move/from16 v20, v14

    goto :goto_13

    :cond_18
    move/from16 v3, v20

    move v11, v3

    goto :goto_12

    :cond_19
    move/from16 v3, v20

    move v11, v3

    .line 51
    :goto_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 54
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v14

    if-eqz v14, :cond_1b

    const/16 v14, 0x41

    .line 55
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 56
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzp(Lcom/google/android/gms/internal/ads/zzgn;)V

    .line 58
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzp(Lcom/google/android/gms/internal/ads/zzgn;)V

    :cond_1d
    if-nez v14, :cond_1e

    if-eqz v21, :cond_1f

    .line 60
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 61
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v13

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    :cond_20
    move/from16 v22, v11

    move/from16 v23, v13

    move/from16 v11, v17

    move/from16 v21, v20

    move/from16 v20, v3

    goto :goto_14

    :cond_21
    move/from16 v23, v13

    move/from16 v11, v17

    move/from16 v21, v20

    move/from16 v22, v21

    :goto_14
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgl;

    move/from16 v17, v8

    move/from16 v14, v16

    move/from16 v13, v18

    move/from16 v16, v1

    move v8, v4

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v24

    move v4, v2

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/ads/zzgl;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v3
.end method

.method public static zzf([BII)Lcom/google/android/gms/internal/ads/zzgj;
    .locals 35

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgn;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzl(Lcom/google/android/gms/internal/ads/zzgn;)Lcom/google/android/gms/internal/ads/zzga;

    move-result-object v2

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v4

    const/4 v5, 0x6

    .line 6
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x3

    .line 7
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v9

    const/16 v10, 0x11

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 9
    invoke-static {v0, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzgm;->zzm(Lcom/google/android/gms/internal/ads/zzgn;ZILcom/google/android/gms/internal/ads/zzgb;)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v12

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v13

    const/4 v14, 0x0

    if-eq v10, v13, :cond_0

    move v13, v9

    goto :goto_0

    :cond_0
    move v13, v14

    :goto_0
    if-gt v13, v9, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v13

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v15

    add-int/2addr v15, v10

    .line 16
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v11

    move/from16 v16, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgc;

    move/from16 p1, v5

    new-array v5, v10, [I

    .line 17
    invoke-direct {v4, v11, v5}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/util/List;[I)V

    const/4 v5, 0x2

    if-lt v7, v5, :cond_2

    if-lt v15, v5, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v14

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v16, :cond_3

    move v3, v10

    goto :goto_2

    :cond_3
    move v3, v14

    :goto_2
    move/from16 p2, v10

    add-int/lit8 v10, v13, 0x1

    if-eqz v11, :cond_80

    if-eqz v3, :cond_80

    if-ge v10, v7, :cond_4

    goto/16 :goto_5e

    .line 19
    :cond_4
    new-array v3, v5, [I

    aput v10, v3, p2

    aput v15, v3, v14

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 20
    new-array v5, v15, [I

    .line 21
    new-array v8, v15, [I

    aget-object v17, v3, v14

    .line 22
    aput v14, v17, v14

    aput p2, v5, v14

    aput v14, v8, v14

    move/from16 v14, p2

    :goto_3
    if-ge v14, v15, :cond_7

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_4
    if-gt v1, v13, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 24
    aget-object v19, v3, v14

    add-int/lit8 v20, v18, 0x1

    aput v1, v19, v18

    .line 25
    aput v1, v8, v14

    move/from16 v18, v20

    .line 26
    :cond_5
    aput v18, v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x4

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x40

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 31
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v1

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v1, :cond_16

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    if-eqz v14, :cond_a

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v19

    if-eqz v19, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v22, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_6
    const/16 v21, 0x0

    goto :goto_9

    .line 34
    :cond_a
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v19

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v20

    if-nez v19, :cond_c

    if-eqz v20, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v22, v1

    goto :goto_6

    .line 36
    :cond_c
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v21

    move/from16 v22, v1

    if-eqz v21, :cond_d

    const/16 v1, 0x13

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_d
    const/16 v1, 0x8

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    if-eqz v21, :cond_e

    const/4 v1, 0x4

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_e
    const/16 v1, 0xf

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :goto_9
    const/4 v1, 0x0

    :goto_a
    if-gt v1, v9, :cond_15

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v23

    if-nez v23, :cond_10

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v23

    if-eqz v23, :cond_f

    goto :goto_c

    .line 44
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v23

    if-eqz v23, :cond_11

    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_b
    move-object/from16 v23, v2

    goto :goto_d

    .line 43
    :cond_10
    :goto_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 45
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v23

    move/from16 v24, v1

    move/from16 v1, v23

    goto :goto_b

    :goto_d
    add-int v2, v19, v20

    move-object/from16 v25, v3

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_14

    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_f
    if-gt v2, v1, :cond_13

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    if-eqz v21, :cond_12

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 50
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_13
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v26

    goto :goto_e

    :cond_14
    add-int/lit8 v1, v24, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    goto :goto_a

    :cond_15
    move-object/from16 v23, v2

    move-object/from16 v25, v3

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v22

    goto/16 :goto_5

    :cond_16
    move-object/from16 v23, v2

    move-object/from16 v25, v3

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v23

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    :cond_17
    move-object/from16 v2, v23

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzc()V

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1, v9, v12}, Lcom/google/android/gms/internal/ads/zzgm;->zzm(Lcom/google/android/gms/internal/ads/zzgn;ZILcom/google/android/gms/internal/ads/zzgb;)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    const/16 v14, 0x10

    move/from16 v19, v1

    new-array v1, v14, [Z

    move-object/from16 v20, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v14, :cond_19

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v21

    aput-boolean v21, v20, v1

    if-eqz v21, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_19
    if-eqz v2, :cond_1a

    aget-boolean v1, v20, p2

    if-nez v1, :cond_1b

    :cond_1a
    move-object/from16 v2, v23

    goto/16 :goto_5d

    :cond_1b
    add-int/lit8 v1, v2, 0x1

    .line 58
    new-array v14, v2, [I

    move-object/from16 v22, v4

    move-object/from16 v24, v5

    const/4 v4, 0x0

    :goto_11
    sub-int v5, v2, v19

    if-ge v4, v5, :cond_1c

    const/4 v5, 0x3

    .line 59
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v26

    aput v26, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 60
    :cond_1c
    new-array v1, v1, [I

    if-eqz v19, :cond_1f

    move/from16 v4, p2

    :goto_12
    if-ge v4, v2, :cond_1e

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_1d

    .line 61
    aget v26, v1, v4

    aget v27, v14, v5

    add-int/lit8 v27, v27, 0x1

    add-int v26, v26, v27

    aput v26, v1, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 62
    :cond_1e
    aput p1, v1, v2

    :cond_1f
    const/4 v4, 0x2

    .line 63
    new-array v5, v4, [I

    aput v2, v5, p2

    const/16 v17, 0x0

    aput v7, v5, v17

    invoke-static {v11, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    new-array v5, v7, [I

    aput v17, v5, v17

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v11

    move-object/from16 v26, v1

    move-object/from16 v27, v4

    move/from16 v1, p2

    :goto_14
    if-ge v1, v7, :cond_24

    if-eqz v11, :cond_20

    move/from16 v4, p1

    const/16 v28, -0x1

    .line 65
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v29

    aput v29, v5, v1

    goto :goto_15

    :cond_20
    move/from16 v4, p1

    const/16 v28, -0x1

    .line 66
    aput v1, v5, v1

    :goto_15
    if-nez v19, :cond_22

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_21

    .line 68
    aget-object v28, v27, v1

    aget v29, v14, v4

    move/from16 v30, v1

    add-int/lit8 v1, v29, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v1

    aput v1, v28, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v30

    goto :goto_16

    :cond_21
    move/from16 v30, v1

    goto :goto_18

    :cond_22
    move/from16 v30, v1

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v2, :cond_23

    .line 67
    aget-object v4, v27, v30

    aget v29, v5, v30

    add-int/lit8 v31, v1, 0x1

    aget v32, v26, v31

    shl-int v32, p2, v32

    add-int/lit8 v32, v32, -0x1

    and-int v29, v29, v32

    aget v32, v26, v1

    shr-int v29, v29, v32

    aput v29, v4, v1

    move/from16 v1, v31

    goto :goto_17

    :cond_23
    :goto_18
    add-int/lit8 v1, v30, 0x1

    const/16 p1, 0x6

    goto :goto_14

    :cond_24
    const/16 v28, -0x1

    .line 66
    new-array v1, v10, [I

    move/from16 v2, p2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v7, :cond_2b

    .line 69
    aget v11, v5, v4

    aput v28, v1, v11

    move-object/from16 v19, v1

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_1a
    const/16 v1, 0x10

    if-ge v11, v1, :cond_27

    .line 70
    aget-boolean v1, v20, v11

    if-eqz v1, :cond_26

    move/from16 v1, p2

    if-ne v11, v1, :cond_25

    .line 71
    aget v11, v5, v4

    aget-object v26, v27, v4

    aget v26, v26, v14

    aput v26, v19, v11

    move v11, v1

    :cond_25
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    :cond_26
    move/from16 v1, p2

    :goto_1b
    add-int/2addr v11, v1

    move/from16 p2, v1

    goto :goto_1a

    :cond_27
    if-lez v4, :cond_2a

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v4, :cond_29

    .line 72
    aget v11, v5, v4

    aget v11, v19, v11

    aget v14, v5, v1

    aget v14, v19, v14

    if-ne v11, v14, :cond_28

    goto :goto_1d

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_29
    add-int/lit8 v2, v2, 0x1

    :cond_2a
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v19

    const/16 p2, 0x1

    goto :goto_19

    :cond_2b
    move-object/from16 v19, v1

    const/4 v1, 0x4

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v4

    const/4 v1, 0x2

    if-lt v2, v1, :cond_2c

    if-nez v4, :cond_2d

    :cond_2c
    move-object/from16 v4, v22

    move-object/from16 v2, v23

    goto/16 :goto_5c

    .line 75
    :cond_2d
    new-array v1, v2, [I

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v2, :cond_2e

    .line 76
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v14

    aput v14, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_2e
    new-array v4, v10, [I

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v7, :cond_2f

    .line 77
    aget v14, v5, v11

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v11, v4, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_2f
    new-instance v11, Lcom/google/android/gms/internal/ads/zzguc;

    .line 78
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    const/4 v14, 0x0

    :goto_20
    if-gt v14, v13, :cond_31

    move-object/from16 v20, v1

    .line 79
    aget v1, v19, v14

    move/from16 p1, v2

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_30

    .line 80
    aget v1, v20, v1

    goto :goto_21

    :cond_30
    move/from16 v1, v28

    :goto_21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfz;

    move-object/from16 v26, v4

    .line 81
    aget v4, v26, v14

    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(II)V

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p1

    move-object/from16 v1, v20

    move-object/from16 v4, v26

    goto :goto_20

    .line 82
    :cond_31
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfz;

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzfz;->zzb:I

    move/from16 v4, v28

    if-ne v2, v4, :cond_32

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    .line 214
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    :cond_32
    move-object/from16 v4, v22

    const/4 v11, 0x1

    :goto_22
    move-object/from16 v2, v23

    if-gt v11, v13, :cond_34

    .line 84
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfz;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzfz;->zzb:I

    move-object/from16 v23, v2

    const/4 v2, -0x1

    if-eq v14, v2, :cond_33

    goto :goto_23

    :cond_33
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_34
    move-object/from16 v23, v2

    const/4 v2, -0x1

    move v11, v2

    :goto_23
    if-ne v11, v2, :cond_35

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v23

    .line 85
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    :cond_35
    move-object/from16 v2, v23

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/16 v19, 0x1

    aput v7, v14, v19

    const/16 v17, 0x0

    aput v7, v14, v17

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Z

    move-object/from16 v22, v4

    const/4 v2, 0x2

    new-array v4, v2, [I

    aput v7, v4, v19

    aput v7, v4, v17

    invoke-static {v13, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    const/4 v4, 0x1

    :goto_24
    if-ge v4, v7, :cond_37

    move-object/from16 p1, v2

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v4, :cond_36

    .line 86
    aget-object v19, v14, v4

    aget-object v20, p1, v4

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v26

    aput-boolean v26, v20, v2

    aput-boolean v26, v19, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_36
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    goto :goto_24

    :cond_37
    move-object/from16 p1, v2

    const/4 v2, 0x1

    :goto_26
    if-ge v2, v7, :cond_3b

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v6, :cond_3a

    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v2, :cond_39

    .line 88
    aget-object v20, p1, v2

    aget-boolean v26, v20, v4

    if-eqz v26, :cond_38

    aget-object v26, p1, v4

    aget-boolean v26, v26, v19

    if-eqz v26, :cond_38

    const/16 v26, 0x1

    .line 89
    aput-boolean v26, v20, v19

    goto :goto_29

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_39
    :goto_29
    add-int/lit8 v4, v19, 0x1

    goto :goto_27

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3b
    new-array v2, v10, [I

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v7, :cond_3d

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/16 v20, 0x0

    :goto_2b
    if-ge v2, v4, :cond_3c

    .line 90
    aget-object v26, v14, v4

    aget-boolean v26, v26, v2

    add-int v20, v20, v26

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 91
    :cond_3c
    aget v2, v5, v4

    aput v20, v19, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    goto :goto_2a

    :cond_3d
    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2c
    if-ge v2, v7, :cond_3f

    .line 92
    aget v20, v5, v2

    aget v20, v19, v20

    if-nez v20, :cond_3e

    add-int/lit8 v4, v4, 0x1

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3f
    const/4 v2, 0x1

    if-le v4, v2, :cond_40

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    .line 93
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    :cond_40
    move-object/from16 v4, v22

    new-array v2, v7, [I

    new-array v4, v15, [I

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v20

    if-eqz v20, :cond_42

    move-object/from16 v20, v4

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v7, :cond_41

    move/from16 v26, v4

    const/4 v4, 0x3

    .line 95
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v27

    aput v27, v2, v26

    add-int/lit8 v4, v26, 0x1

    goto :goto_2d

    :cond_41
    :goto_2e
    const/4 v4, 0x0

    goto :goto_2f

    :cond_42
    move-object/from16 v20, v4

    const/4 v4, 0x0

    .line 96
    invoke-static {v2, v4, v7, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2e

    :goto_2f
    if-ge v4, v15, :cond_44

    move-object/from16 v26, v2

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_30
    aget v5, v24, v27

    if-ge v2, v5, :cond_43

    .line 98
    aget-object v5, v25, v27

    aget v5, v5, v2

    .line 99
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfz;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzfz;->zza:I

    aget v5, v26, v5

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_43
    add-int/lit8 v4, v4, 0x1

    .line 101
    aput v4, v20, v27

    add-int/lit8 v4, v27, 0x1

    move-object/from16 v2, v26

    move-object/from16 v5, v28

    goto :goto_2f

    :cond_44
    move-object/from16 v28, v5

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v6, :cond_47

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_32
    if-ge v5, v7, :cond_46

    .line 103
    aget-object v26, v14, v5

    aget-boolean v26, v26, v2

    if-eqz v26, :cond_45

    move/from16 v26, v2

    const/4 v2, 0x3

    .line 104
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    goto :goto_33

    :cond_45
    move/from16 v26, v2

    :goto_33
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v26

    goto :goto_32

    :cond_46
    move v2, v4

    goto :goto_31

    .line 105
    :cond_47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzguc;

    .line 107
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    .line 108
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    if-le v2, v4, :cond_48

    .line 109
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    const/4 v4, 0x2

    :goto_34
    if-ge v4, v2, :cond_48

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v6

    .line 111
    invoke-static {v0, v6, v9, v3}, Lcom/google/android/gms/internal/ads/zzgm;->zzm(Lcom/google/android/gms/internal/ads/zzgn;ZILcom/google/android/gms/internal/ads/zzgb;)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v3

    .line 112
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 113
    :cond_48
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v4

    add-int/2addr v4, v15

    if-le v4, v15, :cond_49

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    :cond_49
    const/4 v5, 0x2

    .line 116
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v6

    .line 117
    new-array v9, v5, [I

    const/16 v26, 0x1

    aput v10, v9, v26

    const/4 v5, 0x0

    aput v4, v9, v5

    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    .line 118
    new-array v12, v4, [I

    move/from16 v17, v5

    .line 119
    new-array v5, v4, [I

    move-object/from16 v26, v5

    move/from16 v5, v17

    :goto_35
    if-ge v5, v15, :cond_4e

    .line 120
    aput v17, v12, v5

    move/from16 v27, v5

    .line 121
    aget v5, v8, v27

    aput v5, v26, v27

    if-nez v6, :cond_4a

    .line 122
    aget-object v5, v9, v27

    move-object/from16 v29, v8

    aget v8, v24, v27

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    move/from16 v9, v17

    const/4 v12, 0x1

    invoke-static {v5, v9, v8, v12}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 123
    aget v5, v24, v27

    aput v5, v31, v27

    :goto_36
    const/16 v17, 0x0

    goto :goto_39

    :cond_4a
    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    const/4 v12, 0x1

    if-ne v6, v12, :cond_4d

    const/4 v8, 0x0

    .line 124
    :goto_37
    aget v9, v24, v27

    if-ge v8, v9, :cond_4c

    .line 125
    aget-object v9, v30, v27

    aget-object v12, v25, v27

    aget v12, v12, v8

    if-ne v12, v5, :cond_4b

    const/4 v12, 0x1

    goto :goto_38

    :cond_4b
    const/4 v12, 0x0

    :goto_38
    aput-boolean v12, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_4c
    const/4 v12, 0x1

    .line 126
    aput v12, v31, v27

    goto :goto_36

    :cond_4d
    const/16 v17, 0x0

    .line 127
    aget-object v5, v30, v17

    aput-boolean v12, v5, v17

    .line 128
    aput v12, v31, v17

    :goto_39
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v12, v31

    goto :goto_35

    :cond_4e
    move-object/from16 v30, v9

    move-object/from16 v31, v12

    const/4 v12, 0x1

    new-array v5, v10, [I

    const/4 v8, 0x2

    .line 129
    new-array v9, v8, [I

    aput v10, v9, v12

    aput v4, v9, v17

    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    const/4 v10, 0x1

    const/4 v12, 0x0

    :goto_3a
    if-ge v10, v4, :cond_5c

    if-ne v6, v8, :cond_50

    const/4 v8, 0x0

    .line 130
    :goto_3b
    aget v13, v24, v10

    if-ge v8, v13, :cond_50

    .line 131
    aget-object v13, v30, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v27

    aput-boolean v27, v13, v8

    .line 132
    aget v13, v31, v10

    aget-object v27, v30, v10

    aget-boolean v27, v27, v8

    add-int v13, v13, v27

    aput v13, v31, v10

    if-eqz v27, :cond_4f

    .line 134
    aget-object v13, v25, v10

    aget v13, v13, v8

    aput v13, v26, v10

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_50
    if-nez v12, :cond_53

    .line 135
    aget-object v8, v25, v10

    const/16 v17, 0x0

    aget v8, v8, v17

    if-nez v8, :cond_52

    aget-object v8, v30, v10

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_52

    move/from16 v12, v17

    const/4 v8, 0x1

    .line 136
    :goto_3c
    aget v13, v24, v10

    if-ge v8, v13, :cond_54

    .line 137
    aget-object v13, v25, v10

    aget v13, v13, v8

    if-ne v13, v11, :cond_51

    aget-object v13, v30, v10

    aget-boolean v13, v13, v11

    if-eqz v13, :cond_51

    move v12, v10

    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_52
    move/from16 v12, v17

    goto :goto_3d

    :cond_53
    const/16 v17, 0x0

    :cond_54
    :goto_3d
    move/from16 v8, v17

    .line 138
    :goto_3e
    aget v13, v24, v10

    if-ge v8, v13, :cond_5a

    const/4 v13, 0x1

    if-le v2, v13, :cond_58

    .line 139
    aget-object v13, v9, v10

    aget-object v27, v30, v10

    aget-boolean v27, v27, v8

    aput-boolean v27, v13, v8

    move-object/from16 v27, v14

    int-to-double v13, v2

    move/from16 v29, v2

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 140
    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc(DLjava/math/RoundingMode;)I

    move-result v2

    .line 141
    aget-object v13, v9, v10

    aget-boolean v13, v13, v8

    if-nez v13, :cond_56

    .line 142
    aget-object v13, v25, v10

    aget v13, v13, v8

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzfz;

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzfz;->zza:I

    move/from16 v14, v17

    :goto_3f
    if-ge v14, v8, :cond_56

    .line 143
    aget-object v32, v25, v10

    move/from16 v33, v6

    aget v6, v32, v14

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfz;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzfz;->zza:I

    .line 144
    aget-object v32, p1, v13

    aget-boolean v6, v32, v6

    if-eqz v6, :cond_55

    .line 145
    aget-object v6, v9, v10

    const/4 v13, 0x1

    aput-boolean v13, v6, v8

    goto :goto_40

    :cond_55
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v33

    goto :goto_3f

    :cond_56
    move/from16 v33, v6

    .line 146
    :goto_40
    aget-object v6, v9, v10

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_59

    if-lez v12, :cond_57

    if-ne v10, v12, :cond_57

    .line 148
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v2

    aput v2, v5, v8

    goto :goto_41

    .line 147
    :cond_57
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    goto :goto_41

    :cond_58
    move/from16 v29, v2

    move/from16 v33, v6

    move-object/from16 v27, v14

    :cond_59
    :goto_41
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v27

    move/from16 v2, v29

    move/from16 v6, v33

    goto :goto_3e

    :cond_5a
    move/from16 v29, v2

    move/from16 v33, v6

    move-object/from16 v27, v14

    .line 149
    aget v2, v31, v10

    const/4 v13, 0x1

    if-ne v2, v13, :cond_5b

    aget v2, v26, v10

    aget v2, v19, v2

    if-lez v2, :cond_5b

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    :cond_5b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, v27

    move/from16 v2, v29

    move/from16 v6, v33

    const/4 v8, 0x2

    goto/16 :goto_3a

    :cond_5c
    move-object/from16 v27, v14

    const/16 v17, 0x0

    if-nez v12, :cond_5d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    .line 213
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    :cond_5d
    move-object/from16 v2, v23

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    .line 152
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzguf;->zzv(I)Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v10

    new-array v11, v7, [I

    move/from16 v12, v17

    :goto_42
    if-ge v12, v8, :cond_61

    const/16 v13, 0x10

    .line 153
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v14

    move-object/from16 p1, v1

    .line 154
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v1

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v21

    if-eqz v21, :cond_5f

    move-object/from16 v23, v2

    const/4 v13, 0x2

    .line 156
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v2

    const/4 v13, 0x3

    if-ne v2, v13, :cond_5e

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    :cond_5e
    const/4 v13, 0x4

    .line 158
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v22

    .line 159
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v25

    move/from16 v31, v22

    move/from16 v32, v25

    goto :goto_43

    :cond_5f
    move-object/from16 v23, v2

    move/from16 v2, v17

    move/from16 v31, v2

    move/from16 v32, v31

    .line 160
    :goto_43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v13

    move-object/from16 v22, v9

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v9

    move/from16 v25, v12

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v12

    move-object/from16 v26, v3

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v3

    invoke-static {v14, v2, v13, v9}, Lcom/google/android/gms/internal/ads/zzgm;->zzn(IIII)I

    move-result v14

    invoke-static {v1, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzgm;->zzo(IIII)I

    move-result v1

    :goto_44
    move/from16 v34, v1

    move/from16 v33, v14

    goto :goto_45

    :cond_60
    move-object/from16 v26, v3

    move-object/from16 v22, v9

    move/from16 v25, v12

    goto :goto_44

    :goto_45
    new-instance v29, Lcom/google/android/gms/internal/ads/zzgd;

    move/from16 v30, v2

    invoke-direct/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzgd;-><init>(IIIII)V

    move-object/from16 v1, v29

    .line 165
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v12, v25, 0x1

    move-object/from16 v1, p1

    move-object/from16 v9, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    goto :goto_42

    :cond_61
    move-object/from16 p1, v1

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move-object/from16 v22, v9

    const/4 v13, 0x1

    if-le v8, v13, :cond_62

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-eqz v1, :cond_62

    int-to-double v1, v8

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 168
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc(DLjava/math/RoundingMode;)I

    move-result v1

    const/4 v2, 0x1

    :goto_46
    if-ge v2, v7, :cond_63

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v3

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_62
    const/4 v1, 0x1

    :goto_47
    if-ge v1, v7, :cond_63

    .line 167
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 169
    :cond_63
    new-instance v1, Lcom/google/android/gms/internal/ads/zzge;

    .line 170
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lcom/google/android/gms/internal/ads/zzge;-><init>(Ljava/util/List;[I)V

    const/4 v13, 0x2

    .line 171
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    const/4 v2, 0x1

    :goto_48
    if-ge v2, v7, :cond_65

    .line 172
    aget v3, v28, v2

    aget v3, v19, v3

    if-nez v3, :cond_64

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_65
    const/4 v2, 0x1

    :goto_49
    if-ge v2, v4, :cond_6c

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    move/from16 v6, v17

    .line 175
    :goto_4a
    aget v8, v20, v2

    if-ge v6, v8, :cond_6b

    if-lez v6, :cond_66

    if-eqz v3, :cond_66

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v8

    goto :goto_4b

    :cond_66
    if-nez v6, :cond_67

    const/4 v8, 0x1

    goto :goto_4b

    :cond_67
    move/from16 v8, v17

    :goto_4b
    if-eqz v8, :cond_6a

    move/from16 v8, v17

    .line 177
    :goto_4c
    aget v9, v24, v2

    if-ge v8, v9, :cond_69

    .line 178
    aget-object v9, v22, v2

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_68

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    :cond_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 180
    :cond_69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 182
    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v2

    const/16 v16, 0x2

    add-int/lit8 v2, v2, 0x2

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 186
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    goto :goto_4f

    :cond_6d
    const/4 v3, 0x1

    :goto_4d
    if-ge v3, v7, :cond_70

    move/from16 v4, v17

    :goto_4e
    if-ge v4, v3, :cond_6f

    .line 184
    aget-object v6, v27, v3

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_6e

    .line 185
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 187
    :cond_70
    :goto_4f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v2

    const/4 v3, 0x1

    :goto_50
    if-gt v3, v2, :cond_71

    const/16 v4, 0x8

    .line 188
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 189
    :cond_71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzc()V

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v2

    if-nez v2, :cond_72

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 193
    :cond_72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 194
    :cond_73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v2

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-nez v2, :cond_74

    if-eqz v3, :cond_7a

    :cond_74
    move/from16 v4, v17

    :goto_51
    if-ge v4, v15, :cond_7a

    move/from16 v6, v17

    .line 196
    :goto_52
    aget v8, v20, v4

    if-ge v6, v8, :cond_79

    if-eqz v2, :cond_75

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v8

    goto :goto_53

    :cond_75
    move/from16 v8, v17

    :goto_53
    if-eqz v3, :cond_76

    .line 198
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v9

    goto :goto_54

    :cond_76
    move/from16 v9, v17

    :goto_54
    if-eqz v8, :cond_77

    const/16 v8, 0x20

    .line 199
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_77
    if-eqz v9, :cond_78

    const/16 v8, 0x12

    .line 200
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 201
    :cond_7a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v13, 0x4

    .line 202
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v3

    const/4 v13, 0x1

    add-int/2addr v3, v13

    goto :goto_55

    :cond_7b
    const/4 v13, 0x1

    move v3, v7

    .line 203
    :goto_55
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzguf;->zzv(I)Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v4

    new-array v6, v7, [I

    move/from16 v8, v17

    :goto_56
    if-ge v8, v3, :cond_7d

    const/4 v9, 0x3

    .line 204
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v10

    if-eq v13, v10, :cond_7c

    move/from16 v10, v16

    :goto_57
    const/16 v11, 0x8

    goto :goto_58

    :cond_7c
    const/4 v10, 0x1

    goto :goto_57

    .line 206
    :goto_58
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v12

    .line 207
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v13

    .line 208
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    new-instance v14, Lcom/google/android/gms/internal/ads/zzgh;

    invoke-direct {v14, v12, v10, v13}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(III)V

    .line 209
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x1

    goto :goto_56

    :cond_7d
    if-eqz v2, :cond_7e

    const/4 v13, 0x1

    if-le v3, v13, :cond_7e

    move/from16 v14, v17

    :goto_59
    if-ge v14, v7, :cond_7e

    const/4 v13, 0x4

    .line 210
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v2

    aput v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_59

    :cond_7e
    new-instance v11, Lcom/google/android/gms/internal/ads/zzgi;

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    invoke-direct {v11, v0, v6}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Ljava/util/List;[I)V

    move-object v6, v11

    :goto_5a
    move-object v0, v1

    goto :goto_5b

    :cond_7f
    const/4 v6, 0x0

    goto :goto_5a

    :goto_5b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgc;

    move-object/from16 v2, v26

    .line 212
    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/util/List;[I)V

    move-object/from16 v3, p1

    move-object v5, v0

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    .line 73
    :goto_5c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    .line 56
    :goto_5d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1

    .line 17
    :cond_80
    :goto_5e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzga;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-object v1
.end method

.method public static zzg([BIILcom/google/android/gms/internal/ads/zzgj;)Lcom/google/android/gms/internal/ads/zzgg;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgm;->zzl(Lcom/google/android/gms/internal/ads/zzgn;)Lcom/google/android/gms/internal/ads/zzga;

    move-result-object v6

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgn;

    const/4 v5, 0x2

    add-int/2addr v1, v5

    .line 3
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v2

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzga;->zzb:I

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v10, 0x7

    if-ne v2, v10, :cond_0

    move v2, v10

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v11, -0x1

    if-eqz v3, :cond_1

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzgj;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 6
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 7
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v13

    add-int/2addr v13, v11

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 8
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfz;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzfz;->zza:I

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v12, 0x0

    if-nez v10, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 10
    invoke-static {v4, v8, v2, v12}, Lcom/google/android/gms/internal/ads/zzgm;->zzm(Lcom/google/android/gms/internal/ads/zzgn;ZILcom/google/android/gms/internal/ads/zzgb;)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v12

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 35
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzgj;->zzb:Lcom/google/android/gms/internal/ads/zzgc;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzgc;->zzb:[I

    .line 11
    aget v14, v14, v7

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzgc;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 12
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v15

    if-le v15, v14, :cond_3

    .line 13
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzgb;

    .line 14
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v13

    const/16 v14, 0x8

    if-eqz v10, :cond_7

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 16
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v15

    goto :goto_3

    :cond_4
    move v15, v11

    :goto_3
    if-eqz v3, :cond_6

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v9, :cond_6

    if-ne v15, v11, :cond_5

    iget-object v15, v9, Lcom/google/android/gms/internal/ads/zzge;->zzb:[I

    .line 17
    aget v15, v15, v7

    :cond_5
    if-eq v15, v11, :cond_6

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzge;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 18
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-le v11, v15, :cond_6

    .line 19
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzgd;

    .line 20
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzgd;->zza:I

    .line 21
    iget v15, v9, Lcom/google/android/gms/internal/ads/zzgd;->zzd:I

    .line 22
    iget v14, v9, Lcom/google/android/gms/internal/ads/zzgd;->zze:I

    .line 23
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzgd;->zzb:I

    .line 24
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzgd;->zzc:I

    move v0, v11

    move v11, v9

    move v9, v0

    move v0, v14

    move v1, v15

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_6

    .line 25
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v11

    if-ne v11, v1, :cond_8

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v11

    .line 27
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v15

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v14

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v9

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v1

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v0

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v8

    invoke-static {v15, v5, v9, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zzn(IIII)I

    move-result v1

    invoke-static {v14, v5, v0, v8}, Lcom/google/android/gms/internal/ads/zzgm;->zzo(IIII)I

    move-result v0

    goto :goto_5

    :cond_9
    move v0, v14

    move v1, v15

    .line 34
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v5

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v9

    move/from16 v35, v14

    move v14, v0

    move/from16 v0, v35

    move/from16 v35, v15

    move v15, v1

    move/from16 v1, v35

    move/from16 v35, v11

    move v11, v9

    move/from16 v9, v35

    .line 36
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v8

    if-nez v10, :cond_b

    move/from16 v20, v0

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v0

    move/from16 v21, v1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    const/4 v1, -0x1

    :goto_8
    if-gt v0, v2, :cond_c

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move/from16 v22, v0

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    add-int/lit8 v0, v22, 0x1

    goto :goto_8

    :cond_b
    move/from16 v20, v0

    move/from16 v21, v1

    const/4 v1, -0x1

    .line 41
    :cond_c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    if-eqz v10, :cond_e

    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 55
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_d
    move/from16 v18, v1

    const/4 v0, 0x2

    goto :goto_e

    .line 49
    :cond_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v0, 0x4

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v0, :cond_d

    move/from16 v22, v0

    move/from16 v18, v1

    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x6

    if-ge v0, v1, :cond_13

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v23

    if-nez v23, :cond_10

    .line 51
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move/from16 v23, v0

    :cond_f
    const/4 v0, 0x3

    goto :goto_c

    :cond_10
    add-int v23, v10, v10

    add-int/lit8 v23, v23, 0x4

    const/16 v19, 0x1

    shl-int v1, v19, v23

    move/from16 v23, v0

    const/16 v0, 0x40

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v1, v19

    if-le v10, v1, :cond_11

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzh()I

    :cond_11
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_f

    .line 54
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :goto_c
    if-ne v10, v0, :cond_12

    const/4 v0, 0x3

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    :goto_d
    add-int v0, v23, v0

    goto :goto_a

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v18

    move/from16 v0, v22

    goto :goto_9

    .line 56
    :goto_e
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x8

    .line 58
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 62
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v0

    const/4 v1, 0x0

    new-array v10, v1, [I

    move/from16 v22, v2

    new-array v2, v1, [I

    move-object/from16 v23, v2

    move/from16 v24, v5

    const/4 v2, -0x1

    const/4 v5, -0x1

    :goto_f
    if-ge v1, v0, :cond_26

    if-eqz v1, :cond_21

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v25

    if-eqz v25, :cond_21

    move/from16 v25, v0

    add-int v0, v2, v5

    .line 72
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v26

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v27

    const/16 v19, 0x1

    add-int/lit8 v27, v27, 0x1

    add-int v26, v26, v26

    rsub-int/lit8 v26, v26, 0x1

    move/from16 v28, v1

    add-int/lit8 v1, v0, 0x1

    move-object/from16 v29, v6

    .line 74
    new-array v6, v1, [Z

    move-object/from16 v30, v6

    const/4 v6, 0x0

    :goto_10
    if-gt v6, v0, :cond_16

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v31

    if-nez v31, :cond_15

    .line 76
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v31

    aput-boolean v31, v30, v6

    goto :goto_11

    .line 77
    :cond_15
    aput-boolean v19, v30, v6

    :goto_11
    add-int/lit8 v6, v6, 0x1

    const/16 v19, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v6, v5, -0x1

    move/from16 v31, v0

    .line 78
    new-array v0, v1, [I

    .line 79
    new-array v1, v1, [I

    const/16 v32, 0x0

    :goto_12
    mul-int v33, v26, v27

    if-ltz v6, :cond_18

    .line 80
    aget v34, v23, v6

    add-int v34, v34, v33

    if-gez v34, :cond_17

    add-int v33, v2, v6

    .line 81
    aget-boolean v33, v30, v33

    if-eqz v33, :cond_17

    add-int/lit8 v33, v32, 0x1

    .line 82
    aput v34, v0, v32

    move/from16 v32, v33

    :cond_17
    add-int/lit8 v6, v6, -0x1

    goto :goto_12

    :cond_18
    if-gez v33, :cond_19

    .line 83
    aget-boolean v6, v30, v31

    if-eqz v6, :cond_19

    add-int/lit8 v6, v32, 0x1

    .line 84
    aput v33, v0, v32

    move/from16 v32, v6

    :cond_19
    move/from16 v26, v7

    move/from16 v6, v32

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v2, :cond_1b

    .line 85
    aget v27, v10, v7

    add-int v27, v27, v33

    if-gez v27, :cond_1a

    .line 86
    aget-boolean v32, v30, v7

    if-eqz v32, :cond_1a

    add-int/lit8 v32, v6, 0x1

    .line 87
    aput v27, v0, v6

    move/from16 v6, v32

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 88
    :cond_1b
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    add-int/lit8 v7, v2, -0x1

    const/16 v27, 0x0

    :goto_14
    if-ltz v7, :cond_1d

    .line 89
    aget v32, v10, v7

    add-int v32, v32, v33

    if-lez v32, :cond_1c

    .line 90
    aget-boolean v34, v30, v7

    if-eqz v34, :cond_1c

    add-int/lit8 v34, v27, 0x1

    .line 91
    aput v32, v1, v27

    move/from16 v27, v34

    :cond_1c
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_1d
    if-lez v33, :cond_1e

    .line 92
    aget-boolean v7, v30, v31

    if-eqz v7, :cond_1e

    add-int/lit8 v7, v27, 0x1

    .line 93
    aput v33, v1, v27

    move/from16 v27, v7

    :cond_1e
    move/from16 v7, v27

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v5, :cond_20

    .line 94
    aget v27, v23, v10

    add-int v27, v27, v33

    if-lez v27, :cond_1f

    add-int v31, v2, v10

    .line 95
    aget-boolean v31, v30, v31

    if-eqz v31, :cond_1f

    add-int/lit8 v31, v7, 0x1

    .line 96
    aput v27, v1, v7

    move/from16 v7, v31

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 97
    :cond_20
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v10, v0

    move-object/from16 v23, v1

    move v2, v6

    move v5, v7

    goto :goto_1a

    :cond_21
    move/from16 v25, v0

    move/from16 v28, v1

    move-object/from16 v29, v6

    move/from16 v26, v7

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v0

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v1

    .line 66
    new-array v2, v0, [I

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v0, :cond_23

    if-lez v5, :cond_22

    add-int/lit8 v6, v5, -0x1

    .line 67
    aget v6, v2, v6

    goto :goto_17

    :cond_22
    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v7

    const/16 v19, 0x1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    aput v6, v2, v5

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 69
    :cond_23
    new-array v5, v1, [I

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v1, :cond_25

    if-lez v6, :cond_24

    add-int/lit8 v7, v6, -0x1

    .line 70
    aget v7, v5, v7

    goto :goto_19

    :cond_24
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v10

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v7, v10

    aput v7, v5, v6

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_25
    move-object v10, v2

    move-object/from16 v23, v5

    move v2, v0

    move v5, v1

    :goto_1a
    add-int/lit8 v1, v28, 0x1

    move/from16 v0, v25

    move/from16 v7, v26

    move-object/from16 v6, v29

    goto/16 :goto_f

    :cond_26
    move-object/from16 v29, v6

    move/from16 v26, v7

    .line 98
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_27

    add-int/lit8 v2, v8, 0x5

    .line 100
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_27
    const/4 v0, 0x2

    .line 101
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_32

    .line 103
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x8

    .line 104
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v5

    const/16 v1, 0xff

    if-ne v5, v1, :cond_28

    const/16 v1, 0x10

    .line 105
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v5

    .line 106
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v1

    if-eqz v5, :cond_2a

    if-eqz v1, :cond_2a

    int-to-float v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_1c

    :cond_28
    const/16 v1, 0x11

    if-ge v5, v1, :cond_29

    .line 124
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgm;->zzb:[F

    .line 107
    aget v2, v1, v5

    goto :goto_1c

    .line 108
    :cond_29
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x23

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NalUnitUtil"

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2a
    :goto_1c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 110
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 111
    :cond_2b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x3

    .line 112
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_2c

    move v5, v0

    goto :goto_1d

    :cond_2c
    move v5, v3

    .line 114
    :goto_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x8

    .line 115
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v1

    .line 116
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v3

    .line 117
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 118
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v1

    goto :goto_1e

    :cond_2d
    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_1e

    :cond_2e
    if-eqz v3, :cond_2f

    .line 129
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzgj;->zzd:Lcom/google/android/gms/internal/ads/zzgi;

    if-eqz v0, :cond_2f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:[I

    .line 119
    aget v1, v1, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 120
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-le v3, v1, :cond_2f

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgh;

    .line 122
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgh;->zza:I

    .line 123
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzgh;->zzb:I

    .line 124
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgh;->zzc:I

    move v5, v1

    move v1, v0

    move v0, v5

    move v5, v3

    goto :goto_1e

    :cond_2f
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v5, -0x1

    .line 125
    :goto_1e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 126
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 127
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 128
    :cond_30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/2addr v14, v14

    :cond_31
    move/from16 v19, v0

    move/from16 v17, v2

    move-object v8, v12

    move v12, v13

    move v13, v15

    move/from16 v16, v20

    move/from16 v15, v21

    move/from16 v21, v1

    move/from16 v20, v5

    goto :goto_1f

    :cond_32
    move/from16 v17, v2

    move-object v8, v12

    move v12, v13

    move v13, v15

    move/from16 v16, v20

    move/from16 v15, v21

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    :goto_1f
    new-instance v5, Lcom/google/android/gms/internal/ads/zzgg;

    move/from16 v7, v22

    move/from16 v10, v24

    move-object/from16 v6, v29

    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/internal/ads/zzgg;-><init>(Lcom/google/android/gms/internal/ads/zzga;ILcom/google/android/gms/internal/ads/zzgb;IIIIIIIIFIIII)V

    return-object v5
.end method

.method public static zzh([BII)Lcom/google/android/gms/internal/ads/zzgk;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgn;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(IIZ)V

    return-object v0
.end method

.method public static zzi([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    if-le v0, v2, :cond_4

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_4

    .line 3
    aget-byte v3, p0, p1

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_4
    :goto_1
    const/4 v3, 0x2

    if-le v0, v3, :cond_6

    .line 3
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_6

    .line 4
    aget-byte v4, p0, p1

    if-nez v4, :cond_6

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_6
    :goto_2
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_3
    if-ge p1, v4, :cond_a

    .line 5
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-nez v6, :cond_9

    add-int/lit8 v6, p1, -0x2

    .line 6
    aget-byte v7, p0, v6

    if-nez v7, :cond_8

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    if-eq v5, v2, :cond_7

    goto :goto_4

    .line 7
    :cond_7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    return v6

    :cond_8
    :goto_4
    move p1, v6

    :cond_9
    add-int/lit8 p1, p1, 0x3

    goto :goto_3

    :cond_a
    if-le v0, v3, :cond_c

    add-int/lit8 p1, p2, -0x3

    .line 8
    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    :goto_5
    move p1, v2

    goto :goto_6

    :cond_b
    move p1, v1

    goto :goto_6

    :cond_c
    if-ne v0, v3, :cond_d

    .line 12
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    .line 9
    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :cond_d
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_b

    .line 10
    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    .line 8
    :goto_6
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_f

    add-int/lit8 p1, p2, -0x2

    .line 11
    aget-byte p1, p0, p1

    if-nez p1, :cond_e

    aget-byte p1, p0, v4

    if-nez p1, :cond_e

    :goto_7
    move p1, v2

    goto :goto_8

    :cond_e
    move p1, v1

    goto :goto_8

    .line 13
    :cond_f
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_e

    .line 12
    aget-byte p1, p0, v4

    if-nez p1, :cond_e

    goto :goto_7

    .line 11
    :goto_8
    aput-boolean p1, p3, v2

    .line 13
    aget-byte p0, p0, v4

    if-nez p0, :cond_10

    move v1, v2

    :cond_10
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static zzj([Z)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static zzk(Ljava/util/List;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    array-length v4, v2

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    new-array v6, v5, [Z

    .line 4
    sget v7, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance v7, Lcom/google/android/gms/internal/ads/zzguc;

    .line 5
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    move v8, v0

    .line 6
    :goto_1
    array-length v9, v2

    if-ge v8, v9, :cond_1

    .line 7
    invoke-static {v2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzgm;->zzi([BII[Z)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    :cond_0
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v6

    move v7, v0

    .line 10
    :goto_2
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 11
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzgn;

    .line 12
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v8, v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzgn;-><init>([BII)V

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgm;->zzl(Lcom/google/android/gms/internal/ads/zzgn;)Lcom/google/android/gms/internal/ads/zzga;

    move-result-object v9

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzga;->zza:I

    const/16 v11, 0x21

    if-ne v10, v11, :cond_3

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzga;->zzb:I

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x4

    .line 14
    invoke-virtual {v8, p0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result p0

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    const/4 v0, 0x1

    .line 17
    invoke-static {v8, v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzgm;->zzm(Lcom/google/android/gms/internal/ads/zzgn;ZILcom/google/android/gms/internal/ads/zzgb;)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zza:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzb:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzd:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgb;->zze:[I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzf:I

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdo;->zzb(IZII[II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v3
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzgn;)Lcom/google/android/gms/internal/ads/zzga;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzga;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzga;-><init>(III)V

    return-object v2
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzgn;ZILcom/google/android/gms/internal/ads/zzgb;)Lcom/google/android/gms/internal/ads/zzgb;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x6

    .line 1
    new-array v4, v3, [I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v7

    const/4 v8, 0x5

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v8

    move v9, v6

    move v10, v9

    :goto_0
    const/16 v11, 0x20

    if-ge v9, v11, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    shl-int/2addr v11, v9

    or-int/2addr v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_1
    if-ge v9, v3, :cond_2

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v11

    aput v11, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_2
    move-object/from16 v16, v4

    move v13, v7

    move v14, v8

    move v15, v10

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 10
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzgb;->zza:I

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzgb;->zzb:Z

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzgb;->zzc:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzgb;->zzd:I

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzgb;->zze:[I

    move v12, v3

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    move v12, v6

    move v13, v12

    move v14, v13

    move v15, v14

    .line 6
    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzf(I)I

    move-result v17

    move v2, v6

    :goto_4
    if-ge v6, v1, :cond_7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x58

    .line 8
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgn;->zze()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 9
    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    if-lez v1, :cond_8

    sub-int/2addr v5, v1

    add-int/2addr v5, v5

    .line 10
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    :cond_8
    new-instance v11, Lcom/google/android/gms/internal/ads/zzgb;

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzgb;-><init>(IZII[II)V

    return-object v11
.end method

.method private static zzn(IIII)I
    .locals 2

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    add-int/2addr p2, p3

    mul-int/2addr v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static zzo(IIII)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    add-int/2addr p2, p3

    mul-int/2addr v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static zzp(Lcom/google/android/gms/internal/ads/zzgn;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zzg()I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zza()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgn;->zzb(I)V

    return-void
.end method

.method private static zzq(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v1, "dva1"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "dvav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "dvh1"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dvhe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const-string p0, "video/hevc"

    return-object p0

    .line 2
    :cond_2
    :goto_0
    const-string p0, "video/avc"

    return-object p0

    :cond_3
    return-object v0
.end method
