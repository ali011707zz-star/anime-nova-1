.class public Lcom/google/android/gms/internal/ads/zzasn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarr;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzasp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzasm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasm;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasp;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasp;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzb:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasn;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzary;)Lcom/google/android/gms/internal/ads/zzaru;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_0
    const/4 v6, 0x2

    const/4 v9, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzk()Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v18, v9

    const/16 v25, 0x1

    goto/16 :goto_14

    .line 45
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    .line 5
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzarh;->zzb:Ljava/lang/String;

    if-eqz v11, :cond_1

    const-string v12, "If-None-Match"

    .line 6
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzarh;->zzd:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    .line 7
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzasv;->zzc(J)Ljava/lang/String;

    move-result-object v11

    .line 8
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v10

    .line 4
    :goto_1
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzasn;->zzb:Lcom/google/android/gms/internal/ads/zzasm;

    .line 9
    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/ads/zzasm;->zza(Lcom/google/android/gms/internal/ads/zzary;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzasw;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzasw;->zza()I

    move-result v12

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzasw;->zzb()Ljava/util/List;

    move-result-object v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x130

    if-ne v12, v0, :cond_a

    .line 11
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v22, v11, v4

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzk()Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_3

    :try_start_3
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaru;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v14, 0x130

    move-object/from16 v19, v17

    move-wide/from16 v17, v22

    .line 27
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(I[BZJLjava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move/from16 v18, v9

    const/16 v25, 0x1

    goto/16 :goto_12

    :cond_3
    move-object/from16 v11, v17

    move-wide/from16 v17, v22

    :try_start_4
    new-instance v12, Ljava/util/TreeSet;

    sget-object v13, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 13
    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v13, :cond_4

    .line 15
    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzarq;

    .line 16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzarq;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_4
    :try_start_6
    new-instance v13, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzarh;->zzh:Ljava/util/List;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v11, :cond_7

    .line 18
    :try_start_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzarh;->zzh:Ljava/util/List;

    .line 19
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzarq;

    .line 20
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzarq;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 21
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :cond_6
    move-wide/from16 v22, v17

    const/16 v25, 0x1

    goto :goto_6

    .line 26
    :cond_7
    :try_start_8
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzarh;->zzg:Ljava/util/Map;

    .line 22
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzarh;->zzg:Ljava/util/Map;

    .line 23
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    new-instance v15, Lcom/google/android/gms/internal/ads/zzarq;

    .line 25
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    const/16 v25, 0x1

    :try_start_9
    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v7, v14}, Lcom/google/android/gms/internal/ads/zzarq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_5
    move/from16 v18, v9

    goto/16 :goto_12

    :catch_3
    move-exception v0

    const/16 v25, 0x1

    goto :goto_5

    :cond_9
    const/16 v25, 0x1

    move-wide/from16 v22, v17

    .line 21
    :goto_6
    new-instance v18, Lcom/google/android/gms/internal/ads/zzaru;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarh;->zza:[B

    const/16 v21, 0x1

    const/16 v19, 0x130

    move-object/from16 v20, v0

    move-object/from16 v24, v13

    .line 26
    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(I[BZJLjava/util/List;)V

    move-object/from16 v13, v18

    :goto_7
    return-object v13

    :cond_a
    move-object/from16 v11, v17

    const/16 v25, 0x1

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzasw;->zzd()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzasw;->zzc()I

    move-result v0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzasn;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    .line 28
    new-instance v14, Lcom/google/android/gms/internal/ads/zzata;

    invoke-direct {v14, v13, v0}, Lcom/google/android/gms/internal/ads/zzata;-><init>(Lcom/google/android/gms/internal/ads/zzasp;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    const/16 v0, 0x400

    .line 29
    :try_start_a
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzasp;->zza(I)[B

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 30
    :goto_8
    :try_start_b
    invoke-virtual {v7, v15}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_b

    .line 31
    invoke-virtual {v14, v15, v9, v0}, Lcom/google/android/gms/internal/ads/zzata;->write([BII)V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_b

    .line 32
    :cond_b
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 33
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_9

    .line 37
    :catch_4
    :try_start_d
    new-array v7, v9, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzask;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_9
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzasp;->zzb([B)V

    .line 36
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzata;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :goto_a
    move-object v13, v0

    goto :goto_d

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    .line 33
    :goto_b
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_c

    .line 66
    :catch_5
    :try_start_f
    new-array v7, v9, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzask;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_c
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzasp;->zzb([B)V

    .line 36
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzata;->close()V

    .line 37
    throw v0

    .line 45
    :cond_c
    new-array v0, v9, [B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_a

    .line 38
    :goto_d
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 39
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzask;->zzb:Z

    if-nez v0, :cond_e

    const-wide/16 v14, 0xbb8

    cmp-long v0, v7, v14

    if-lez v0, :cond_d

    goto :goto_e

    :cond_d
    move/from16 v18, v9

    goto :goto_10

    :cond_e
    :goto_e
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-eqz v13, :cond_f

    array-length v8, v13

    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_f

    :catch_6
    move-exception v0

    move/from16 v18, v9

    goto :goto_11

    .line 45
    :cond_f
    const-string v8, "null"

    .line 42
    :goto_f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzy()Lcom/google/android/gms/internal/ads/zzarm;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzarm;->zzb()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    move/from16 v18, v9

    const/4 v9, 0x5

    :try_start_11
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v18

    aput-object v7, v9, v25

    aput-object v8, v9, v6

    const/4 v7, 0x3

    aput-object v14, v9, v7

    const/4 v7, 0x4

    aput-object v15, v9, v7

    .line 44
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    const/16 v0, 0xc8

    if-lt v12, v0, :cond_10

    const/16 v0, 0x12b

    if-gt v12, v0, :cond_10

    move-object/from16 v17, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaru;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v15, v7, v4

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(I[BZJLjava/util/List;)V

    return-object v11

    :catch_7
    move-exception v0

    goto :goto_11

    .line 34
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 46
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    move-object v8, v10

    move-object v11, v13

    goto :goto_15

    :goto_12
    move-object v8, v10

    :goto_13
    const/4 v11, 0x0

    goto :goto_15

    :goto_14
    const/4 v8, 0x0

    goto :goto_13

    .line 47
    :goto_15
    instance-of v7, v0, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasg;

    .line 48
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasg;-><init>()V

    const-string v7, "socket"

    goto :goto_17

    .line 49
    :cond_11
    instance-of v7, v0, Ljava/net/MalformedURLException;

    if-nez v7, :cond_17

    if-eqz v8, :cond_16

    .line 34
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzasw;->zza()I

    move-result v10

    .line 50
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzh()Ljava/lang/String;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v0, v9, v18

    aput-object v7, v9, v25

    const-string v0, "Unexpected response code %d for %s"

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzask;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_15

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzasw;->zzb()Ljava/util/List;

    move-result-object v15

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaru;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v13, v7, v4

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(I[BZJLjava/util/List;)V

    const/16 v0, 0x191

    if-eq v10, v0, :cond_14

    const/16 v0, 0x193

    if-ne v10, v0, :cond_12

    goto :goto_16

    :cond_12
    const/16 v0, 0x190

    if-lt v10, v0, :cond_13

    const/16 v0, 0x1f3

    if-gt v10, v0, :cond_13

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarl;

    .line 62
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzarl;-><init>(Lcom/google/android/gms/internal/ads/zzaru;)V

    throw v0

    .line 54
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasf;

    .line 61
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(Lcom/google/android/gms/internal/ads/zzaru;)V

    throw v0

    .line 52
    :cond_14
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarg;

    .line 53
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzarg;-><init>(Lcom/google/android/gms/internal/ads/zzaru;)V

    const-string v7, "auth"

    goto :goto_17

    .line 60
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzart;

    .line 54
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzart;-><init>()V

    const-string v7, "network"

    .line 55
    :goto_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzy()Lcom/google/android/gms/internal/ads/zzarm;

    move-result-object v8

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzo()I

    move-result v9

    .line 57
    :try_start_12
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zzc(Lcom/google/android/gms/internal/ads/zzash;)V
    :try_end_12
    .catch Lcom/google/android/gms/internal/ads/zzash; {:try_start_12 .. :try_end_12} :catch_8

    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v18

    aput-object v0, v6, v25

    const-string v0, "%s-retry [timeout=%s]"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_8
    move-exception v0

    .line 63
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v7, v4, v18

    aput-object v3, v4, v25

    const-string v3, "%s-timeout-giveup [timeout=%s]"

    .line 64
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 53
    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzarv;

    .line 60
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzarv;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzary;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bad URL "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
