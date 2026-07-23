.class public final Lcom/google/android/gms/internal/ads/zzaug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(J)Lcom/google/android/gms/internal/ads/zzavg;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavg;->zzf(Lcom/google/android/gms/internal/ads/zzauy;)Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(JLcom/google/android/gms/internal/ads/zzavf;Z)I
    .locals 23

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    const/4 v7, 0x2

    aget-wide v7, v0, v7

    const/4 v9, 0x3

    aget-wide v9, v0, v9

    const/4 v11, 0x4

    aget-wide v11, v0, v11

    const/4 v13, 0x5

    aget-wide v13, v0, v13

    const/4 v15, 0x6

    aget-wide v15, v0, v15

    const/16 v17, 0x7

    aget-wide v17, v0, v17

    move-wide/from16 v19, v5

    not-long v4, v2

    and-long v4, v4, v19

    or-long/2addr v4, v7

    and-long/2addr v2, v9

    or-long/2addr v2, v11

    add-long/2addr v4, v2

    sub-long/2addr v4, v13

    add-long/2addr v15, v4

    const-wide/32 v2, 0x611b7818

    rem-long v17, v17, v2

    const v2, 0x66deaaf0

    not-int v3, v2

    const v4, 0x172600ca

    and-int/2addr v3, v4

    const v4, 0x2c185527

    or-int/2addr v3, v4

    const v4, 0x532e08dd

    and-int/2addr v2, v4

    const v4, 0x40d83f37

    or-int/2addr v2, v4

    add-int/2addr v3, v2

    const v2, 0x7b9c5d22

    sub-int/2addr v3, v2

    const v2, 0xafd33ca

    const v4, 0x5c63d66c

    rem-int/2addr v4, v2

    const v2, 0x50f0687

    not-int v5, v2

    const v6, 0x2ae22230

    and-int/2addr v5, v6

    const v6, 0x290d888c

    or-int/2addr v5, v6

    const v6, 0x12eae273

    and-int/2addr v2, v6

    const v6, 0x300dc8c3

    or-int/2addr v2, v6

    add-int/2addr v5, v2

    const v2, 0x55b5c0ef

    sub-int/2addr v5, v2

    const v2, 0x392c3c39

    const v6, 0x78a02b09

    rem-int/2addr v6, v2

    const v2, 0x11886451

    not-int v7, v2

    const v8, 0x57550c00

    and-int/2addr v7, v8

    const v8, 0xc08f0c2

    or-int/2addr v7, v8

    const v8, 0x53553e06

    and-int/2addr v2, v8

    const v8, 0x482333e

    or-int/2addr v2, v8

    add-int/2addr v7, v2

    const v2, 0x4f47b728

    sub-int/2addr v7, v2

    const v2, 0x24e7deff

    const v8, 0x5e683656

    rem-int/2addr v8, v2

    if-eqz p3, :cond_0

    const v2, 0x51fd456e

    not-int v9, v2

    const v10, 0x376ec06e

    and-int/2addr v9, v10

    const v10, 0x4a72af82    # 3976160.5f

    or-int/2addr v9, v10

    const v10, 0x3d0c407c

    and-int/2addr v2, v10

    const v10, 0x8228b92

    or-int/2addr v2, v10

    add-int/2addr v9, v2

    const v2, 0x7ca1a2af

    sub-int/2addr v9, v2

    const v2, 0xda1a94f

    const v10, 0x780d2366

    rem-int/2addr v10, v2

    add-long v11, p0, p0

    xor-int v2, v9, v10

    shr-long v9, p0, v2

    xor-long/2addr v9, v11

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p0

    :goto_0
    const/4 v2, 0x1

    :goto_1
    xor-int v11, v5, v6

    xor-long v12, v15, v17

    ushr-long v19, v9, v11

    const-wide/16 v21, 0x0

    cmp-long v11, v19, v21

    if-nez v11, :cond_1

    if-gez v2, :cond_2

    :cond_1
    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v1

    :goto_2
    and-long/2addr v9, v12

    long-to-int v9, v9

    if-eqz v11, :cond_3

    xor-int v10, v7, v8

    xor-int v12, v3, v4

    or-int/2addr v9, v10

    shl-int/2addr v9, v12

    shr-int/2addr v9, v12

    :cond_3
    int-to-byte v9, v9

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzavf;->zza(B)V

    if-nez v11, :cond_4

    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v9, v19

    goto :goto_1

    nop

    :array_0
    .array-data 8
        0x773d0e7b
        0x5802553e
        0x6d512429
        0x10065116
        0x6da40c08
        0x1045d6a1eL
        0x1acca918
        0x62823856
        0x611b7818
    .end array-data
.end method
