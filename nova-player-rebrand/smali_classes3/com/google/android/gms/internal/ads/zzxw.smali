.class final Lcom/google/android/gms/internal/ads/zzxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaan;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private zzc:Lcom/google/android/gms/internal/ads/zzxv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzxv;

.field private zze:Lcom/google/android/gms/internal/ads/zzxv;

.field private zzf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaan;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzaan;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxv;

    const-wide/16 v0, 0x0

    const/high16 v2, 0x10000

    .line 2
    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    return-void
.end method

.method private final zzi(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzaan;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaan;->zza()Lcom/google/android/gms/internal/ads/zzaal;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    const/high16 v5, 0x10000

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final zzj(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    :cond_0
    return-void
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzxx;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzxv;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzih;->zzk()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    move-object/from16 v7, p0

    .line 2
    invoke-static {v7, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzxw;->zzm(Lcom/google/android/gms/internal/ads/zzxv;J[BI)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 3
    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzih;->zzb:Lcom/google/android/gms/internal/ads/zzie;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzie;->zza:[B

    if-nez v11, :cond_0

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzie;->zza:[B

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-eqz v9, :cond_1

    move v9, v5

    goto :goto_1

    :cond_1
    move v9, v8

    .line 3
    :goto_1
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzie;->zza:[B

    .line 5
    invoke-static {v6, v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzxw;->zzm(Lcom/google/android/gms/internal/ads/zzxv;J[BI)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v3, v11

    if-eqz v9, :cond_2

    const/4 v5, 0x2

    .line 6
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    .line 7
    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzxw;->zzm(Lcom/google/android/gms/internal/ads/zzxv;J[BI)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v5

    :cond_2
    move v11, v5

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzie;->zzd:[I

    if-eqz v5, :cond_4

    array-length v7, v5

    if-ge v7, v11, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v12, v5

    goto :goto_4

    :cond_4
    :goto_3
    new-array v5, v11, [I

    goto :goto_2

    :goto_4
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzie;->zze:[I

    if-eqz v5, :cond_6

    array-length v7, v5

    if-ge v7, v11, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object v13, v5

    goto :goto_7

    :cond_6
    :goto_6
    new-array v5, v11, [I

    goto :goto_5

    :goto_7
    if-eqz v9, :cond_7

    mul-int/lit8 v5, v11, 0x6

    .line 9
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    .line 10
    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzxw;->zzm(Lcom/google/android/gms/internal/ads/zzxv;J[BI)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v6

    int-to-long v14, v5

    add-long/2addr v3, v14

    .line 11
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :goto_8
    if-ge v8, v11, :cond_8

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result v5

    aput v5, v12, v8

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v5

    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 14
    :cond_7
    aput v8, v12, v8

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    sub-long v14, v3, v14

    long-to-int v7, v14

    sub-int/2addr v5, v7

    .line 15
    aput v5, v13, v8

    .line 13
    :cond_8
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzc:Lcom/google/android/gms/internal/ads/zzagg;

    .line 16
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 17
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzagg;->zzb:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzie;->zza:[B

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzagg;->zza:I

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzagg;->zzc:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzagg;->zzd:I

    move/from16 v18, v5

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzie;->zza(I[I[I[B[BIII)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    sub-long/2addr v3, v7

    long-to-int v3, v3

    int-to-long v4, v3

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    goto :goto_9

    :cond_9
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzic;->zze()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    .line 19
    invoke-static {v6, v4, v5, v7, v3}, Lcom/google/android/gms/internal/ads/zzxw;->zzm(Lcom/google/android/gms/internal/ads/zzxv;J[BI)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzih;->zzj(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzxw;->zzl(Lcom/google/android/gms/internal/ads/zzxv;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzih;->zzf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_b

    .line 23
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_a

    goto :goto_a

    .line 26
    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzih;->zzf:Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_b

    .line 24
    :cond_b
    :goto_a
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzih;->zzf:Ljava/nio/ByteBuffer;

    :goto_b
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzih;->zzf:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    .line 26
    invoke-static {v3, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzxw;->zzl(Lcom/google/android/gms/internal/ads/zzxv;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v0

    return-object v0

    .line 25
    :cond_c
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzih;->zzj(I)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzxx;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    .line 28
    invoke-static {v6, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzxw;->zzl(Lcom/google/android/gms/internal/ads/zzxv;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v0

    return-object v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzxv;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzxv;
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxw;->zzn(Lcom/google/android/gms/internal/ads/zzxv;J)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object p0

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaal;->zza:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxv;->zzb(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzxv;J[BI)Lcom/google/android/gms/internal/ads/zzxv;
    .locals 5

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxw;->zzn(Lcom/google/android/gms/internal/ads/zzxv;J)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object p0

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 2
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaal;->zza:[B

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxv;->zzb(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 4
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzxv;J)Lcom/google/android/gms/internal/ads/zzxv;
    .locals 2

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzaan;

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzaan;->zzc(Lcom/google/android/gms/internal/ads/zzaam;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxv;->zzc()Lcom/google/android/gms/internal/ads/zzxv;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    const/high16 v1, 0x10000

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzxv;->zza(JI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzaan;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaan;->zzd()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzxx;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzxw;->zzk(Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzxx;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzxx;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzxw;->zzk(Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzxx;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzxv;

    return-void
.end method

.method public final zze(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzaan;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzaan;->zzb(Lcom/google/android/gms/internal/ads/zzaal;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxv;->zzc()Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzxv;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    .line 4
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzxv;->zza:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zza:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    :cond_1
    return-void
.end method

.method public final zzf()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    return-wide v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzj;IZ)I
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzxw;->zzi(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaal;->zza:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzxv;->zzb(J)I

    move-result v0

    .line 4
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxw;->zzj(I)V

    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzer;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzxw;->zzi(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Lcom/google/android/gms/internal/ads/zzxv;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaal;->zza:[B

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:J

    .line 3
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzxv;->zzb(J)I

    move-result v1

    .line 2
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    sub-int/2addr p2, v0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzxw;->zzj(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
