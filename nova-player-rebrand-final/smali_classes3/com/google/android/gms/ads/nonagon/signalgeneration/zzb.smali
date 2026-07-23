.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

.field private final zzc:J

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;JLandroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza:Landroid/content/Context;

    iput-wide p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc:J

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze:Landroid/content/pm/PackageInfo;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    iput-object p6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "f8L7o2HxjA4p9Z1nQw3E5r6T8yU2iCv0B9kM4sD1f7G3hJ5lK2z0X9cW8vQ6b5N3m1Rg8F2o0Lp7A1e9I4u3Y2t0H8x6W5v4Z1n9Q2w7E3r5T8y6U1i0C9vB8k7M4s3D1f2G0h9J5l8K4z7X3cW2v1Q0b9N8m6A5r4F3o2Lp1E0u9I8y7Y6t5H4x3W2v1Z0n9Q8w7E6r5T4y3U2i1C0v9B8k7M6s5D4f3G2h1J0l9K8z7X6cW5v4Q3b2N1m0Rg9F8o7Lp6A5e4I3u2Y1t0H8x7W6v5Z4n3Q2w1E0r9T8y7U6i5C4v3B2k1M0s9D8f7G6h5J4l3K2z1X0cW9v8Q7b6N5m4A3r2F1o0Lp9E8u7I6y5T4h3W2v1Z0n0Q9w8E7r6T5y4U3i2C1v0B9k8M7s6D5f4G3h2J1l0K9z8X7cW6v5Q4b3N2m1R0g9F8o7L6p5A4e3I2u1Y0t9H8x7W6v5Z4n3Q2w1E0r9T8y7U6i5C4v3B2k1M0s9D8f7G6h5J4l3K2z1X0cW9v8Q7b6N5m4A3r2F1o0Lp9E8u7I6y5T4h3W2"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zze()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzj()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zziD:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zziE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private static final zzg(Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    const-string v0, "sod_h"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    add-int/lit8 p1, p1, -0x1

    .line 2
    const-string v0, "cmr"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "params"

    iget-object v3, p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zza:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "signal_dictionary"

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzf:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzm(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sr"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, ""

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "rs"

    .line 12
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ts_ms"

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :goto_0
    const-string v1, "DiskCachingManager.createStringToWrite"

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcdh;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Landroid/os/Bundle;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 1
    const-string v3, "DiskCachingManager.getSignalResponse"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzK:Lcom/google/android/gms/internal/ads/zzdxh;

    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzi()V

    const/4 v0, 0x7

    .line 4
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze:Landroid/content/pm/PackageInfo;

    const/16 v6, 0xa

    if-nez v4, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzi()V

    .line 6
    invoke-static {v2, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    :goto_0
    return-object v5

    :cond_1
    iget-object v7, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    iget-object v8, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza:Landroid/content/Context;

    .line 7
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zze()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzf()I

    move-result v10

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzg()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzh()I

    move-result v12

    .line 11
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v10, v9, :cond_2

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v12, v9, :cond_3

    :cond_2
    move-object/from16 v17, v5

    goto/16 :goto_4

    .line 16
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzj()Ljava/util/Map;

    move-result-object v4

    .line 17
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 18
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "ts_ms"

    .line 19
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 21
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhe;->zziC:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v14

    .line 21
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    move-object/from16 v17, v5

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgal;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbhe;->zzec:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v13

    .line 25
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v15

    .line 27
    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzgal;->zzi(JZ)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v12

    .line 28
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgam;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgam;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhe;->zzed:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v14

    .line 30
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v5

    :try_start_1
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v5

    .line 32
    invoke-virtual {v13, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzgam;->zzi(JZ)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgah;->zzb()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgah;->zzb()J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-gtz v12, :cond_6

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgah;->zzb()J

    move-result-wide v12

    cmp-long v12, v12, v15

    if-eqz v12, :cond_7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgah;->zzb()J

    move-result-wide v12

    cmp-long v5, v12, v10

    if-lez v5, :cond_7

    .line 33
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzb(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    :goto_3
    move-object/from16 v5, v17

    goto/16 :goto_1

    :catch_1
    move-object/from16 v17, v5

    goto :goto_3

    :cond_8
    move-object/from16 v17, v5

    goto :goto_5

    .line 13
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzi()V

    .line 14
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    invoke-virtual {v7, v5, v4, v8, v9}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzd(Ljava/lang/String;ILjava/lang/String;I)V

    :goto_5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzL:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 34
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc:J

    sub-long/2addr v4, v7

    .line 36
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbhe;->zziz:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v7

    .line 36
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_9

    const/4 v0, 0x2

    .line 38
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    return-object v17

    :cond_9
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzM:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 39
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcdh;->zza:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcdh;->zzb:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcdh;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 40
    iget-object v4, v11, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    .line 41
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    .line 42
    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v11, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    iget-object v10, v11, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    iget-object v12, v11, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    add-int v13, v13, v16

    add-int v13, v13, v18

    add-int v13, v13, v19

    add-int v13, v13, v20

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 44
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x3

    .line 45
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    return-object v17

    :cond_a
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzN:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 46
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxh;->zzO:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 47
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    iget-object v4, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 48
    invoke-virtual {v4, v13}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzP:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 49
    invoke-static {v2, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    .line 50
    invoke-direct {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcdh;->zzc:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcdh;

    const/4 v12, 0x2

    .line 51
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;

    move-object/from16 v6, p2

    invoke-direct {v5, v1, v13, v6, v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzcdh;)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zziB:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    invoke-interface {v0, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    .line 56
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    return-object v17

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxh;->zzQ:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 57
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V

    .line 58
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "sr"

    .line 59
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v0, 0x8

    .line 61
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    return-object v17

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_d
    const-string v5, "rs"

    .line 62
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v0, 0x9

    .line 64
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    return-object v17

    :cond_e
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0xa

    .line 65
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    invoke-static {v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzR:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 67
    invoke-static {v2, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdxh;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v5, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;

    .line 70
    new-instance v6, Landroid/util/JsonReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v4, v17

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;-><init>(Landroid/util/JsonReader;Lcom/google/android/gms/internal/ads/zzbzu;)V

    iput-object v0, v5, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    iput-object v2, v5, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zze:Landroid/os/Bundle;

    const-string v0, "sod_h"

    const/4 v4, 0x1

    .line 71
    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v5

    :catch_3
    move-exception v0

    const/4 v4, 0x6

    .line 72
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v17, 0x0

    return-object v17

    :goto_6
    const/4 v4, 0x5

    .line 68
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v17, 0x0

    return-object v17
.end method

.method final synthetic zzd(Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzcdh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, p3, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcdh;Lcom/google/android/gms/internal/ads/zzcda;)V

    :cond_1
    :goto_0
    return-void
.end method
