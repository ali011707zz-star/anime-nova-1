.class public abstract Lcom/google/android/gms/internal/ads/zzgxz;
.super Lcom/google/android/gms/internal/ads/zzgya;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zze(ZLjava/lang/String;J)V

    return v0
.end method

.method public static zzb(J)I
    .locals 2

    .line 0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method public static zzc(III)I
    .locals 2

    const/4 p2, 0x1

    .line 1
    const-string v0, "min (%s) must be less than or equal to max (%s)"

    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzg(ZLjava/lang/String;II)V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static zzd([B)I
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "array too small: %s < %s"

    invoke-static {v4, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzg(ZLjava/lang/String;II)V

    .line 2
    aget-byte v0, p0, v1

    aget-byte v1, p0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgxz;->zze(BBBB)I

    move-result p0

    return p0
.end method

.method public static zze(BBBB)I
    .locals 0

    .line 0
    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static zzf(Ljava/util/Collection;)[I
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgxy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    .line 2
    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 4
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    aget-object v3, p0, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static varargs zzg([I)Ljava/util/List;
    .locals 3

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgxy;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgxy;-><init>([III)V

    return-object v1
.end method

.method public static zzh(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 11

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    move-object p0, v0

    goto/16 :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyb;->zza(C)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v4, 0xa

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_4
    neg-int p1, p1

    int-to-long v5, p1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-wide/high16 v7, -0x8000000000000000L

    if-ge v3, p1, :cond_7

    add-int/lit8 p1, v3, 0x1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgyb;->zza(C)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, v4, :cond_0

    const-wide v9, -0xcccccccccccccccL

    cmp-long v9, v5, v9

    if-gez v9, :cond_5

    goto :goto_0

    :cond_5
    const-wide/16 v9, 0xa

    mul-long/2addr v5, v9

    int-to-long v9, v3

    add-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-gez v3, :cond_6

    goto :goto_0

    :cond_6
    sub-long/2addr v5, v9

    move v3, p1

    goto :goto_1

    :cond_7
    if-ne v1, v2, :cond_8

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_2

    :cond_8
    cmp-long p0, v5, v7

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    neg-long p0, v5

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_b

    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_a

    goto :goto_3

    .line 8
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    return-object v0
.end method

.method static synthetic zzi([IIII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1
    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
