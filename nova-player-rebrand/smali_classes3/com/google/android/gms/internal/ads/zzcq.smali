.class final Lcom/google/android/gms/internal/ads/zzcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzct;

.field private final zzb:[F

.field private zzc:[F

.field private zzd:[F

.field private zze:[F

.field private zzf:D

.field private zzg:D

.field private zzh:D


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzct;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzb:[F

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v0, v1

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v0, v1

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result p1

    mul-int/2addr v0, p1

    .line 5
    new-array p1, v0, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zze:[F

    return-void
.end method

.method private final zzs([FIII)I
    .locals 19

    move-object/from16 v0, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0xff

    move v7, v5

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-wide v4, v3

    move/from16 v3, p3

    :goto_0
    int-to-double v11, v7

    int-to-double v13, v8

    move/from16 v15, p4

    if-gt v3, v15, :cond_5

    const/4 v1, 0x0

    const-wide/16 v16, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v2

    mul-int v2, v2, p2

    add-int v18, v2, v1

    aget v18, p1, v18

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 2
    aget v2, p1, v2

    sub-float v18, v18, v2

    .line 3
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move/from16 p3, v7

    float-to-double v6, v2

    add-double v16, v16, v6

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p3

    goto :goto_1

    :cond_0
    move/from16 p3, v7

    mul-double v13, v13, v16

    int-to-double v1, v3

    mul-double v6, v4, v1

    cmpg-double v6, v13, v6

    if-gez v6, :cond_1

    move-wide/from16 v4, v16

    :cond_1
    if-gez v6, :cond_2

    move v8, v3

    :cond_2
    mul-double v11, v11, v16

    mul-double/2addr v1, v9

    cmpl-double v1, v11, v1

    if-lez v1, :cond_3

    move-wide/from16 v9, v16

    :cond_3
    if-lez v1, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move/from16 v7, p3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    div-double/2addr v4, v13

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzcq;->zzf:D

    div-double/2addr v9, v11

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzcq;->zzg:D

    return v8
.end method

.method private final zzt([FII)[F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    array-length v1, p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v2

    div-int/2addr v1, v2

    add-int/2addr p2, p3

    if-gt p2, v1, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result p2

    mul-int/2addr v1, p2

    .line 2
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    const/4 v0, 0x4

    return v0
.end method

.method public final zzb(IJJ)V
    .locals 14

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzj()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcq;->zze:[F

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v6

    mul-int/2addr v6, p1

    add-int/2addr v6, v0

    aget v7, v5, v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v8

    add-int/2addr v6, v8

    .line 2
    aget v5, v5, v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzm()I

    move-result v6

    int-to-long v8, v6

    mul-long v8, v8, p2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzl()I

    move-result v6

    int-to-long v10, v6

    mul-long v10, v10, p4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzl()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v12, v1

    mul-long v12, v12, p4

    sub-long v8, v12, v8

    long-to-float v1, v8

    mul-float/2addr v1, v7

    sub-long/2addr v12, v10

    sub-long v6, v12, v8

    long-to-float v6, v6

    mul-float/2addr v6, v5

    mul-int/2addr v4, v3

    add-int/2addr v4, v0

    add-float/2addr v1, v6

    long-to-float v3, v12

    div-float/2addr v1, v3

    .line 3
    aput v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 10

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzf:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzn()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzg:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, v0, v6

    cmpl-double v2, v4, v8

    if-lez v2, :cond_1

    return v3

    :cond_1
    add-double/2addr v0, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzh:D

    mul-double/2addr v4, v6

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v3
.end method

.method public final zzd(II)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzh()I

    move-result v3

    div-int/2addr v3, p2

    if-ge v1, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v0

    .line 1
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v6

    mul-int/2addr v6, p2

    if-ge v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v7

    mul-int/2addr v7, p1

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    mul-int/2addr v6, v1

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    aget v6, v8, v7

    float-to-double v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    int-to-double v5, v6

    div-double/2addr v3, v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzb:[F

    double-to-float v3, v3

    .line 2
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zze(III)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzb:[F

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcq;->zzs([FIII)I

    move-result p1

    return p1
.end method

.method public final zzf(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcq;->zzs([FIII)I

    move-result p1

    return p1
.end method

.method public final zzg()V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzh:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzf:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzg:D

    return-void
.end method

.method public final zzh(IIIII)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    mul-int v4, p3, p2

    mul-int v5, p5, p2

    mul-int v6, p4, p2

    add-int/2addr v6, v3

    add-int/2addr v5, v3

    add-int/2addr v4, v3

    move v7, v2

    :goto_1
    if-ge v7, p1, :cond_0

    aget v8, v1, v6

    sub-int v9, p1, v7

    int-to-float v9, v9

    mul-float/2addr v8, v9

    aget v9, v1, v5

    int-to-float v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    int-to-float v9, p1

    div-float/2addr v8, v9

    aput v8, v0, v4

    add-int/2addr v4, p2

    add-int/2addr v6, p2

    add-int/2addr v5, p2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzf:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzh:D

    return-void
.end method

.method public final zzj(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzi()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcq;->zzt([FII)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    return-void
.end method

.method public final zzk(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzj()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcq;->zzt([FII)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    return-void
.end method

.method public final zzl(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zze:[F

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzk()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcq;->zzt([FII)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zze:[F

    return-void
.end method

.method public final zzm(II)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    add-int v2, p1, v0

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzn(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzi()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    mul-int/2addr v1, v0

    div-int/lit8 v0, p2, 0x4

    .line 2
    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final zzo(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzct;->zzg()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    mul-int/2addr p2, v0

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final synthetic zzp()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zze:[F

    return-object v0
.end method

.method public final synthetic zzq()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzd:[F

    return-object v0
.end method

.method public final synthetic zzr()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcq;->zzc:[F

    return-object v0
.end method
