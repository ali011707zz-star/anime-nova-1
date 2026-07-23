.class Lcom/google/ads/interactivemedia/v3/internal/zzsg;
.super Lcom/google/ads/interactivemedia/v3/internal/zzsh;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private volatile zza:Lcom/google/ads/interactivemedia/v3/internal/zzsh;

.field final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

.field final zzc:Ljava/lang/Character;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzsc;Ljava/lang/Character;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/16 v1, 0x3d

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zze(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Padding character %s was already in alphabet"

    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzd(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzsg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzsc;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsg;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzsg;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    .line 2
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    .line 3
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->hashCode()I

    move-result v1

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzb:I

    const/16 v2, 0x8

    .line 3
    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, ".withPadChar(\'"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zza(Ljava/lang/Appendable;[BII)V
    .locals 2

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzi(III)V

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzd:I

    sub-int v1, p4, v0

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zze(Ljava/lang/Appendable;[BII)V

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method zzb([BLjava/lang/CharSequence;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzb(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    const-wide/16 v6, 0x0

    move v8, v2

    move v9, v8

    :goto_1
    iget v10, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzc:I

    if-ge v8, v10, :cond_1

    iget v10, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzb:I

    shl-long/2addr v6, v10

    add-int v10, v4, v8

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    add-int/lit8 v10, v9, 0x1

    add-int/2addr v9, v4

    .line 5
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzc(C)I

    move-result v9

    int-to-long v11, v9

    or-long/2addr v6, v11

    move v9, v10

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget v8, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzd:I

    iget v11, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzb:I

    mul-int/2addr v9, v11

    add-int/lit8 v11, v8, -0x1

    mul-int/lit8 v11, v11, 0x8

    :goto_2
    mul-int/lit8 v12, v8, 0x8

    sub-int/2addr v12, v9

    if-lt v11, v12, :cond_2

    add-int/lit8 v12, v5, 0x1

    ushr-long v13, v6, v11

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    .line 6
    aput-byte v13, p1, v5

    add-int/lit8 v11, v11, -0x8

    move v5, v12

    goto :goto_2

    :cond_2
    add-int/2addr v4, v10

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzsf;

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid input length "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsf;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method zzc(Lcom/google/ads/interactivemedia/v3/internal/zzsc;Ljava/lang/Character;)Lcom/google/ads/interactivemedia/v3/internal/zzsh;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;

    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzsc;Ljava/lang/Character;)V

    return-object v0
.end method

.method final zzd(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzd:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsl;->zzb(IILjava/math/RoundingMode;)I

    move-result p1

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzc:I

    mul-int/2addr v0, p1

    return v0
.end method

.method final zze(Ljava/lang/Appendable;[BII)V
    .locals 9

    add-int v0, p3, p4

    .line 1
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzi(III)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzd:I

    const/4 v2, 0x0

    if-gt p4, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zza(Z)V

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    const/16 v6, 0x8

    if-ge v5, p4, :cond_1

    add-int v7, p3, v5

    .line 3
    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v3, v7

    shl-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v6

    iget p3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzb:I

    :goto_2
    mul-int/lit8 v5, p4, 0x8

    if-ge v2, v5, :cond_2

    sub-int v5, p2, p3

    sub-int/2addr v5, v2

    ushr-long v7, v3, v5

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zza:I

    long-to-int v7, v7

    and-int/2addr v5, v7

    .line 4
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zza(I)C

    move-result v5

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    if-eqz p2, :cond_3

    :goto_3
    mul-int/lit8 p2, v1, 0x8

    if-ge v2, p2, :cond_3

    const/16 p2, 0x3d

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_3

    :cond_3
    return-void
.end method

.method final zzf(I)I
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzb:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method final zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 3
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Lcom/google/ads/interactivemedia/v3/internal/zzsh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsh;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsc;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzsc;

    move-result-object v1

    if-ne v1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc:Ljava/lang/Character;

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzsc;Ljava/lang/Character;)Lcom/google/ads/interactivemedia/v3/internal/zzsh;

    move-result-object v0

    .line 1
    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsh;

    :cond_1
    return-object v0
.end method
