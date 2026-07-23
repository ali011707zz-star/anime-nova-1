.class final Lcom/google/android/gms/internal/ads/zzanl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:[I

.field private zzb:Z

.field private zzc:Z

.field private zzd:[I

.field private zze:I

.field private zzf:I

.field private zzg:Landroid/graphics/Rect;

.field private zzh:I

.field private zzi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    return-void
.end method

.method private static zze([II)I
    .locals 1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method private static zzf(II)I
    .locals 1

    .line 0
    mul-int/lit8 p1, p1, 0x11

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzeq;ZLandroid/graphics/Rect;[I)V
    .locals 9

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v2, p2, v1

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    const/4 v3, 0x0

    :goto_0
    move v4, v3

    :cond_0
    move v6, v0

    move v5, v3

    :goto_1
    const/4 v7, 0x4

    if-ge v5, v6, :cond_2

    const/16 v8, 0x40

    if-gt v6, v8, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v8

    if-ge v8, v7, :cond_1

    const/4 v5, -0x1

    move v6, v5

    move v5, v3

    goto :goto_2

    :cond_1
    shl-int/lit8 v5, v5, 0x4

    .line 3
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v7

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 v6, v5, 0x3

    if-ge v5, v7, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    shr-int/lit8 v5, v5, 0x2

    :goto_2
    sub-int v7, v1, v4

    .line 4
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_4

    add-int v7, v2, v5

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:[I

    .line 5
    aget v6, v8, v6

    invoke-static {p4, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v4, v5

    move v2, v7

    :cond_4
    if-lt v4, v1, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-lt p2, p3, :cond_5

    return-void

    :cond_5
    mul-int v2, p2, v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzm()V

    goto :goto_0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 2
    const-string v0, "\\r?\\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 1
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    const-string v5, "palette: "

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    .line 5
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 6
    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:[I

    move v5, v2

    .line 7
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:[I

    .line 8
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    .line 9
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v7, v2

    .line 8
    :goto_2
    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "size: "

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    .line 12
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 13
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 14
    :try_start_1
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzanl;->zze:I

    const/4 v5, 0x1

    .line 15
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:I

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "VobsubParser"

    const-string v6, "Parsing IDX failed"

    .line 16
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzee;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:[I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v1

    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 23
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    if-lt v2, v7, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    goto :goto_0

    .line 15
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v4

    shl-int/2addr v2, v7

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v4

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v8

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v9

    shl-int/2addr v4, v7

    shr-int/lit8 v7, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    new-instance v9, Landroid/graphics/Rect;

    or-int/2addr v2, v5

    or-int/2addr v4, v7

    add-int/2addr v3, v6

    add-int/2addr v8, v6

    .line 22
    invoke-direct {v9, v2, v4, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Landroid/graphics/Rect;

    goto :goto_0

    .line 12
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    if-lt v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Z

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:[I

    aget v9, v8, v3

    shr-int/lit8 v10, v2, 0x4

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(II)I

    move-result v9

    aput v9, v8, v3

    aget v3, v8, v5

    and-int/lit8 v2, v2, 0xf

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(II)I

    move-result v2

    aput v2, v8, v5

    aget v2, v8, v6

    shr-int/lit8 v3, v7, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(II)I

    move-result v2

    aput v2, v8, v6

    aget v2, v8, v4

    and-int/lit8 v3, v7, 0xf

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(II)I

    move-result v2

    aput v2, v8, v4

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    if-lt v2, v5, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:[I

    shr-int/lit8 v9, v2, 0x4

    .line 8
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzanl;->zze([II)I

    move-result v9

    aput v9, v8, v3

    and-int/lit8 v2, v2, 0xf

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzanl;->zze([II)I

    move-result v2

    aput v2, v8, v5

    shr-int/lit8 v2, v7, 0x4

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzanl;->zze([II)I

    move-result v2

    aput v2, v8, v6

    and-int/lit8 v2, v7, 0xf

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzanl;->zze([II)I

    move-result v2

    aput v2, v8, v4

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Z

    goto/16 :goto_0

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzcx;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeq;

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzeq;-><init>()V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza(Lcom/google/android/gms/internal/ads/zzer;)V

    const/4 v3, 0x1

    .line 7
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzanl;->zzg(Lcom/google/android/gms/internal/ads/zzeq;ZLandroid/graphics/Rect;[I)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 8
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 9
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza(Lcom/google/android/gms/internal/ads/zzer;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanl;->zzg(Lcom/google/android/gms/internal/ads/zzeq;ZLandroid/graphics/Rect;[I)V

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcw;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanl;->zze:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    .line 15
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzj(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 16
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    .line 17
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zze:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzm(F)Lcom/google/android/gms/internal/ads/zzcw;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(F)Lcom/google/android/gms/internal/ads/zzcw;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    return-void
.end method
