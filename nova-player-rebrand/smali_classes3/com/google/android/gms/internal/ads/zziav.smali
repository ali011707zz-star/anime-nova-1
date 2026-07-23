.class final Lcom/google/android/gms/internal/ads/zziav;
.super Lcom/google/android/gms/internal/ads/zzias;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zzg:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzias;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziav;->zzg:Ljava/io/OutputStream;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzF(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziav;->zzG()V

    :cond_0
    return-void
.end method

.method private final zzG()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziav;->zzg:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    return-void
.end method


# virtual methods
.method public final zzH(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    return-void
.end method

.method public final zzI(II)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzias;->zze(J)V

    return-void
.end method

.method public final zzJ(II)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    return-void
.end method

.method public final zzK(II)V
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzias;->zzf(I)V

    return-void
.end method

.method public final zzL(IJ)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzias;->zze(J)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziav;->zzw([BII)V

    return-void
.end method

.method public final zzh(IJ)V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzias;->zzg(J)V

    return-void
.end method

.method public final zzi(IZ)V
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzias;->zzc(B)V

    return-void
.end method

.method public final zzj(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziav;->zzx(Ljava/lang/String;)V

    return-void
.end method

.method public final zzk(ILcom/google/android/gms/internal/ads/zzian;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zziav;->zzl(Lcom/google/android/gms/internal/ads/zzian;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzian;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzian;->zzg(Lcom/google/android/gms/internal/ads/zziae;)V

    return-void
.end method

.method public final zzm([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziav;->zzw([BII)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzidc;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzidc;->zzcX(Lcom/google/android/gms/internal/ads/zziaw;)V

    return-void
.end method

.method public final zzq(B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzb:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziav;->zzG()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzc(B)V

    return-void
.end method

.method public final zzr(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zziav;->zzu(J)V

    return-void
.end method

.method public final zzs(I)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    return-void
.end method

.method public final zzt(I)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzias;->zzf(I)V

    return-void
.end method

.method public final zzu(J)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzias;->zze(J)V

    return-void
.end method

.method public final zzv(J)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziav;->zzF(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzias;->zzg(J)V

    return-void
.end method

.method public final zzw([BII)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:[B

    .line 2
    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziav;->zzG()V

    sub-int/2addr p3, v2

    if-gt p3, v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziav;->zzg:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    return-void
.end method

.method public final zzx(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzias;->zzb:I

    if-le v2, v3, :cond_0

    .line 3
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzd(Ljava/lang/String;[BII)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzs(I)V

    .line 6
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzw([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziav;->zzG()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:[B

    sub-int/2addr v3, v1

    .line 9
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzd(Ljava/lang/String;[BII)I

    move-result p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    sub-int v1, p1, v2

    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzc(Ljava/lang/String;)I

    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzias;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    .line 13
    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzd(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    .line 10
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zzd:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziau;

    .line 14
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zziau;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzy()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zzc:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziav;->zzG()V

    :cond_0
    return-void
.end method
