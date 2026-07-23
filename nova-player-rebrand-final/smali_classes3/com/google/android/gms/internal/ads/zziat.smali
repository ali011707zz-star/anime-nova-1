.class final Lcom/google/android/gms/internal/ads/zziat;
.super Lcom/google/android/gms/internal/ads/zziaw;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private zzc:I


# direct methods
.method constructor <init>([BII)V
    .locals 4

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zziaw;-><init>([B)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object v2, v3, p2

    const/4 p2, 0x2

    aput-object p3, v3, p2

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 4
    invoke-static {v0, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzH(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    return-void
.end method

.method public final zzI(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziat;->zzr(I)V

    return-void
.end method

.method public final zzJ(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    return-void
.end method

.method public final zzK(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziat;->zzt(I)V

    return-void
.end method

.method public final zzL(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zziat;->zzu(J)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziat;->zzw([BII)V

    return-void
.end method

.method public final zzb()I
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzh(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zziat;->zzv(J)V

    return-void
.end method

.method public final zzi(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziat;->zzq(B)V

    return-void
.end method

.method public final zzj(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziat;->zzx(Ljava/lang/String;)V

    return-void
.end method

.method public final zzk(ILcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziat;->zzl(Lcom/google/android/gms/internal/ads/zzian;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzian;->zzg(Lcom/google/android/gms/internal/ads/zziae;)V

    return-void
.end method

.method public final zzm([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziat;->zzw([BII)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzidc;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzidc;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    return-void
.end method

.method public final zzq(B)V
    .locals 9

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v1, 0x1

    :try_start_1
    aput-byte p1, v0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception v0

    move v1, v2

    :goto_0
    move-object p1, v0

    move-object v8, p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zziau;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zziau;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v2
.end method

.method public final zzr(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zziat;->zzu(J)V

    return-void
.end method

.method public final zzs(I)V
    .locals 9

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    move v1, v0

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v1, 0x1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v1, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 1
    :try_start_3
    aput-byte v3, v0, v1
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    move v1, v2

    goto :goto_0

    :goto_1
    move-object v8, p1

    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zziau;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zziau;-><init>(JJILjava/lang/Throwable;)V

    .line 4
    throw v2
.end method

.method public final zzt(I)V
    .locals 9

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x4

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zziau;

    int-to-long v5, p1

    const/4 v7, 0x4

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zziau;-><init>(JJILjava/lang/Throwable;)V

    .line 6
    throw v2
.end method

.method public final zzu(J)V
    .locals 10

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zziaw;->zzE()Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    sub-int/2addr v0, v1

    const/16 v7, 0xa

    if-lt v0, v7, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zziem;->zzp([BJB)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    add-int/lit8 v7, v1, 0x1

    int-to-long v8, v1

    long-to-int v1, p1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 5
    invoke-static {v0, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zziem;->zzp([BJB)V

    ushr-long/2addr p1, v2

    move v1, v7

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v1, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 2
    :try_start_1
    aput-byte p1, v0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 2
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v7, v1, 0x1

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 1
    :try_start_3
    aput-byte v8, v0, v1
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    ushr-long/2addr p1, v2

    move v1, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v7

    goto :goto_4

    :goto_3
    move-object v8, p1

    :goto_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zziau;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zziau;-><init>(JJILjava/lang/Throwable;)V

    .line 4
    throw v2
.end method

.method public final zzv(J)V
    .locals 9

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 2
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 3
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v3

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zziau;

    int-to-long v5, p1

    const/16 v7, 0x8

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zziau;-><init>(JJILjava/lang/Throwable;)V

    .line 10
    throw v2
.end method

.method public final zzw([BII)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziau;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    int-to-long v1, p1

    int-to-long v3, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zziau;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v0
.end method

.method public final zzx(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    sub-int/2addr v4, v1

    .line 4
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzier;->zzd(Ljava/lang/String;[BII)I

    move-result p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzc(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziat;->zzs(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:I

    sub-int/2addr v2, v1

    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzier;->zzd(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zziau;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zziau;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzy()V
    .locals 0

    .line 0
    return-void
.end method
