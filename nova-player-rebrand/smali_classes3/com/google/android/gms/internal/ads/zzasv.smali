.class public abstract Lcom/google/android/gms/internal/ads/zzasv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzarh;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaru;->zzc:Ljava/util/Map;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "Date"

    .line 3
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzasv;->zzb(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    const-string v4, "Cache-Control"

    .line 5
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v4, :cond_8

    const-string v10, ","

    .line 6
    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    move v10, v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    .line 7
    :goto_1
    array-length v15, v4

    const/16 v16, 0x1

    if-ge v9, v15, :cond_7

    .line 8
    aget-object v15, v4, v9

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v17, 0x0

    const-string v5, "no-cache"

    .line 9
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "no-store"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "max-age="

    .line 10
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    .line 11
    :try_start_0
    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const-string v5, "stale-while-revalidate="

    .line 12
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x17

    .line 13
    :try_start_1
    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    const-string v5, "must-revalidate"

    .line 14
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "proxy-revalidate"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move/from16 v10, v16

    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_7
    const-wide/16 v17, 0x0

    move/from16 v9, v16

    goto :goto_4

    :cond_8
    const-wide/16 v17, 0x0

    move v10, v9

    move-wide/from16 v11, v17

    move-wide v13, v11

    :goto_4
    const-string v4, "Expires"

    .line 15
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzasv;->zzb(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_5

    :cond_9
    move-wide/from16 v4, v17

    :goto_5
    const-string v6, "Last-Modified"

    .line 17
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 18
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzasv;->zzb(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v19, v15

    move-wide v15, v1

    move-wide/from16 v1, v19

    goto :goto_6

    :cond_a
    move-wide v15, v1

    move-wide/from16 v1, v17

    :goto_6
    const-string v6, "ETag"

    .line 19
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v9, :cond_c

    const-wide/16 v4, 0x3e8

    mul-long/2addr v13, v4

    add-long/2addr v13, v15

    if-eqz v10, :cond_b

    move-wide v11, v13

    goto :goto_7

    .line 22
    :cond_b
    invoke-static {v11, v12}, Ljava/lang/Long;->signum(J)I

    mul-long/2addr v11, v4

    add-long/2addr v11, v13

    :goto_7
    move-wide v4, v13

    goto :goto_9

    :cond_c
    cmp-long v9, v7, v17

    if-lez v9, :cond_d

    cmp-long v9, v4, v7

    if-ltz v9, :cond_d

    sub-long/2addr v4, v7

    add-long/2addr v4, v15

    :goto_8
    move-wide v11, v4

    goto :goto_9

    :cond_d
    move-wide/from16 v4, v17

    goto :goto_8

    .line 19
    :goto_9
    new-instance v9, Lcom/google/android/gms/internal/ads/zzarh;

    .line 20
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzarh;-><init>()V

    .line 21
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaru;->zzb:[B

    iput-object v10, v9, Lcom/google/android/gms/internal/ads/zzarh;->zza:[B

    iput-object v6, v9, Lcom/google/android/gms/internal/ads/zzarh;->zzb:Ljava/lang/String;

    iput-wide v4, v9, Lcom/google/android/gms/internal/ads/zzarh;->zzf:J

    iput-wide v11, v9, Lcom/google/android/gms/internal/ads/zzarh;->zze:J

    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/zzarh;->zzc:J

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzarh;->zzd:J

    iput-object v3, v9, Lcom/google/android/gms/internal/ads/zzarh;->zzg:Ljava/util/Map;

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaru;->zzd:Ljava/util/List;

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzarh;->zzh:Ljava/util/List;

    return-object v9
.end method

.method public static zzb(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasv;->zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Unable to parse dateStr: %s, falling back to 0"

    if-nez v1, :cond_1

    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzask;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 2
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzask;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static zzc(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasv;->zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p0, "GMT"

    .line 2
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
