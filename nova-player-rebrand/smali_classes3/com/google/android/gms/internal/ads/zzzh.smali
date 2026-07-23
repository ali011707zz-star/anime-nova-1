.class final synthetic Lcom/google/android/gms/internal/ads/zzzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzzl;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:[I

.field private final synthetic zzd:Landroid/graphics/Point;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzl;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzd:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final synthetic zza(ILcom/google/android/gms/internal/ads/zzbg;[I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    sget v1, Lcom/google/android/gms/internal/ads/zzaaa;->$r8$clinit:I

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzh;->zzd:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:[I

    aget v8, v2, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    if-eqz v1, :cond_0

    .line 2
    iget v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzi:I

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzj:I

    .line 4
    :goto_1
    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzl:Z

    const v13, 0x7fffffff

    if-eq v2, v13, :cond_a

    if-ne v1, v13, :cond_2

    move v10, v13

    const/16 v16, -0x1

    goto/16 :goto_8

    :cond_2
    move v7, v13

    const/4 v6, 0x0

    .line 5
    :goto_2
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v6, v9, :cond_9

    .line 6
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    .line 7
    iget v14, v9, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-lez v14, :cond_7

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-lez v9, :cond_7

    if-eqz v4, :cond_5

    if-gt v14, v9, :cond_3

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    const/4 v15, 0x1

    :goto_3
    if-gt v2, v1, :cond_4

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    const/4 v11, 0x1

    :goto_4
    if-eq v15, v11, :cond_5

    move v15, v1

    move v11, v2

    goto :goto_5

    :cond_5
    move v11, v1

    move v15, v2

    :goto_5
    mul-int v12, v14, v11

    const/16 v16, -0x1

    mul-int v10, v9, v15

    if-lt v12, v10, :cond_6

    new-instance v11, Landroid/graphics/Point;

    .line 8
    sget-object v12, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    add-int/2addr v10, v14

    add-int/lit8 v10, v10, -0x1

    div-int/2addr v10, v14

    invoke-direct {v11, v15, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    .line 10
    :cond_6
    new-instance v10, Landroid/graphics/Point;

    .line 9
    sget-object v15, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, -0x1

    div-int/2addr v12, v9

    invoke-direct {v10, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v11, v10

    :goto_6
    mul-int v10, v14, v9

    .line 10
    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    const v15, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v15

    float-to-int v12, v12

    if-lt v14, v12, :cond_8

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    mul-float/2addr v11, v15

    float-to-int v11, v11

    if-lt v9, v11, :cond_8

    if-ge v10, v7, :cond_8

    move v7, v10

    goto :goto_7

    :cond_7
    const/16 v16, -0x1

    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    const/16 v16, -0x1

    move v10, v7

    goto :goto_8

    :cond_a
    const/16 v16, -0x1

    move v10, v13

    .line 11
    :goto_8
    sget v1, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzguc;

    .line 12
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    const/4 v4, 0x0

    .line 13
    :goto_9
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v4, v1, :cond_d

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzv;->zzc()I

    move-result v1

    if-eq v10, v13, :cond_c

    move/from16 v12, v16

    if-eq v1, v12, :cond_b

    if-gt v1, v10, :cond_b

    :goto_a
    const/4 v9, 0x1

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    :cond_c
    move/from16 v12, v16

    goto :goto_a

    :goto_b
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzz;

    .line 15
    aget v6, p3, v4

    move/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzzz;-><init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzl;ILjava/lang/String;IZ)V

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    move/from16 v16, v12

    goto :goto_9

    .line 16
    :cond_d
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    return-object v1
.end method
