.class final Lcom/google/android/gms/internal/ads/zzgwx;
.super Lcom/google/android/gms/internal/ads/zzgwz;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgwv;Ljava/lang/Character;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwz;-><init>(Lcom/google/android/gms/internal/ads/zzgwv;Ljava/lang/Character;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzf()[C

    move-result-object p1

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwv;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Lcom/google/android/gms/internal/ads/zzgwv;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Appendable;[BII)V
    .locals 5

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzo(III)V

    move p3, p4

    :goto_0
    const/4 v1, 0x3

    if-lt p3, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgwz;->zzb:Lcom/google/android/gms/internal/ads/zzgwv;

    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    ushr-int/lit8 v2, v1, 0x12

    .line 3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgwv;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgwv;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 5
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgwv;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit8 v1, v1, 0x3f

    .line 6
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgwv;->zza(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 p3, p3, -0x3

    goto :goto_0

    :cond_0
    if-ge v0, p4, :cond_1

    sub-int/2addr p4, v0

    .line 7
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzgwz;->zze(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method

.method final zzb([BLjava/lang/CharSequence;)I
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgxa;->zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwz;->zzb:Lcom/google/android/gms/internal/ads/zzgwv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzb(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v2, v0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 4
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x12

    .line 5
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    add-int/lit8 v5, v2, 0x1

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    .line 6
    aput-byte v4, p1, v2

    add-int/lit8 v4, v0, 0x2

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v0, 0x3

    .line 8
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 9
    aput-byte v7, p1, v5

    .line 10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v6, v5, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 11
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgwv;->zzc(C)I

    move-result v5

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 12
    aput-byte v3, p1, v4

    goto :goto_0

    :cond_0
    move v2, v4

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v4

    move v2, v5

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwy;

    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x15

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid input length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzgwv;Ljava/lang/Character;)Lcom/google/android/gms/internal/ads/zzgxa;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwx;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Lcom/google/android/gms/internal/ads/zzgwv;Ljava/lang/Character;)V

    return-object v0
.end method
