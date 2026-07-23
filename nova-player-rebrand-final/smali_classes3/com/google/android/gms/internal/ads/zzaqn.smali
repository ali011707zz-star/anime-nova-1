.class abstract Lcom/google/android/gms/internal/ads/zzaqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:[B

.field private static final zzc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const/16 v0, 0xe

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        -0x80t
        0x0t
        0x0t
        -0x56t
        0x0t
        0x38t
        -0x65t
        0x71t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x21t
        0x7t
        -0x2dt
        0x11t
        -0x7at
        0x44t
        -0x38t
        -0x3ft
        -0x36t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaqm;->zza:I

    const v2, 0x52494646

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x52463634

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    const/4 v2, 0x4

    .line 3
    invoke-interface {p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_2

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x17

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported form type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzee;->zze(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzaql;
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    const v2, 0x666d7420

    .line 2
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaqn;->zzd(ILcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:J

    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 3
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 4
    invoke-interface {p0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v8

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzI()I

    move-result v9

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzI()I

    move-result v10

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v11

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v12

    long-to-int v0, v2

    add-int/lit8 v0, v0, -0x10

    if-lez v0, :cond_9

    new-array v2, v0, [B

    .line 12
    invoke-interface {p0, v2, v5, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    const v3, 0xfffe

    if-ne v1, v3, :cond_6

    const/16 v1, 0x18

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    .line 13
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v1

    if-eqz v1, :cond_2

    if-ne v1, v12, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x13

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "validBits ( "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")  != bitsPerSample( "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") are not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzI()I

    move-result v1

    shr-int/lit8 v3, v1, 0x12

    if-nez v3, :cond_7

    if-eqz v1, :cond_4

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    if-ne v3, v8, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "invalid number of channels ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") in channel mask "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0

    .line 19
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v1

    const/16 v3, 0xe

    new-array v4, v3, [B

    .line 20
    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:[B

    .line 21
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:[B

    .line 22
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    const-string p0, "invalid wav format extension guid"

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    move v7, v1

    move-object v13, v2

    goto :goto_4

    .line 17
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x15

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "invalid channel mask "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0

    :cond_8
    move-object v13, v2

    move v7, v3

    goto :goto_4

    .line 27
    :cond_9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B

    goto :goto_3

    .line 22
    :goto_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaev;->zzm()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 28
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(IIIIII[B)V

    return-object v6
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzaev;)Landroid/util/Pair;
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    const v2, 0x64617461

    .line 3
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaqn;->zzd(ILcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;

    move-result-object v0

    .line 4
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static zzd(ILcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;
    .locals 8

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;

    move-result-object v0

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaqm;->zza:I

    if-eq v1, p0, :cond_2

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring unknown WAV chunk: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WavHeaderReader"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:J

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x9

    add-long/2addr v4, v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    long-to-int v0, v4

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x28

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0

    :cond_2
    return-object v0
.end method
