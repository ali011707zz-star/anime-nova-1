.class public final Lcom/google/android/gms/internal/ads/zzamr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamf;


# static fields
.field private static final zza:[B

.field private static final zzb:[B

.field private static final zzc:[B


# instance fields
.field private final zzd:Landroid/graphics/Paint;

.field private final zze:Landroid/graphics/Paint;

.field private final zzf:Landroid/graphics/Canvas;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzamk;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzamj;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzamq;

.field private zzj:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzamr;->zza:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamr;->zzb:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamr;->zzc:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    .line 4
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzd:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 6
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    .line 8
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 9
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 10
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Canvas;

    .line 12
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:Landroid/graphics/Canvas;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamk;

    const/4 v8, 0x0

    const/16 v9, 0x23f

    const/16 v4, 0x2cf

    const/16 v5, 0x23f

    const/4 v6, 0x0

    move v7, v4

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzamk;-><init>(IIIIII)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamr;->zzd()[I

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamr;->zze()[I

    move-result-object v4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamr;->zzf()[I

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(I[I[I[I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Lcom/google/android/gms/internal/ads/zzamj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamq;

    .line 16
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamq;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzi:Lcom/google/android/gms/internal/ads/zzamq;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzeq;I)Lcom/google/android/gms/internal/ads/zzamj;
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamr;->zzd()[I

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamr;->zze()[I

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamr;->zzf()[I

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    :goto_0
    if-lez v6, :cond_6

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v7

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v8

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_0

    move-object v9, v3

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_1

    move-object v9, v4

    goto :goto_1

    :cond_1
    move-object v9, v5

    :goto_1
    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v8

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v11

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v12

    add-int/lit8 v6, v6, -0x6

    goto :goto_2

    :cond_2
    const/4 v8, 0x6

    .line 12
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    const/4 v11, 0x2

    shl-int/2addr v10, v11

    const/4 v12, 0x4

    .line 13
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v13

    shl-int/2addr v13, v12

    .line 14
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    .line 15
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v11

    shl-int/lit8 v8, v11, 0x6

    add-int/lit8 v6, v6, -0x4

    move v11, v12

    move v12, v8

    move v8, v10

    move v10, v13

    :goto_2
    const/16 v13, 0xff

    if-nez v8, :cond_3

    move v12, v13

    :cond_3
    if-nez v8, :cond_4

    const/4 v11, 0x0

    :cond_4
    if-nez v8, :cond_5

    const/4 v10, 0x0

    :cond_5
    and-int/2addr v12, v13

    rsub-int v12, v12, 0xff

    add-int/lit8 v11, v11, -0x80

    move/from16 v16, v2

    int-to-double v1, v8

    .line 16
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    add-int/lit8 v10, v10, -0x80

    int-to-double v14, v10

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v14

    move-object v10, v9

    add-double v8, v1, v17

    double-to-int v8, v8

    .line 17
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-byte v9, v12

    const/4 v12, 0x0

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v12, v11

    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v19, v19, v12

    sub-double v19, v1, v19

    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v14, v14, v21

    sub-double v14, v19, v14

    double-to-int v11, v14

    const/16 v14, 0xff

    .line 18
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v15, 0x0

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    mul-double v12, v12, v17

    add-double/2addr v1, v12

    double-to-int v1, v1

    .line 19
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v9, v8, v11, v1}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v1

    .line 20
    aput v1, v10, v7

    move/from16 v2, v16

    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v2

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamj;

    move/from16 v1, v16

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzeq;)Lcom/google/android/gms/internal/ads/zzaml;
    .locals 6

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v1

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v3

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    mul-int/2addr v2, v0

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v0

    const/4 v4, 0x0

    if-lez v2, :cond_1

    new-array v5, v2, [B

    .line 11
    invoke-virtual {p0, v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzn([BII)V

    :cond_1
    if-lez v0, :cond_2

    new-array v2, v0, [B

    .line 12
    invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzeq;->zzn([BII)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    .line 8
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaml;

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzaml;-><init>(IZ[B[B)V

    return-object p0
.end method

.method private static zzd()[I
    .locals 4

    .line 0
    const/high16 v0, -0x1000000

    const v1, -0x808081

    const/4 v2, 0x0

    const/4 v3, -0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private static zze()[I
    .locals 10

    const/16 v0, 0x10

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    and-int/lit8 v5, v4, 0x4

    and-int/lit8 v6, v4, 0x2

    and-int/lit8 v7, v4, 0x1

    const/16 v8, 0x8

    const/16 v9, 0xff

    if-ge v4, v8, :cond_3

    if-eq v3, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v9

    :goto_1
    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    invoke-static {v9, v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v5

    aput v5, v1, v4

    goto :goto_7

    :cond_3
    const/16 v8, 0x7f

    if-eq v3, v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v6, :cond_5

    move v6, v8

    goto :goto_5

    :cond_5
    move v6, v2

    :goto_5
    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move v8, v2

    :goto_6
    invoke-static {v9, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v5

    .line 2
    aput v5, v1, v4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private static zzf()[I
    .locals 15

    const/16 v0, 0x100

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    and-int/lit8 v7, v3, 0x2

    and-int/lit8 v8, v3, 0x4

    if-eq v6, v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v7, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    const/16 v7, 0x3f

    invoke-static {v7, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v7, v3, 0x88

    const/16 v8, 0xaa

    const/16 v9, 0x55

    if-eqz v7, :cond_19

    const/16 v10, 0x7f

    if-eq v7, v4, :cond_12

    const/16 v4, 0x80

    const/16 v8, 0x2b

    if-eq v7, v4, :cond_b

    const/16 v4, 0x88

    if-eq v7, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v7, v3, 0x1

    and-int/lit8 v10, v3, 0x20

    and-int/lit8 v11, v3, 0x2

    and-int/lit8 v12, v3, 0x40

    and-int/lit8 v13, v3, 0x4

    if-eq v6, v7, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v8

    :goto_4
    if-eqz v4, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    if-eqz v11, :cond_7

    move v7, v8

    goto :goto_6

    :cond_7
    move v7, v2

    :goto_6
    if-eqz v10, :cond_8

    move v10, v9

    goto :goto_7

    :cond_8
    move v10, v2

    :goto_7
    if-eqz v13, :cond_9

    goto :goto_8

    :cond_9
    move v8, v2

    :goto_8
    if-eqz v12, :cond_a

    goto :goto_9

    :cond_a
    move v9, v2

    :goto_9
    add-int/2addr v6, v4

    add-int/2addr v7, v10

    add-int/2addr v8, v9

    .line 5
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v4

    .line 2
    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v7, v3, 0x1

    and-int/lit8 v11, v3, 0x20

    and-int/lit8 v12, v3, 0x2

    and-int/lit8 v13, v3, 0x40

    and-int/lit8 v14, v3, 0x4

    if-eq v6, v7, :cond_c

    move v6, v2

    goto :goto_a

    :cond_c
    move v6, v8

    :goto_a
    add-int/2addr v6, v10

    if-eqz v4, :cond_d

    move v4, v9

    goto :goto_b

    :cond_d
    move v4, v2

    :goto_b
    if-eqz v12, :cond_e

    move v7, v8

    goto :goto_c

    :cond_e
    move v7, v2

    :goto_c
    add-int/2addr v7, v10

    if-eqz v11, :cond_f

    move v11, v9

    goto :goto_d

    :cond_f
    move v11, v2

    :goto_d
    if-eqz v14, :cond_10

    goto :goto_e

    :cond_10
    move v8, v2

    :goto_e
    add-int/2addr v8, v10

    if-eqz v13, :cond_11

    goto :goto_f

    :cond_11
    move v9, v2

    :goto_f
    add-int/2addr v6, v4

    add-int/2addr v7, v11

    add-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v4

    .line 3
    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v5, v3, 0x1

    and-int/lit8 v7, v3, 0x20

    and-int/lit8 v11, v3, 0x2

    and-int/lit8 v12, v3, 0x40

    and-int/lit8 v13, v3, 0x4

    if-eq v6, v5, :cond_13

    move v5, v2

    goto :goto_10

    :cond_13
    move v5, v9

    :goto_10
    if-eqz v4, :cond_14

    move v4, v8

    goto :goto_11

    :cond_14
    move v4, v2

    :goto_11
    if-eqz v11, :cond_15

    move v6, v9

    goto :goto_12

    :cond_15
    move v6, v2

    :goto_12
    if-eqz v7, :cond_16

    move v7, v8

    goto :goto_13

    :cond_16
    move v7, v2

    :goto_13
    if-eqz v13, :cond_17

    goto :goto_14

    :cond_17
    move v9, v2

    :goto_14
    if-eqz v12, :cond_18

    goto :goto_15

    :cond_18
    move v8, v2

    :goto_15
    add-int/2addr v9, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v4

    invoke-static {v10, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v4

    .line 4
    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v7, v3, 0x1

    and-int/lit8 v10, v3, 0x20

    and-int/lit8 v11, v3, 0x2

    and-int/lit8 v12, v3, 0x40

    and-int/lit8 v13, v3, 0x4

    if-eq v6, v7, :cond_1a

    move v6, v2

    goto :goto_16

    :cond_1a
    move v6, v9

    :goto_16
    if-eqz v4, :cond_1b

    move v4, v8

    goto :goto_17

    :cond_1b
    move v4, v2

    :goto_17
    if-eqz v11, :cond_1c

    move v7, v9

    goto :goto_18

    :cond_1c
    move v7, v2

    :goto_18
    if-eqz v10, :cond_1d

    move v10, v8

    goto :goto_19

    :cond_1d
    move v10, v2

    :goto_19
    if-eqz v13, :cond_1e

    goto :goto_1a

    :cond_1e
    move v9, v2

    :goto_1a
    if-eqz v12, :cond_1f

    goto :goto_1b

    :cond_1f
    move v8, v2

    :goto_1b
    add-int/2addr v9, v8

    add-int/2addr v7, v10

    add-int/2addr v6, v4

    .line 1
    invoke-static {v5, v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzamr;->zzg(IIII)I

    move-result v4

    .line 5
    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method

.method private static zzg(IIII)I
    .locals 0

    .line 0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static zzh([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v7, p5

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzeq;

    array-length v2, v0

    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    move/from16 v2, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v3

    if-eqz v3, :cond_21

    const/16 v13, 0x8

    .line 2
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_20

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v16, 0x0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x10

    .line 10
    invoke-static {v3, v13, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzi(IILcom/google/android/gms/internal/ads/zzeq;)[B

    move-result-object v11

    goto :goto_0

    .line 11
    :pswitch_1
    invoke-static {v15, v13, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzi(IILcom/google/android/gms/internal/ads/zzeq;)[B

    move-result-object v10

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-static {v15, v15, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzi(IILcom/google/android/gms/internal/ads/zzeq;)[B

    move-result-object v12

    goto :goto_0

    :pswitch_3
    move v14, v2

    move/from16 v2, v16

    .line 3
    :goto_1
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_0

    move v15, v2

    move/from16 v17, v4

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v3

    const/4 v5, 0x7

    if-nez v3, :cond_2

    .line 5
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v15, v2

    move/from16 v17, v3

    move/from16 v3, v16

    goto :goto_2

    :cond_1
    move v15, v4

    move/from16 v3, v16

    move/from16 v17, v3

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    .line 7
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v5

    move v15, v2

    move/from16 v17, v3

    move v3, v5

    :goto_2
    if-eqz v17, :cond_3

    if-eqz v7, :cond_3

    add-int/lit8 v2, v9, 0x1

    move v5, v4

    int-to-float v4, v9

    .line 8
    aget v3, p1, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v14

    add-int v6, v14, v17

    int-to-float v6, v6

    int-to-float v2, v2

    move v0, v5

    move v5, v6

    move v6, v2

    move-object/from16 v2, p6

    .line 9
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    add-int v14, v14, v17

    if-nez v15, :cond_4

    move v4, v0

    move v2, v15

    goto :goto_1

    :cond_4
    move v2, v14

    goto/16 :goto_0

    :pswitch_4
    move v0, v4

    if-ne v1, v14, :cond_6

    if-nez v11, :cond_5

    .line 36
    sget-object v3, Lcom/google/android/gms/internal/ads/zzamr;->zzc:[B

    move-object/from16 v17, v3

    goto :goto_4

    :cond_5
    move-object/from16 v17, v11

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    move/from16 v4, v16

    .line 13
    :goto_5
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v18, v0

    move/from16 v19, v4

    goto/16 :goto_a

    .line 14
    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v3

    if-nez v3, :cond_9

    .line 15
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v3, 0x2

    move/from16 v18, v3

    :goto_6
    move/from16 v19, v4

    :goto_7
    move/from16 v3, v16

    goto :goto_a

    :cond_8
    move/from16 v19, v0

    :goto_8
    move/from16 v3, v16

    move/from16 v18, v3

    goto :goto_a

    .line 16
    :cond_9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v3

    if-nez v3, :cond_a

    .line 17
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    add-int/2addr v3, v15

    .line 18
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v6

    :goto_9
    move/from16 v18, v3

    move/from16 v19, v4

    move v3, v6

    goto :goto_a

    .line 19
    :cond_a
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_e

    if-eq v3, v0, :cond_d

    if-eq v3, v5, :cond_c

    if-eq v3, v14, :cond_b

    move/from16 v19, v4

    goto :goto_8

    .line 20
    :cond_b
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    .line 21
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v6

    goto :goto_9

    .line 22
    :cond_c
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    .line 23
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v6

    goto :goto_9

    :cond_d
    move/from16 v19, v4

    move/from16 v18, v5

    goto :goto_7

    :cond_e
    move/from16 v18, v0

    goto :goto_6

    :goto_a
    if-eqz v18, :cond_10

    if-eqz v7, :cond_10

    add-int/lit8 v4, v9, 0x1

    int-to-float v6, v9

    if-eqz v17, :cond_f

    .line 24
    aget-byte v3, v17, v3

    :cond_f
    int-to-float v4, v4

    aget v3, p1, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v2

    add-int v5, v2, v18

    int-to-float v5, v5

    move v15, v6

    move v6, v4

    move v4, v15

    move/from16 v20, v2

    const/4 v15, 0x2

    move-object/from16 v2, p6

    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_10
    move/from16 v20, v2

    move v15, v5

    :goto_b
    add-int v2, v20, v18

    if-eqz v19, :cond_11

    .line 26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzm()V

    goto/16 :goto_0

    :cond_11
    move v5, v15

    move/from16 v4, v19

    const/4 v15, 0x4

    goto/16 :goto_5

    :pswitch_5
    move v0, v4

    move v15, v5

    if-ne v1, v14, :cond_13

    if-nez v10, :cond_12

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzamr;->zzb:[B

    :goto_c
    move-object/from16 v17, v3

    goto :goto_d

    :cond_12
    move-object/from16 v17, v10

    goto :goto_d

    :cond_13
    if-ne v1, v15, :cond_15

    if-nez v12, :cond_14

    .line 36
    sget-object v3, Lcom/google/android/gms/internal/ads/zzamr;->zza:[B

    goto :goto_c

    :cond_14
    move-object/from16 v17, v12

    goto :goto_d

    :cond_15
    const/16 v17, 0x0

    :goto_d
    move/from16 v4, v16

    .line 27
    :goto_e
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_16

    move/from16 v18, v0

    move v5, v3

    :goto_f
    move/from16 v19, v4

    :goto_10
    const/4 v3, 0x4

    goto/16 :goto_12

    .line 28
    :cond_16
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 29
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    add-int/2addr v3, v14

    .line 30
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v5

    :goto_11
    move/from16 v18, v3

    goto :goto_f

    .line 31
    :cond_17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v3

    if-eqz v3, :cond_18

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v5, v16

    goto :goto_10

    .line 32
    :cond_18
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    if-eqz v3, :cond_1c

    if-eq v3, v0, :cond_1b

    if-eq v3, v15, :cond_1a

    if-eq v3, v14, :cond_19

    move/from16 v19, v4

    move/from16 v5, v16

    move/from16 v18, v5

    goto :goto_10

    .line 33
    :cond_19
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    .line 34
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v5

    goto :goto_11

    :cond_1a
    const/4 v3, 0x4

    .line 35
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    .line 36
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v6

    move/from16 v19, v4

    move/from16 v18, v5

    move v5, v6

    goto :goto_12

    :cond_1b
    const/4 v3, 0x4

    move/from16 v19, v4

    move/from16 v18, v15

    move/from16 v5, v16

    goto :goto_12

    :cond_1c
    const/4 v3, 0x4

    move/from16 v19, v0

    move/from16 v5, v16

    move/from16 v18, v5

    :goto_12
    if-eqz v18, :cond_1e

    if-eqz v7, :cond_1e

    add-int/lit8 v4, v9, 0x1

    int-to-float v6, v9

    if-eqz v17, :cond_1d

    .line 37
    aget-byte v5, v17, v5

    :cond_1d
    int-to-float v4, v4

    aget v5, p1, v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    move v5, v3

    int-to-float v3, v2

    add-int v0, v2, v18

    int-to-float v0, v0

    move/from16 v21, v6

    move v6, v4

    move/from16 v4, v21

    move/from16 v21, v5

    move v5, v0

    move v0, v2

    move-object/from16 v2, p6

    .line 38
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_13

    :cond_1e
    move v0, v2

    move/from16 v21, v3

    :goto_13
    add-int v2, v0, v18

    if-eqz v19, :cond_1f

    .line 39
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzm()V

    :goto_14
    move-object/from16 v7, p5

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v7, p5

    move/from16 v4, v19

    const/4 v0, 0x1

    goto/16 :goto_e

    :cond_20
    add-int/lit8 v9, v9, 0x2

    move/from16 v2, p3

    goto :goto_14

    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzi(IILcom/google/android/gms/internal/ads/zzeq;)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int v2, v1, p3

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeq;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v1

    const/16 v2, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v1, v2, :cond_b

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    const/16 v8, 0xf

    if-ne v2, v8, :cond_b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzi:Lcom/google/android/gms/internal/ads/zzamq;

    .line 3
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v8

    const/16 v9, 0x10

    .line 4
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 5
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v11

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zze()I

    move-result v12

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v14

    if-le v13, v14, :cond_0

    const-string v1, "DvbParser"

    const-string v2, "Data field length exceeds limit"

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v1

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x4

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_8

    .line 67
    :pswitch_0
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v10, v1, :cond_a

    .line 9
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v1

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 12
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v14

    .line 13
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v15

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v7

    .line 15
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v1

    .line 16
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v4

    .line 17
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v5

    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v16, v7

    goto :goto_1

    :cond_1
    move/from16 v17, v14

    move/from16 v19, v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_1
    new-instance v13, Lcom/google/android/gms/internal/ads/zzamk;

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzamk;-><init>(IIIIII)V

    iput-object v13, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    goto/16 :goto_8

    :pswitch_1
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v10, v1, :cond_2

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lcom/google/android/gms/internal/ads/zzeq;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzamq;->zze:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaml;->zza:I

    .line 19
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzb:I

    if-ne v10, v1, :cond_a

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lcom/google/android/gms/internal/ads/zzeq;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzg:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaml;->zza:I

    .line 21
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v10, v1, :cond_3

    .line 22
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzeq;I)Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzamj;->zza:I

    .line 23
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzb:I

    if-ne v10, v1, :cond_a

    .line 24
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzeq;I)Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzf:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzamj;->zza:I

    .line 25
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzi:Lcom/google/android/gms/internal/ads/zzamm;

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v10, v14, :cond_a

    if-eqz v8, :cond_a

    .line 26
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v16

    .line 27
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzi()Z

    move-result v17

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 30
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v18

    .line 31
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v19

    .line 32
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v20

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v21

    .line 34
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 35
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v22

    .line 36
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v23

    .line 37
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v24

    .line 38
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v25

    .line 39
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    add-int/lit8 v11, v11, -0xa

    new-instance v4, Landroid/util/SparseArray;

    .line 40
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    if-lez v11, :cond_6

    .line 41
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 42
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v14

    .line 43
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v28

    const/16 v15, 0xc

    .line 44
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v29

    .line 45
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 46
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v30

    add-int/lit8 v15, v11, -0x6

    if-eq v14, v5, :cond_5

    if-ne v14, v6, :cond_4

    move v14, v6

    goto :goto_4

    :cond_4
    move v11, v15

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_3
    move/from16 v27, v14

    goto :goto_5

    .line 47
    :cond_5
    :goto_4
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v15

    .line 48
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v26

    add-int/lit8 v11, v11, -0x8

    move/from16 v31, v15

    move/from16 v32, v26

    goto :goto_3

    :goto_5
    new-instance v26, Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct/range {v26 .. v32}, Lcom/google/android/gms/internal/ads/zzamp;-><init>(IIIIII)V

    move-object/from16 v14, v26

    .line 49
    invoke-virtual {v4, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v15, Lcom/google/android/gms/internal/ads/zzamo;

    move-object/from16 v26, v4

    invoke-direct/range {v15 .. v26}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzamm;->zzb:I

    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Landroid/util/SparseArray;

    iget v4, v15, Lcom/google/android/gms/internal/ads/zzamo;->zza:I

    .line 50
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamo;

    if-eqz v1, :cond_7

    const/4 v7, 0x0

    :goto_6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v7, v5, :cond_7

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzamp;

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Landroid/util/SparseArray;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzamo;->zza:I

    .line 53
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v10, v4, :cond_a

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzi:Lcom/google/android/gms/internal/ads/zzamm;

    .line 54
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v5

    .line 55
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v7

    .line 56
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v8

    .line 57
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    add-int/lit8 v11, v11, -0x2

    new-instance v6, Landroid/util/SparseArray;

    .line 58
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    :goto_7
    if-lez v11, :cond_8

    .line 59
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v10

    .line 60
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 61
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v13

    .line 62
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v14

    new-instance v15, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(II)V

    .line 63
    invoke-virtual {v6, v10, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x6

    goto :goto_7

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamm;

    invoke-direct {v1, v5, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(IIILandroid/util/SparseArray;)V

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamm;->zzb:I

    if-eqz v5, :cond_9

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzi:Lcom/google/android/gms/internal/ads/zzamm;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zze:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_8

    :cond_9
    if-eqz v4, :cond_a

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzamm;->zza:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzamm;->zza:I

    if-eq v4, v5, :cond_a

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzamq;->zzi:Lcom/google/android/gms/internal/ads/zzamm;

    .line 67
    :cond_a
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeq;->zze()I

    move-result v1

    sub-int/2addr v12, v1

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzeq;->zzo(I)V

    goto/16 :goto_0

    .line 66
    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzi:Lcom/google/android/gms/internal/ads/zzamq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzamq;->zzi:Lcom/google/android/gms/internal/ads/zzamm;

    if-nez v2, :cond_c

    new-instance v8, Lcom/google/android/gms/internal/ads/zzalx;

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v12, v10

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzalx;-><init>(Ljava/util/List;JJ)V

    :goto_9
    move-object/from16 v1, p5

    goto/16 :goto_13

    .line 120
    :cond_c
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamq;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    :cond_d
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_e

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzamk;->zza:I

    add-int/2addr v9, v5

    .line 69
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v9, v8, :cond_e

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzamk;->zzb:I

    add-int/2addr v8, v5

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_f

    :cond_e
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzamk;->zza:I

    add-int/2addr v8, v5

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzamk;->zzb:I

    add-int/2addr v9, v5

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 71
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:Landroid/graphics/Canvas;

    .line 72
    invoke-virtual {v9, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    new-instance v11, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Landroid/util/SparseArray;

    const/4 v8, 0x0

    .line 74
    :goto_a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_1a

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:Landroid/graphics/Canvas;

    .line 75
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 76
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzamn;

    .line 77
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzamo;

    .line 79
    iget v13, v9, Lcom/google/android/gms/internal/ads/zzamn;->zza:I

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzamk;->zzc:I

    add-int/2addr v13, v14

    .line 80
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzamn;->zzb:I

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzamk;->zze:I

    add-int/2addr v9, v14

    .line 81
    iget v14, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzc:I

    add-int v15, v13, v14

    move/from16 p1, v5

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzamk;->zzd:I

    .line 82
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 83
    iget v7, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    add-int v6, v9, v7

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzamk;->zzf:I

    .line 84
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 85
    invoke-virtual {v12, v13, v9, v5, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 86
    iget v4, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzf:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzamj;

    if-nez v5, :cond_10

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzamq;->zzf:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzamj;

    if-nez v5, :cond_10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Lcom/google/android/gms/internal/ads/zzamj;

    .line 88
    :cond_10
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Landroid/util/SparseArray;

    move-object/from16 v19, v2

    move/from16 v20, v8

    const/4 v2, 0x0

    .line 89
    :goto_b
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_16

    .line 90
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 91
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v21, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/gms/internal/ads/zzamp;

    move-object/from16 v22, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzamq;->zze:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaml;

    if-nez v4, :cond_11

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzamq;->zzg:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaml;

    :cond_11
    if-eqz v4, :cond_15

    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzaml;->zzb:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    :goto_c
    move-object/from16 v17, v8

    move v8, v14

    goto :goto_d

    .line 97
    :cond_12
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzd:Landroid/graphics/Paint;

    goto :goto_c

    .line 94
    :goto_d
    iget v14, v10, Lcom/google/android/gms/internal/ads/zzamo;->zze:I

    move-object/from16 v23, v1

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzamp;->zza:I

    add-int/2addr v1, v13

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzamp;->zzb:I

    add-int v16, v9, v2

    const/4 v2, 0x3

    if-ne v14, v2, :cond_13

    .line 95
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzamj;->zzd:[I

    :goto_e
    move-object/from16 v18, v12

    goto :goto_f

    :cond_13
    const/4 v2, 0x2

    if-ne v14, v2, :cond_14

    .line 96
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzamj;->zzc:[I

    goto :goto_e

    .line 97
    :cond_14
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzamj;->zzb:[I

    goto :goto_e

    .line 95
    :goto_f
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzaml;->zzc:[B

    move/from16 v33, v15

    move v15, v1

    move v1, v13

    move-object v13, v2

    move/from16 v2, v33

    .line 98
    invoke-static/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzamr;->zzh([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzaml;->zzd:[B

    add-int/lit8 v16, v16, 0x1

    .line 99
    invoke-static/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzamr;->zzh([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_10

    :cond_15
    move-object/from16 v23, v1

    move-object/from16 v18, v12

    move v1, v13

    move v8, v14

    move v2, v15

    :goto_10
    add-int/lit8 v4, v21, 0x1

    move v13, v1

    move v15, v2

    move v2, v4

    move v14, v8

    move-object/from16 v12, v18

    move-object/from16 v4, v22

    move-object/from16 v1, v23

    goto :goto_b

    :cond_16
    move-object/from16 v23, v1

    move-object/from16 v18, v12

    move v1, v13

    move v8, v14

    move v2, v15

    int-to-float v14, v9

    int-to-float v13, v1

    .line 100
    iget-boolean v4, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Z

    if-eqz v4, :cond_19

    .line 101
    iget v4, v10, Lcom/google/android/gms/internal/ads/zzamo;->zze:I

    const/4 v12, 0x3

    if-ne v4, v12, :cond_17

    .line 102
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzamj;->zzd:[I

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzg:I

    aget v4, v4, v5

    const/4 v15, 0x2

    goto :goto_11

    :cond_17
    const/4 v15, 0x2

    if-ne v4, v15, :cond_18

    .line 103
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzamj;->zzc:[I

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    aget v4, v4, v5

    goto :goto_11

    .line 104
    :cond_18
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzamj;->zzb:[I

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    aget v4, v4, v5

    .line 102
    :goto_11
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v6

    int-to-float v2, v2

    move/from16 v16, v4

    move-object/from16 v17, v5

    move v4, v15

    move v15, v2

    move v2, v12

    move-object/from16 v12, v18

    .line 106
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_19
    move-object/from16 v12, v18

    const/4 v2, 0x3

    const/4 v4, 0x2

    :goto_12
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Landroid/graphics/Bitmap;

    .line 107
    invoke-static {v6, v1, v9, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcw;

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzamk;->zza:I

    int-to-float v1, v1

    div-float/2addr v13, v1

    .line 109
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    const/4 v6, 0x0

    .line 110
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzj(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzamk;->zzb:I

    int-to-float v9, v9

    div-float/2addr v14, v9

    .line 111
    invoke-virtual {v5, v14, v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    .line 112
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    int-to-float v8, v8

    div-float/2addr v8, v1

    .line 113
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzcw;->zzm(F)Lcom/google/android/gms/internal/ads/zzcw;

    int-to-float v1, v7

    div-float/2addr v1, v9

    .line 114
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(F)Lcom/google/android/gms/internal/ads/zzcw;

    .line 115
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v1

    .line 116
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 117
    invoke-virtual {v12, v6, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v20, 0x1

    move/from16 v5, p1

    move v6, v4

    move-object/from16 v1, v23

    move v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_a

    .line 104
    :cond_1a
    new-instance v10, Lcom/google/android/gms/internal/ads/zzalx;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v12

    .line 119
    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzalx;-><init>(Ljava/util/List;JJ)V

    move-object v8, v10

    goto/16 :goto_9

    .line 120
    :goto_13
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
