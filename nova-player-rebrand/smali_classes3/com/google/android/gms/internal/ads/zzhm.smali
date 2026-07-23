.class public final Lcom/google/android/gms/internal/ads/zzhm;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhu;


# instance fields
.field private final zza:Z

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzht;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzht;

.field private zzg:Lcom/google/android/gms/internal/ads/zzhf;

.field private zzh:Ljava/net/HttpURLConnection;

.field private zzi:Ljava/io/InputStream;

.field private zzj:Z

.field private zzk:I

.field private zzl:J

.field private zzm:J


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;IIZZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzgrd;Z[B)V
    .locals 0

    const/4 p5, 0x1

    .line 1
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhm;->zze:Lcom/google/android/gms/internal/ads/zzht;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzht;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Lcom/google/android/gms/internal/ads/zzht;

    return-void
.end method

.method private final zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzb:I

    .line 2
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:I

    .line 3
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance p2, Ljava/util/HashMap;

    .line 4
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zze:Lcom/google/android/gms/internal/ads/zzht;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->zza()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Lcom/google/android/gms/internal/ads/zzht;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->zza()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    invoke-interface {p2, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p10, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    cmp-long p10, p4, p2

    const-wide/16 v0, -0x1

    if-nez p10, :cond_2

    cmp-long p4, p6, v0

    if-nez p4, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    move-wide p4, p2

    .line 21
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bytes="

    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p3, p6, v0

    if-eqz p3, :cond_3

    add-long/2addr p4, p6

    add-long/2addr p4, v0

    .line 14
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    .line 9
    const-string p3, "Range"

    .line 15
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Ljava/lang/String;

    if-eqz p2, :cond_5

    const-string p3, "User-Agent"

    .line 16
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p2, 0x1

    if-eq p2, p8, :cond_6

    const-string p2, "identity"

    goto :goto_2

    .line 21
    :cond_6
    const-string p2, "gzip"

    .line 16
    :goto_2
    const-string p3, "Accept-Encoding"

    .line 17
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 20
    sget p2, Lcom/google/android/gms/internal/ads/zzhf;->$r8$clinit:I

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method private final zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhf;)Ljava/net/URL;
    .locals 5

    const/16 v0, 0x7d1

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhq;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Unsupported protocol redirect: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Z

    if-nez v3, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhq;

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Disallowed cross-protocol redirect ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v2

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhq;

    .line 2
    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw p2

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhq;

    const-string p2, "Null location redirect"

    .line 7
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw p1
.end method

.method private final zzm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzh:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzl:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzm:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    return v3

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    return v3

    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzm:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzm:J

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzg:Lcom/google/android/gms/internal/ads/zzhf;

    .line 4
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 p3, 0x2

    .line 5
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;I)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 1
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzhm;->zzg:Lcom/google/android/gms/internal/ads/zzhf;

    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/zzhm;->zzm:J

    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/zzhm;->zzl:J

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzf(Lcom/google/android/gms/internal/ads/zzhf;)V

    const/4 v15, 0x1

    :try_start_0
    const-string v0, "Too many redirects: "

    .line 2
    new-instance v2, Ljava/net/URL;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    iget-wide v5, v12, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    .line 6
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    .line 7
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzhf;->zza(I)Z

    move-result v9

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzhm;->zza:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 15
    :try_start_1
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzhf;->zzd:Ljava/util/Map;

    const/4 v3, 0x1

    move v0, v4

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhm;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    move-object/from16 v7, p0

    move-wide/from16 v18, v13

    move v13, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_d

    :cond_0
    move v1, v4

    :goto_0
    add-int/lit8 v3, v4, 0x1

    const/16 v10, 0x14

    if-gt v4, v10, :cond_14

    .line 8
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzhf;->zzd:Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v3

    const/4 v3, 0x1

    move v10, v4

    const/4 v4, 0x0

    move/from16 v16, v10

    const/4 v10, 0x0

    move-wide/from16 v18, v13

    move/from16 v17, v16

    move v13, v1

    move-object/from16 v1, p0

    .line 9
    :try_start_2
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhm;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v4, v2

    move-wide/from16 v20, v7

    move-object v7, v1

    move-wide/from16 v1, v20

    .line 10
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const-string v10, "Location"

    .line 11
    invoke-virtual {v3, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x12c

    if-eq v8, v11, :cond_13

    const/16 v11, 0x12d

    if-eq v8, v11, :cond_13

    const/16 v11, 0x12e

    if-eq v8, v11, :cond_13

    const/16 v11, 0x12f

    if-eq v8, v11, :cond_13

    const/16 v11, 0x133

    if-eq v8, v11, :cond_13

    const/16 v11, 0x134

    if-ne v8, v11, :cond_1

    goto/16 :goto_c

    :cond_1
    move-object v2, v3

    .line 15
    :goto_1
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzh:Ljava/net/HttpURLConnection;

    .line 16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzk:I

    .line 17
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzk:I

    const/16 v3, 0x7d8

    const-string v4, "Content-Range"

    const/16 v5, 0xc8

    const-wide/16 v8, -0x1

    if-lt v1, v5, :cond_e

    const/16 v6, 0x12b

    if-le v1, v6, :cond_2

    goto/16 :goto_8

    .line 31
    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzk:I

    if-ne v0, v5, :cond_3

    .line 32
    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    cmp-long v5, v0, v18

    if-nez v5, :cond_4

    :cond_3
    move-wide/from16 v0, v18

    :cond_4
    const-string v5, "Content-Encoding"

    .line 33
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 35
    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    cmp-long v6, v10, v8

    if-eqz v6, :cond_5

    iput-wide v10, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzl:J

    goto :goto_2

    .line 48
    :cond_5
    const-string v6, "Content-Length"

    .line 36
    invoke-virtual {v2, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzhv;->zzb(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-eqz v4, :cond_6

    sub-long v8, v10, v0

    :cond_6
    iput-wide v8, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzl:J

    goto :goto_2

    .line 39
    :cond_7
    iget-wide v8, v12, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    iput-wide v8, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzl:J

    :goto_2
    const/16 v4, 0x7d0

    .line 40
    :try_start_4
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;

    if-eqz v5, :cond_8

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;

    .line 41
    invoke-direct {v2, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_3
    iput-boolean v15, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzj:Z

    .line 44
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    cmp-long v2, v0, v18

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    const/16 v2, 0x1000

    :try_start_5
    new-array v2, v2, [B

    :goto_4
    cmp-long v5, v0, v18

    if-lez v5, :cond_c

    const-wide/16 v5, 0x1000

    .line 45
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;

    .line 46
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-virtual {v6, v2, v13, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    int-to-long v8, v5

    sub-long/2addr v0, v8

    .line 48
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    .line 49
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhq;

    .line 50
    invoke-direct {v0, v12, v3, v15}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v0

    .line 47
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhq;

    .line 49
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-direct {v0, v1, v12, v4, v15}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 44
    :cond_c
    :goto_5
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzl:J

    return-wide v0

    .line 51
    :goto_6
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzhm;->zzm()V

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhq;

    if-eqz v1, :cond_d

    .line 52
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhq;

    throw v0

    .line 25
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhq;

    .line 53
    invoke-direct {v1, v0, v12, v4, v15}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v1

    .line 42
    :goto_7
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzhm;->zzm()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhq;

    .line 43
    invoke-direct {v1, v0, v12, v4, v15}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v1

    .line 20
    :cond_e
    :goto_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iget v5, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzk:I

    const/16 v6, 0x1a0

    if-ne v5, v6, :cond_10

    .line 21
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhv;->zza(Ljava/lang/String;)J

    move-result-wide v4

    .line 22
    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    cmp-long v4, v10, v4

    if-nez v4, :cond_10

    iput-boolean v15, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzj:Z

    .line 29
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    .line 30
    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_f

    return-wide v0

    :cond_f
    return-wide v18

    .line 23
    :cond_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 24
    :try_start_6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zza(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_9

    :cond_11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    .line 25
    :catch_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B

    .line 26
    :goto_9
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzhm;->zzm()V

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzk:I

    if-ne v4, v6, :cond_12

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhc;

    .line 27
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(I)V

    :goto_a
    move-object v6, v2

    move-object v3, v4

    move-object v2, v0

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    goto :goto_a

    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhs;

    move-object v4, v1

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhm;->zzk:I

    move-object v5, v12

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhf;[B)V

    throw v0

    :catch_4
    move-exception v0

    goto :goto_d

    .line 12
    :cond_13
    :goto_c
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    invoke-direct {v7, v4, v10, v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhf;)Ljava/net/URL;

    move-result-object v3

    move-wide v7, v1

    move-object v2, v3

    move v1, v13

    move/from16 v4, v17

    move-wide/from16 v13, v18

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v7, v1

    goto :goto_d

    :cond_14
    move-object/from16 v7, p0

    move/from16 v17, v3

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhq;

    .line 14
    new-instance v2, Ljava/net/NoRouteToHostException;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v17

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7d1

    invoke-direct {v1, v2, v12, v0, v15}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 18
    :goto_d
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzhm;->zzm()V

    .line 19
    invoke-static {v0, v12, v15}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;I)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v0

    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzh:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzg:Lcom/google/android/gms/internal/ads/zzhf;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzg:Lcom/google/android/gms/internal/ads/zzhf;

    .line 2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzm()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzj:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzj:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzh:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzg:Lcom/google/android/gms/internal/ads/zzhf;

    return-void

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzi:Ljava/io/InputStream;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzm()V

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzj:Z

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzj:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzh:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzg:Lcom/google/android/gms/internal/ads/zzhf;

    .line 5
    throw v2
.end method

.method public final zzj()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzh:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgui;->zza()Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
