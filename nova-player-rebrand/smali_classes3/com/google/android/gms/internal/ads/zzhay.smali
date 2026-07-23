.class public final Lcom/google/android/gms/internal/ads/zzhay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbl;


# static fields
.field private static final zza:Ljava/nio/charset/Charset;


# instance fields
.field private final zzb:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhay;->zza:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhay;->zzb:Ljava/io/InputStream;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhay;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhay;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhay;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhay;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzhyl;)I
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhyp;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhyl;->zzg()Lcom/google/android/gms/internal/ads/zzhyp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhyp;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhyl;->zzg()Lcom/google/android/gms/internal/ads/zzhyp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhyp;->zzh()Ljava/lang/Number;

    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhja;->zzc(Ljava/lang/Number;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0xffffffffL

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid key id"

    .line 7
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    .line 6
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid key id: not a JSON number"

    .line 3
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid key id: not a JSON primitive"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzhql;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    const-string v0, "keyMaterialType"

    const-string v2, "value"

    const-string v3, "typeUrl"

    const-string v4, "outputPrefixType"

    const-string v5, "keyId"

    const-string v6, "status"

    const-string v7, "keyData"

    const-string v8, "primaryKeyId"

    const-string v9, "key"

    :try_start_0
    new-instance v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzhay;->zzb:Ljava/io/InputStream;

    sget v12, Lcom/google/android/gms/internal/ads/zzhbw;->$r8$clinit:I

    .line 2
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v13, 0x400

    new-array v13, v13, [B

    .line 3
    :goto_0
    invoke-virtual {v11, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    move-object/from16 v16, v11

    const/4 v11, 0x0

    if-eq v14, v15, :cond_0

    .line 4
    invoke-virtual {v12, v13, v11, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v11, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 5
    :cond_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/internal/ads/zzhay;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzhja;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzhyl;->zze()Lcom/google/android/gms/internal/ads/zzhyn;

    move-result-object v10

    .line 6
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 8
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v9

    instance-of v12, v9, Lcom/google/android/gms/internal/ads/zzhyk;

    if-eqz v12, :cond_18

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhyl;->zzf()Lcom/google/android/gms/internal/ads/zzhyk;

    move-result-object v9

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhyk;->zzb()I

    move-result v12

    if-eqz v12, :cond_17

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhql;->zzh()Lcom/google/android/gms/internal/ads/zzhqi;

    move-result-object v12

    .line 14
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 15
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzhay;->zzc(Lcom/google/android/gms/internal/ads/zzhyl;)I

    move-result v8

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzhqi;->zza(I)Lcom/google/android/gms/internal/ads/zzhqi;

    :cond_1
    move v8, v11

    .line 16
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhyk;->zzb()I

    move-result v10

    if-ge v8, v10, :cond_16

    .line 17
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzhyk;->zzc(I)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzhyl;->zze()Lcom/google/android/gms/internal/ads/zzhyn;

    move-result-object v10

    .line 18
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 19
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 20
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 21
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 22
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/ads/zzhyn;

    if-eqz v14, :cond_14

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqk;->zze()Lcom/google/android/gms/internal/ads/zzhqj;

    move-result-object v14

    .line 24
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzhyl;->zzd()Ljava/lang/String;

    move-result-object v15

    const-string v11, "unknown status: "

    move-object/from16 v17, v6

    .line 25
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhyo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v7

    const v7, -0x3524e8df    # -7179152.5f

    move/from16 v19, v8

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    const v7, 0x1c83a5f9

    if-eq v6, v7, :cond_3

    const v7, 0x3ecc2a7c

    if-eq v6, v7, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    const-string v6, "DISABLED"

    .line 25
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    goto :goto_3

    :cond_3
    const-string v6, "DESTROYED"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto :goto_3

    :cond_4
    const-string v6, "ENABLED"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, -0x1

    :goto_3
    if-eqz v6, :cond_8

    if-eq v6, v8, :cond_7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const/4 v6, 0x5

    goto :goto_4

    .line 50
    :cond_6
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    .line 46
    invoke-virtual {v11, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v6, 0x4

    goto :goto_4

    :cond_8
    const/4 v6, 0x3

    .line 24
    :goto_4
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzhqj;->zze(I)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 26
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhay;->zzc(Lcom/google/android/gms/internal/ads/zzhyl;)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzhqj;->zzc(I)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 27
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhyl;->zzd()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unknown output prefix type: "

    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhyo; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v10, :sswitch_data_0

    goto :goto_5

    .line 38
    :sswitch_0
    const-string v10, "CRUNCHY"

    .line 28
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x3

    goto :goto_6

    :sswitch_1
    const-string v10, "TINK"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_6

    :sswitch_2
    const-string v10, "RAW"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v8

    goto :goto_6

    :sswitch_3
    const-string v10, "LEGACY"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x2

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v10, -0x1

    :goto_6
    if-eqz v10, :cond_d

    if-eq v10, v8, :cond_c

    const/4 v11, 0x2

    if-eq v10, v11, :cond_b

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 38
    :try_start_2
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqy;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    goto :goto_7

    .line 46
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    .line 45
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_b
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqy;->zzc:Lcom/google/android/gms/internal/ads/zzhqy;

    goto :goto_7

    :cond_c
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    goto :goto_7

    .line 28
    :cond_d
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqy;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    .line 27
    :goto_7
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzhqj;->zzd(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzhyl;->zze()Lcom/google/android/gms/internal/ads/zzhyn;

    move-result-object v6

    .line 30
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 31
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhyl;->zzd()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x2

    .line 32
    invoke-static {v7, v11}, Lcom/google/android/gms/internal/ads/zzhwq;->zza(Ljava/lang/String;I)[B

    move-result-object v7

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqc;->zzd()Lcom/google/android/gms/internal/ads/zzhqa;

    move-result-object v10

    .line 34
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzhyl;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzhqa;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqa;

    .line 35
    sget-object v11, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 36
    array-length v11, v7

    const/4 v13, 0x0

    invoke-static {v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v7

    .line 35
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzhqa;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqa;

    .line 37
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzhyn;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhyl;->zzd()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unknown key material type: "

    .line 38
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzhyo; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sparse-switch v11, :sswitch_data_1

    goto :goto_8

    .line 17
    :sswitch_4
    const-string v11, "ASYMMETRIC_PUBLIC"

    .line 38
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x2

    goto :goto_9

    :sswitch_5
    const-string v11, "ASYMMETRIC_PRIVATE"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v11, v8

    goto :goto_9

    :sswitch_6
    const-string v11, "SYMMETRIC"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v11, v13

    goto :goto_9

    :sswitch_7
    const-string v11, "REMOTE"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x3

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v11, -0x1

    :goto_9
    if-eqz v11, :cond_12

    if-eq v11, v8, :cond_11

    const/4 v8, 0x2

    if-eq v11, v8, :cond_10

    const/4 v8, 0x3

    if-ne v11, v8, :cond_f

    .line 17
    :try_start_3
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqb;->zze:Lcom/google/android/gms/internal/ads/zzhqb;

    goto :goto_a

    .line 49
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    .line 44
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_10
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    goto :goto_a

    :cond_11
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqb;->zzc:Lcom/google/android/gms/internal/ads/zzhqb;

    goto :goto_a

    .line 38
    :cond_12
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    .line 37
    :goto_a
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzhqa;->zzc(Lcom/google/android/gms/internal/ads/zzhqb;)Lcom/google/android/gms/internal/ads/zzhqa;

    .line 39
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhqc;

    .line 29
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzhqj;->zza(Lcom/google/android/gms/internal/ads/zzhqc;)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 40
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 17
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzhqi;->zzb(Lcom/google/android/gms/internal/ads/zzhqk;)Lcom/google/android/gms/internal/ads/zzhqi;

    add-int/lit8 v8, v19, 0x1

    move v11, v13

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v15, -0x1

    goto/16 :goto_1

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    const-string v2, "invalid keyData"

    .line 43
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    const-string v2, "invalid key: keyData must be an object"

    .line 42
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    const-string v2, "invalid key"

    .line 41
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhql;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzhyo; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhay;->zzb:Ljava/io/InputStream;

    .line 49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 11
    :cond_17
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    const-string v2, "invalid keyset: key is empty"

    .line 12
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    const-string v2, "invalid keyset: key must be an array"

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyo;

    const-string v2, "invalid keyset: no key"

    .line 7
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhyo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzhyo; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    :goto_b
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    .line 48
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhay;->zzb:Ljava/io/InputStream;

    .line 49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 50
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7a621837 -> :sswitch_3
        0x13c08 -> :sswitch_2
        0x274af2 -> :sswitch_1
        0x69012c4c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x702213ba -> :sswitch_7
        -0x5feeace9 -> :sswitch_6
        0xedb0e1a -> :sswitch_5
        0x5b7856d2 -> :sswitch_4
    .end sparse-switch
.end method
