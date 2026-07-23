.class public final Lcom/google/android/gms/internal/ads/zzehd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# static fields
.field private static final zzd:Ljava/util/regex/Pattern;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfoe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfoo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-string v0, "([^;]+=[^;]+)(;\\s|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehd;->zzd:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:Lcom/google/android/gms/internal/ads/zzfoo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzehc;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zza()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http_timeout_millis"

    const v2, 0xea60

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zza()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, ""

    if-ne v1, v2, :cond_e

    move-object v1, v6

    new-instance v6, Ljava/util/HashMap;

    .line 6
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzg()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzbv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v7, "Cookie"

    if-eqz v2, :cond_5

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_1

    .line 28
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzehd;->zzd:Ljava/util/regex/Pattern;

    .line 11
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v2, v1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 14
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "id="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ide="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 16
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "; "

    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzf()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zza()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 46
    :cond_7
    const-string v2, "pii"

    .line 22
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    const-string v2, "doritos"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 24
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "x-afma-drt-cookie"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_8
    const-string v2, "doritos_v2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x-afma-drt-v2-cookie"

    .line 27
    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v0, "DSID signal does not exist."

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 21
    :cond_a
    :goto_3
    new-array v0, v3, [B

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzw;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzd()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 35
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 33
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :goto_5
    const-string v3, "gzip compression failed, sending uncompressed."

    .line 38
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "PrepareRequestFunction.apply"

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_c

    .line 37
    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 40
    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object v7, v0

    goto :goto_7

    :cond_c
    move-object v7, v2

    .line 41
    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzl()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_8

    :cond_d
    move-object v8, v1

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 43
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzegy;

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzb()Lcom/google/android/gms/internal/ads/zzbzw;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzw;->zzf()Z

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    return-object v3

    :cond_e
    move-object v1, v6

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zza()I

    move-result p1

    if-ne p1, v4, :cond_10

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zzb()Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 50
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 51
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object v6, v1

    :goto_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzecr;

    .line 52
    const-string v0, "Error building request URL: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzecr;-><init>(ILjava/lang/String;)V

    goto :goto_a

    .line 33
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzecr;

    .line 53
    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzecr;-><init>(I)V

    .line 52
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:Lcom/google/android/gms/internal/ads/zzfoo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 54
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 55
    throw p1
.end method
