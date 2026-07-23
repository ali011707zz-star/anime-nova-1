.class public final Lcom/google/android/gms/internal/ads/zzaux;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/util/ArrayList;

.field public zzb:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(J)I
    .locals 24

    .line 0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x2

    aget v10, v4, v9

    const/4 v11, 0x3

    aget v12, v4, v11

    const/4 v13, 0x4

    aget v14, v4, v13

    const/4 v15, 0x5

    aget v16, v4, v15

    const/16 v17, 0x6

    aget v18, v4, v17

    const/16 v19, 0x7

    aget v4, v4, v19

    move/from16 v20, v5

    not-int v5, v6

    and-int/2addr v5, v8

    or-int/2addr v5, v10

    and-int/2addr v6, v12

    or-int/2addr v6, v14

    add-int/2addr v5, v6

    sub-int v5, v5, v16

    add-int v18, v18, v5

    const v5, 0x5072367

    rem-int/2addr v4, v5

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    aget-wide v5, v3, v20

    aget-wide v7, v3, v7

    aget-wide v9, v3, v9

    aget-wide v11, v3, v11

    aget-wide v13, v3, v13

    aget-wide v15, v3, v15

    aget-wide v20, v3, v17

    aget-wide v22, v3, v19

    move/from16 v17, v4

    not-long v3, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v9

    and-long/2addr v5, v11

    or-long/2addr v5, v13

    add-long/2addr v3, v5

    sub-long/2addr v3, v15

    add-long v20, v20, v3

    const-wide/32 v3, 0x1a27709e

    rem-long v22, v22, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    xor-int v5, v18, v17

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    add-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v5, v1

    goto :goto_0

    :cond_0
    xor-long v5, v20, v22

    neg-long v1, v1

    add-long/2addr v5, v1

    :goto_0
    cmp-long v1, v5, v3

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    int-to-long v1, v1

    cmp-long v1, v5, v1

    if-gez v1, :cond_1

    long-to-int v1, v5

    return v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzauv;-><init>()V

    throw v1

    nop

    :array_0
    .array-data 4
        0x77465f01
        0x7f00424f
        0x863b9a1
        -0x8eebdb2
        -0x7766f770
        0xc103e9e
        0x164585d
        0x440badfc
        0x5072367
    .end array-data

    :array_1
    .array-data 8
        0x100f59dc
        0x76db3a86
        0x96cdb2c
        -0x96cdf7d
        -0x76bfee8f
        0x212a72d4
        0x885e1b
        0x7fffca11
        0x1a27709e
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavg;)V
    .locals 10

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x4

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v0, v8

    const/4 v9, 0x7

    aget v0, v0, v9

    not-int v9, v1

    and-int/2addr v3, v9

    or-int/2addr v3, v4

    and-int/2addr v1, v5

    or-int/2addr v1, v6

    add-int/2addr v3, v1

    sub-int/2addr v3, v7

    add-int/2addr v8, v3

    const v1, 0x37e203ab

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    xor-int/2addr v0, v8

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzauw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzauw;-><init>()V

    throw p1

    nop

    :array_0
    .array-data 4
        0x1f3da4d5
        0x2c291419
        0x186028c7
        0x250fdc38
        0x176c9e5
        0x47f6d07d
        0x11bfcfe4
        0x3f8b0cbf
        0x37e203ab
    .end array-data
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzavg;
    .locals 9

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v0, v0, v8

    not-int v8, v1

    and-int/2addr v2, v8

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    add-int/2addr v2, v1

    sub-int/2addr v2, v6

    add-int/2addr v7, v2

    const v1, 0x1b640c94

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    if-lez v1, :cond_0

    xor-int/2addr v0, v7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Ljava/util/ArrayList;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzavg;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzauv;-><init>()V

    throw v0

    :array_0
    .array-data 4
        0x56e5e35
        0x5700e868
        0x22f18533
        -0xaea95b7
        -0x5d6aec7b
        0x36cbcad2
        0x8beda84
        0x2ee9fbe1
        0x1b640c94
    .end array-data
.end method

.method public final zzd(J)Lcom/google/android/gms/internal/ads/zzavg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;->zza(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavg;

    return-object p1
.end method

.method public final zze(JLcom/google/android/gms/internal/ads/zzavg;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaux;->zza:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;->zza(J)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
