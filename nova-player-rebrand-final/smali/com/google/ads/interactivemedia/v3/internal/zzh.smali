.class public final Lcom/google/ads/interactivemedia/v3/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 22

    .line 1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Not an APK file: ZIP End of Central Directory record not found in file with "

    const-string v2, " bytes"

    .line 2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zza(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 3
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/nio/ByteBuffer;

    .line 4
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v2, -0x14

    add-long/2addr v2, v10

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const v2, 0x504b0607

    if-eq v0, v2, :cond_10

    .line 4
    :goto_0
    const-string v0, "ZIP Central Directory offset out of range: "

    const-string v2, ". ZIP End of Central Directory offset: "

    .line 7
    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    cmp-long v3, v8, v10

    if-gez v3, :cond_f

    .line 9
    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzd(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v2, v8

    cmp-long v0, v2, v10

    if-nez v0, :cond_e

    const-string v0, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    const-string v2, "APK Signing Block size out of range: "

    const-string v3, "APK Signing Block offset out of range: "

    const-string v6, "APK Signing Block sizes in header and footer do not match: "

    const-string v7, " vs "

    const-wide/16 v13, 0x20

    cmp-long v13, v8, v13

    if-ltz v13, :cond_d

    const/16 v0, 0x18

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v14

    int-to-long v14, v14

    sub-long v14, v8, v14

    invoke-virtual {v1, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    move-wide/from16 v16, v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v1, v14, v15, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v4, 0x8

    .line 15
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v18, 0x20676953204b5041L

    cmp-long v5, v14, v18

    if-nez v5, :cond_c

    const/16 v5, 0x10

    .line 16
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v18, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v5, v14, v18

    if-nez v5, :cond_c

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    .line 19
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v14, v4

    if-ltz v0, :cond_b

    const-wide/32 v4, 0x7ffffff7

    cmp-long v0, v14, v4

    if-gtz v0, :cond_b

    const-wide/16 v4, 0x8

    add-long/2addr v4, v14

    long-to-int v0, v4

    int-to-long v4, v0

    sub-long v4, v8, v4

    cmp-long v2, v4, v16

    if-ltz v2, :cond_a

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    move-wide/from16 v16, v8

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    invoke-virtual {v1, v2, v3, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    cmp-long v2, v8, v14

    if-nez v2, :cond_9

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 29
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 30
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v0, "Insufficient data to read size of APK Signing Block entry #"

    const-string v3, "APK Signing Block entry #"

    const-string v4, " size out of range: "

    const-string v5, ", available: "

    .line 31
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    if-ne v8, v13, :cond_8

    .line 32
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    add-int/lit8 v8, v8, -0x18

    const-string v9, "end < start: "

    const-string v13, " < "

    const-string v14, "end > capacity: "

    const-string v15, " > "
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v1

    const/16 v1, 0x8

    if-lt v8, v1, :cond_7

    .line 34
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 35
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    if-gt v8, v9, :cond_6

    .line 37
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 38
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x0

    .line 39
    :try_start_2
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v8, 0x8

    .line 41
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v13, 0x0

    .line 44
    :try_start_3
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v18, 0x0

    .line 48
    :goto_1
    invoke-virtual {v8}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v18, 0x1

    .line 49
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v9, 0x8

    if-lt v2, v9, :cond_4

    .line 50
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    const-wide/16 v20, 0x4

    cmp-long v2, v13, v20

    if-ltz v2, :cond_3

    const-wide/32 v20, 0x7fffffff

    cmp-long v2, v13, v20

    if-gtz v2, :cond_3

    .line 51
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v2

    long-to-int v9, v13

    add-int/2addr v2, v9

    .line 52
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    if-gt v9, v13, :cond_2

    .line 53
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    const v14, 0x7109871a

    if-ne v13, v14, :cond_1

    add-int/lit8 v9, v9, -0x4

    .line 58
    invoke-static {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzi(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzd;

    const/4 v13, 0x0

    move-wide/from16 v8, v16

    invoke-direct/range {v4 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/zzd;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;[B)V

    .line 59
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzb(Ljava/nio/channels/FileChannel;Lcom/google/ads/interactivemedia/v3/internal/zzd;)[[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 60
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    move-wide v13, v6

    move-wide/from16 v6, v16

    .line 54
    :try_start_5
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v18, v1

    move-wide/from16 v16, v6

    move-wide v6, v13

    goto :goto_1

    .line 52
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 57
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2d

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v6, 0xd

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    const-string v1, "No APK Signature Scheme v2 block in APK Signing Block"

    .line 62
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    .line 44
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    throw v0

    .line 35
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v19, v1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v19, v1

    .line 26
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 27
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v19, v1

    .line 20
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 21
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v19, v1

    .line 19
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 20
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v19, v1

    .line 16
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    const-string v1, "No APK Signing Block before ZIP Central Directory"

    .line 17
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v19, v1

    move-wide v6, v8

    .line 9
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 10
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object/from16 v19, v1

    .line 66
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    .line 64
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v19, v1

    move-wide v6, v8

    .line 7
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 8
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x52

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object/from16 v19, v1

    .line 6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zze;

    const-string v1, "ZIP64 APK not supported"

    .line 65
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v19, v1

    .line 67
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zze;

    .line 66
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x52

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zze;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    :goto_2
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 67
    :catch_1
    throw v0
.end method

.method private static zzb(Ljava/nio/channels/FileChannel;Lcom/google/ads/interactivemedia/v3/internal/zzd;)[[Ljava/security/cert/X509Certificate;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzd;->zza()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 8
    :try_start_2
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 9
    invoke-static {v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzc(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 10
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .line 14
    :goto_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x25

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to parse/verify signer #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " block"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    if-lez v3, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzd;->zzb()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzd;->zzc()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzd;->zzd()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzd;->zze()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v1, p0

    .line 15
    invoke-static/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzd(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V

    .line 16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v9, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/security/cert/X509Certificate;

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No content digests found"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signers found"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 4
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to read list of signers"

    .line 6
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception v0

    move-object p0, v0

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    .line 4
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zzc(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 22

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzk(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v9, v4

    move v7, v5

    const/4 v8, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v10

    const/16 v11, 0x8

    const/16 v12, 0x301

    const/16 v13, 0x202

    const/16 v14, 0x201

    const/4 v15, 0x1

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 6
    :try_start_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-lt v6, v11, :cond_3

    .line 8
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v14, :cond_1

    if-eq v6, v13, :cond_1

    if-eq v6, v12, :cond_1

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    if-eq v7, v5, :cond_2

    .line 10
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzf(I)I

    move-result v11

    .line 11
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzf(I)I

    move-result v12

    if-eq v11, v15, :cond_0

    if-eq v12, v15, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzk(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    move v7, v6

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 14
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse signature record #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    if-ne v7, v5, :cond_6

    if-nez v8, :cond_5

    .line 12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_6
    const-string v1, "Unknown signature algorithm: 0x"

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_8

    if-eq v7, v12, :cond_7

    packed-switch v7, :pswitch_data_1

    int-to-long v2, v7

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_1
    const-string v5, "RSA"

    goto :goto_2

    .line 20
    :cond_7
    const-string v5, "DSA"

    goto :goto_2

    .line 65
    :cond_8
    const-string v5, "EC"

    :goto_2
    if-eq v7, v14, :cond_b

    if-eq v7, v13, :cond_a

    if-eq v7, v12, :cond_9

    packed-switch v7, :pswitch_data_2

    int-to-long v2, v7

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_2
    const-string v1, "SHA512withRSA"

    .line 18
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    const-string v1, "SHA256withRSA"

    .line 19
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 20
    :pswitch_4
    new-instance v16, Ljava/security/spec/PSSParameterSpec;

    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v20, 0x40

    const/16 v21, 0x1

    const-string v17, "SHA-512"

    const-string v18, "MGF1"

    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    move-object/from16 v1, v16

    const-string v6, "SHA512withRSA/PSS"

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 21
    :pswitch_5
    new-instance v16, Ljava/security/spec/PSSParameterSpec;

    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v20, 0x20

    const/16 v21, 0x1

    const-string v17, "SHA-256"

    const-string v18, "MGF1"

    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    move-object/from16 v1, v16

    const-string v6, "SHA256withRSA/PSS"

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 64
    :cond_9
    const-string v1, "SHA256withDSA"

    .line 15
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    :cond_a
    const-string v1, "SHA512withECDSA"

    .line 16
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    :cond_b
    const-string v1, "SHA256withECDSA"

    .line 17
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 22
    :goto_3
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 23
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    .line 24
    :try_start_1
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 25
    invoke-virtual {v5, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 26
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 27
    invoke-virtual {v8, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_c

    .line 28
    invoke-virtual {v8, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_9

    :catch_6
    move-exception v0

    goto/16 :goto_9

    .line 29
    :cond_c
    :goto_4
    invoke-virtual {v8, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 30
    invoke-virtual {v8, v9}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_16

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 36
    :cond_d
    :goto_5
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/2addr v6, v15

    .line 37
    :try_start_2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    if-lt v9, v11, :cond_e

    .line 39
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v9, v7, :cond_d

    .line 41
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzk(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_6

    .line 38
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    .line 42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_7

    .line 31
    :goto_6
    new-instance v1, Ljava/io/IOException;

    .line 43
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse digest record #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 44
    :cond_f
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 46
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzf(I)I

    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_11

    .line 48
    invoke-static {v3, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_7

    .line 43
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    .line 65
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzg(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_11
    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 51
    :goto_8
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/2addr v3, v15

    .line 52
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzk(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    :try_start_3
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 53
    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v6, p2

    .line 54
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzf;

    .line 55
    invoke-direct {v7, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzf;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 56
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_9
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/SecurityException;

    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to decode certificate #"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 61
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    .line 32
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :goto_9
    new-instance v1, Ljava/lang/SecurityException;

    .line 31
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to verify "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static zzd(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzc;

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzc;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    move-object p2, v2

    sub-long/2addr p6, p4

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzc;

    move-wide p3, p4

    move-wide p5, p6

    invoke-direct/range {p1 .. p6}, Lcom/google/ads/interactivemedia/v3/internal/zzc;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 3
    invoke-virtual {p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {p2, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzi;->zzc(Ljava/nio/ByteBuffer;J)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zza;

    .line 6
    invoke-direct {p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/zza;-><init>(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    new-array p4, p2, [I

    .line 8
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 p6, 0x0

    move p7, p6

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    const/4 v0, 0x1

    if-eqz p8, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    .line 9
    aput p8, p4, p7

    add-int/2addr p7, v0

    goto :goto_0

    :cond_0
    const/4 p5, 0x3

    :try_start_0
    new-array p5, p5, [Lcom/google/ads/interactivemedia/v3/internal/zzb;

    aput-object v1, p5, p6

    aput-object p1, p5, v0

    const/4 p1, 0x2

    aput-object p3, p5, p1

    .line 10
    invoke-static {p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zze([I[Lcom/google/ads/interactivemedia/v3/internal/zzb;)[[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge p6, p2, :cond_2

    .line 12
    aget p3, p4, p6

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [B

    .line 14
    aget-object p7, p1, p6

    .line 15
    invoke-static {p5, p7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p5

    if-eqz p5, :cond_1

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzg(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, " digest of contents did not verify"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed to compute digest(s) of contents"

    .line 11
    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No digests provided"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zze([I[Lcom/google/ads/interactivemedia/v3/internal/zzb;)[[B
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v4, v1

    const-wide/16 v5, 0x0

    :goto_0
    const-wide/32 v7, 0x100000

    const/4 v9, 0x3

    if-ge v4, v9, :cond_0

    aget-object v9, p1, v4

    .line 1
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/zzb;->zza()J

    move-result-wide v9

    const-wide/32 v11, 0xfffff

    add-long/2addr v9, v11

    div-long/2addr v9, v7

    add-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v10, 0x1fffff

    cmp-long v4, v5, v10

    if-gez v4, :cond_9

    .line 2
    array-length v4, v0

    new-array v4, v4, [[B

    move v10, v1

    :goto_1
    array-length v11, v0

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-ge v10, v11, :cond_1

    long-to-int v11, v5

    .line 3
    aget v14, v0, v10

    .line 4
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzh(I)I

    move-result v14

    mul-int/2addr v14, v11

    add-int/2addr v14, v12

    .line 5
    new-array v12, v14, [B

    const/16 v14, 0x5a

    .line 6
    aput-byte v14, v12, v1

    .line 7
    invoke-static {v11, v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzl(I[BI)V

    .line 8
    aput-object v12, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-array v5, v12, [B

    const/16 v6, -0x5b

    aput-byte v6, v5, v1

    new-array v6, v11, [Ljava/security/MessageDigest;

    move v10, v1

    :goto_2
    array-length v14, v0

    const-string v15, " digest not supported"

    if-ge v10, v14, :cond_2

    .line 9
    aget v14, v0, v10

    .line 10
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzg(I)Ljava/lang/String;

    move-result-object v14

    .line 11
    :try_start_0
    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v16

    aput-object v16, v6, v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 31
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    move v10, v1

    move v14, v10

    move/from16 v16, v14

    :goto_3
    if-ge v10, v9, :cond_7

    .line 11
    aget-object v1, p1, v10

    .line 12
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzb;->zza()J

    move-result-wide v17

    move/from16 v19, v10

    move-wide/from16 v2, v17

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    :goto_4
    cmp-long v20, v2, v17

    if-lez v20, :cond_6

    move/from16 v21, v14

    move-object/from16 v20, v15

    .line 13
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    .line 14
    invoke-static {v14, v5, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzl(I[BI)V

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v11, :cond_3

    .line 15
    aget-object v7, v6, v15

    invoke-virtual {v7, v5}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v15, v15, 0x1

    const-wide/32 v7, 0x100000

    goto :goto_5

    .line 16
    :cond_3
    :try_start_1
    invoke-interface {v1, v6, v9, v10, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzb;->zzb([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    :goto_6
    array-length v8, v0

    if-ge v7, v8, :cond_5

    .line 17
    aget v8, v0, v7

    .line 18
    aget-object v15, v4, v7

    .line 19
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzh(I)I

    move-result v8

    move/from16 v22, v12

    .line 20
    aget-object v12, v6, v7

    mul-int v23, v21, v8

    add-int/lit8 v13, v23, 0x5

    .line 21
    invoke-virtual {v12, v15, v13, v8}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v13

    if-ne v13, v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v22

    const/4 v13, 0x1

    goto :goto_6

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 23
    invoke-virtual {v12}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x23

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected output size of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " digest: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move/from16 v22, v12

    int-to-long v7, v14

    add-long/2addr v9, v7

    sub-long/2addr v2, v7

    add-int/lit8 v14, v21, 0x1

    move-object/from16 v15, v20

    const-wide/32 v7, 0x100000

    const/4 v13, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 22
    new-instance v1, Ljava/security/DigestException;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to digest chunk #"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v21

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of section #"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move/from16 v22, v12

    move-object/from16 v20, v15

    move/from16 v2, v16

    add-int/lit8 v16, v2, 0x1

    add-int/lit8 v10, v19, 0x1

    const/4 v1, 0x0

    const-wide/32 v7, 0x100000

    const/4 v9, 0x3

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_7
    move-object/from16 v20, v15

    .line 23
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 24
    aget v3, v0, v2

    .line 25
    aget-object v5, v4, v2

    .line 26
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzg(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    :try_start_2
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v1, v20

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 30
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    return-object v1

    .line 2
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x11

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many chunks: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzf(I)I
    .locals 2

    const/16 v0, 0x201

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202

    if-eq p0, v0, :cond_0

    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    int-to-long v0, p0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzg(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    const-string p0, "SHA-512"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown content digest algorthm: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "SHA-256"

    return-object p0
.end method

.method private static zzh(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown content digest algorthm: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x20

    return p0
.end method

.method private static zzi(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    throw p1

    .line 3
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0
.end method

.method private static zzj(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 7
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzh;->zzi(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x4f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x52

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzk(Ljava/nio/ByteBuffer;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 4
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x44

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    .line 2
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzl(I[BI)V
    .locals 1

    and-int/lit16 p2, p0, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 1
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 2
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x3

    .line 3
    aput-byte p2, p1, v0

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 p2, 0x4

    .line 4
    aput-byte p0, p1, p2

    return-void
.end method
