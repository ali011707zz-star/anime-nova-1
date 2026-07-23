.class final Lcom/google/android/gms/internal/ads/zzgwv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:I

.field final zzb:I

.field final zzc:I

.field final zzd:I

.field private final zze:Ljava/lang/String;

.field private final zzf:[C

.field private final zzg:[B

.field private final zzh:[Z

.field private final zzi:Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 9

    const/16 v0, 0x80

    .line 1
    new-array v1, v0, [B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    move v4, v3

    .line 2
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 3
    aget-char v5, p2, v4

    const/4 v6, 0x1

    if-ge v5, v0, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    const-string v8, "Non-ASCII character: %s"

    .line 4
    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzc(ZLjava/lang/String;C)V

    .line 5
    aget-byte v7, v1, v5

    if-ne v7, v2, :cond_1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    const-string v7, "Duplicate character: %s"

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzc(ZLjava/lang/String;C)V

    int-to-byte v6, v4

    .line 6
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(Ljava/lang/String;[C[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[C[BZ)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zze:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    :try_start_0
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgxs;->zza(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzb:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p2

    rsub-int/lit8 v1, p2, 0x3

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzc:I

    shr-int p2, v0, p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzg:[B

    .line 13
    new-array p1, v1, [Z

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzd:I

    if-ge p2, p3, :cond_0

    mul-int/lit8 p3, p2, 0x8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzb:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 14
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxs;->zzb(IILjava/math/RoundingMode;)I

    move-result p3

    aput-boolean v2, p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzh:[Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzi:Z

    return-void

    :catch_0
    move-exception p1

    .line 14
    array-length p2, p2

    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x18

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Illegal alphabet length "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgwv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwv;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzi:Z

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzgwv;->zzi:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zze:Ljava/lang/String;

    return-object v0
.end method

.method final zza(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    aget-char p1, v0, p1

    return p1
.end method

.method final zzb(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzh:[Z

    rem-int/2addr p1, v0

    aget-boolean p1, v1, p1

    return p1
.end method

.method final zzc(C)I
    .locals 4

    .line 1
    const-string v0, "Unrecognized character: 0x"

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzg:[B

    .line 2
    aget-byte v2, v2, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x20

    if-le p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwy;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x18

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unrecognized character: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwy;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v2

    .line 1
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final zzd()Lcom/google/android/gms/internal/ads/zzgwv;
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    array-length v3, v2

    if-ge v1, v3, :cond_a

    aget-char v4, v2, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgql;->zzd(C)Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v0

    :goto_1
    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 2
    aget-char v5, v2, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgql;->zzc(C)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    xor-int/2addr v1, v4

    const-string v3, "Cannot call lowerCase() on a mixed-case alphabet"

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzj(ZLjava/lang/Object;)V

    array-length v1, v2

    new-array v1, v1, [C

    move v3, v0

    :goto_3
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 4
    aget-char v5, v2, v3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgql;->zzd(C)Z

    move-result v6

    if-eqz v6, :cond_2

    xor-int/lit8 v5, v5, 0x20

    :cond_2
    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zze:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgwv;

    const-string v5, ".lowerCase()"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(Ljava/lang/String;[C)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzi:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/zzgwv;->zzi:Z

    if-eqz v1, :cond_4

    goto :goto_6

    :cond_4
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzgwv;->zzg:[B

    .line 6
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/16 v5, 0x41

    :goto_4
    const/16 v6, 0x5a

    if-gt v5, v6, :cond_7

    or-int/lit8 v6, v5, 0x20

    .line 7
    aget-byte v7, v1, v5

    .line 8
    aget-byte v8, v1, v6

    const/4 v9, -0x1

    if-ne v7, v9, :cond_5

    .line 9
    aput-byte v8, v2, v5

    goto :goto_5

    :cond_5
    int-to-char v10, v5

    int-to-char v11, v6

    if-ne v8, v9, :cond_6

    .line 10
    aput-byte v7, v2, v6

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 12
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    const-string v0, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzgrt;->zzd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_7
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzgwv;->zze:Ljava/lang/String;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgwv;

    const-string v5, ".ignoreCase()"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(Ljava/lang/String;[C[BZ)V

    :cond_8
    :goto_6
    return-object v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method

.method public final zze(C)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzg:[B

    array-length v0, p1

    const/16 v1, 0x3d

    if-le v0, v1, :cond_0

    aget-byte p1, p1, v1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzf()[C
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwv;->zzf:[C

    return-object v0
.end method
