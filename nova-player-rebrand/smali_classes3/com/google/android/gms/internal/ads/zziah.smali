.class final Lcom/google/android/gms/internal/ads/zziah;
.super Lcom/google/android/gms/internal/ads/zziak;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private final zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziak;-><init>([B)V

    add-int v0, p2, p3

    array-length v1, p1

    .line 2
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzian;->zzC(III)I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzB(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    add-int/2addr v1, p1

    .line 2
    aget-byte p1, v0, v1

    return p1
.end method

.method final zzb(I)B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    return v0
.end method

.method public final zzd(II)Lcom/google/android/gms/internal/ads/zzian;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzC(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    add-int/2addr v1, p1

    new-instance p1, Lcom/google/android/gms/internal/ads/zziah;

    .line 2
    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zziah;-><init>([BII)V

    return-object p1
.end method

.method protected final zze([BIII)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    add-int/2addr v0, p2

    invoke-static {v1, v0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzf()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zziae;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zziae;->zza([BII)V

    return-void
.end method

.method protected final zzj(Lcom/google/android/gms/internal/ads/zzian;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzial;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zziah;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzian;->zzj(Lcom/google/android/gms/internal/ads/zzian;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziah;->zzk(Lcom/google/android/gms/internal/ads/zzian;II)Z

    move-result p1

    return p1
.end method

.method final zzk(Lcom/google/android/gms/internal/ads/zzian;II)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzial;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzial;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzial;->zzn()[B

    move-result-object p1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzian;->zzD([BI[BII)Z

    move-result p1

    return p1

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zziah;

    if-eqz v1, :cond_1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zziah;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget p1, p1, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    add-int/2addr p1, p2

    invoke-static {v0, v1, v2, p1, p3}, Lcom/google/android/gms/internal/ads/zzian;->zzD([BI[BII)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzd(II)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    add-int/2addr p3, p2

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zziah;->zzd(II)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzian;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected final zzl(III)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    add-int/2addr v0, p2

    invoke-static {p1, v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzice;->zzc(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zziaq;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziah;->zzd:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zziaq;->zzG([BIIZ)Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzn()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzb:[B

    return-object v0
.end method

.method final synthetic zzo()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziah;->zzc:I

    return v0
.end method
