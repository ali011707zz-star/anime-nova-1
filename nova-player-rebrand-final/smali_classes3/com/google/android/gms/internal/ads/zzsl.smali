.class public final Lcom/google/android/gms/internal/ads/zzsl;
.super Lcom/google/android/gms/internal/ads/zzcp;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zzd:[I

.field private zze:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsl;->zze:[I

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 3
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    sub-int v5, v4, v3

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 4
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    div-int/2addr v5, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:Lcom/google/android/gms/internal/ads/zzcl;

    .line 5
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    mul-int/2addr v5, v6

    .line 6
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzcp;->zzk(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_0
    if-ge v3, v4, :cond_e

    array-length v6, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_d

    .line 7
    aget v9, v2, v8

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 8
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)I

    move-result v10

    mul-int/2addr v10, v9

    add-int/2addr v10, v3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 9
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    const/4 v11, 0x2

    if-eq v9, v11, :cond_c

    const/4 v11, 0x3

    if-eq v9, v11, :cond_b

    const/4 v12, 0x4

    if-eq v9, v12, :cond_a

    const/16 v12, 0x15

    if-eq v9, v12, :cond_2

    const/16 v13, 0x16

    if-eq v9, v13, :cond_1

    const/high16 v13, 0x10000000

    if-eq v9, v13, :cond_c

    const/high16 v13, 0x50000000

    if-eq v9, v13, :cond_2

    const/high16 v11, 0x60000000

    if-ne v9, v11, :cond_0

    goto :goto_2

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v2, v12

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_1
    :goto_2
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_a

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v9, v12, :cond_3

    move v9, v10

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v10, 0x2

    :goto_3
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    add-int/lit8 v13, v10, 0x1

    .line 11
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    .line 12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v14

    if-ne v14, v12, :cond_4

    add-int/lit8 v10, v10, 0x2

    :cond_4
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    shl-int/lit8 v9, v9, 0x18

    shl-int/lit8 v13, v13, 0x10

    shl-int/lit8 v10, v10, 0x8

    const/high16 v14, -0x1000000

    and-int/2addr v9, v14

    const/high16 v15, 0xff0000

    and-int/2addr v13, v15

    or-int/2addr v9, v13

    const v13, 0xff00

    and-int/2addr v10, v13

    or-int/2addr v9, v10

    shr-int/lit8 v10, v9, 0x8

    and-int v13, v10, v14

    const/4 v14, 0x1

    if-eqz v13, :cond_5

    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    and-int v15, v10, v13

    if-ne v15, v13, :cond_6

    :cond_5
    move v13, v14

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    .line 13
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    const-string v7, "Value out of range of 24-bit integer: %s"

    .line 14
    invoke-static {v13, v7, v15}, Lcom/google/android/gms/internal/ads/zzgrc;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    if-lt v7, v11, :cond_7

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 16
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    if-ne v7, v12, :cond_8

    shr-int/lit8 v7, v9, 0x18

    and-int/lit16 v7, v7, 0xff

    :goto_6
    int-to-byte v7, v7

    goto :goto_7

    :cond_8
    and-int/lit16 v7, v10, 0xff

    goto :goto_6

    :goto_7
    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    .line 17
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    if-ne v13, v12, :cond_9

    and-int/lit16 v9, v10, 0xff

    :goto_8
    int-to-byte v9, v9

    goto :goto_9

    :cond_9
    shr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    goto :goto_8

    :goto_9
    int-to-byte v10, v11

    .line 18
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 20
    :cond_a
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 21
    :cond_b
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 22
    :cond_c
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 23
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    add-int/2addr v3, v6

    goto/16 :goto_0

    .line 25
    :cond_e
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:[I

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    return-object p1

    .line 2
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzA(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    move v6, v4

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_4

    .line 6
    aget v7, v0, v6

    if-ge v7, v2, :cond_3

    if-eq v7, v6, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    or-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcn;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Channel map ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") trying to access non-existent input channel."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    throw v1

    :cond_4
    if-eqz v3, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    .line 8
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    invoke-direct {v0, p1, v7, v1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    return-object v0

    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    return-object p1

    .line 2
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcn;

    const-string v1, "Unhandled input format:"

    .line 3
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 4
    throw v0
.end method

.method protected final zzo()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zze:[I

    return-void
.end method

.method protected final zzp()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zze:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:[I

    return-void
.end method

.method public final zzq([I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:[I

    return-void
.end method
