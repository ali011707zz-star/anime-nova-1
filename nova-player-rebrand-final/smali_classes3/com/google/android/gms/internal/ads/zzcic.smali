.class final Lcom/google/android/gms/internal/ads/zzcic;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhu;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzc:Ljavax/net/ssl/SSLSocketFactory;

.field private final zzd:I

.field private final zze:I

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzht;

.field private zzh:Lcom/google/android/gms/internal/ads/zzhf;

.field private zzi:Ljava/net/HttpURLConnection;

.field private zzj:Ljava/io/InputStream;

.field private zzk:Z

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:I

.field private final zzr:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcic;->zza:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcic;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhz;III)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcib;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcib;-><init>(Lcom/google/android/gms/internal/ads/zzcic;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzc:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzr:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzf:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzht;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzg:Lcom/google/android/gms/internal/ads/zzht;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzd:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcic;->zze:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzq:I

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    :cond_0
    return-void
.end method

.method private final zzn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Unexpected error while disconnecting"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 9

    .line 9
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzm:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcic;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_1

    const/16 v3, 0x1000

    new-array v3, v3, [B

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzo:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzm:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    .line 2
    array-length v8, v3

    sub-long/2addr v6, v4

    int-to-long v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v5, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_3

    if-eq v4, v2, :cond_2

    .line 7
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzo:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzo:J

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 8
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    if-nez p3, :cond_5

    return v1

    .line 9
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzn:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_7

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzp:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_6

    return v2

    :cond_6
    int-to-long v5, p3

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Ljava/io/InputStream;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzn:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_8

    return v2

    .line 11
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 10
    :cond_9
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzp:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzp:J

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 11
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzh:Lcom/google/android/gms/internal/ads/zzhf;

    const/16 v0, 0x7d0

    const/4 v1, 0x2

    .line 13
    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 14
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 1
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzh:Lcom/google/android/gms/internal/ads/zzhf;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzp:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzo:J

    const-string v4, "Unable to connect to "

    :try_start_0
    const-string v0, "Too many redirects: "

    new-instance v6, Ljava/net/URL;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    iget-wide v7, v5, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    .line 4
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    const/4 v11, 0x1

    .line 5
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzhf;->zza(I)Z

    move-result v12

    const/4 v14, 0x0

    :goto_0
    add-int/lit8 v15, v14, 0x1

    move-wide/from16 v16, v2

    const/16 v2, 0x14

    if-gt v14, v2, :cond_16

    const-string v2, "bytes="

    const-string v3, "-"

    .line 6
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 7
    instance-of v11, v14, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v11, :cond_0

    .line 8
    move-object v11, v14

    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzc:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v11, v13}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_1
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzd:I

    .line 9
    invoke-virtual {v14, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzcic;->zze:I

    .line 10
    invoke-virtual {v14, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzg:Lcom/google/android/gms/internal/ads/zzht;

    .line 11
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzht;->zza()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-wide/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v7, v20

    goto :goto_2

    :cond_1
    move-wide/from16 v20, v7

    cmp-long v7, v20, v16

    const-wide/16 v22, -0x1

    if-nez v7, :cond_2

    cmp-long v7, v9, v22

    if-eqz v7, :cond_4

    move-wide/from16 v7, v16

    goto :goto_3

    :cond_2
    move-wide/from16 v7, v20

    .line 13
    :goto_3
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    cmp-long v3, v9, v22

    if-eqz v3, :cond_3

    add-long/2addr v7, v9

    add-long v7, v7, v22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 14
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v3, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v3, "Range"

    .line 15
    invoke-virtual {v14, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "User-Agent"

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzf:Ljava/lang/String;

    .line 16
    invoke-virtual {v14, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_5

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    .line 17
    invoke-virtual {v14, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v14, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 19
    invoke-virtual {v14, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 20
    invoke-virtual {v14}, Ljava/net/URLConnection;->connect()V

    .line 21
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v7, 0x12c

    if-eq v3, v7, :cond_6

    const/16 v7, 0x12d

    if-eq v3, v7, :cond_6

    const/16 v7, 0x12e

    if-eq v3, v7, :cond_6

    const/16 v7, 0x12f

    if-eq v3, v7, :cond_6

    const/16 v7, 0x133

    if-eq v3, v7, :cond_6

    const/16 v7, 0x134

    if-ne v3, v7, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 25
    :cond_7
    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzl:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_11

    const/16 v3, 0x12b

    if-le v0, v3, :cond_8

    goto/16 :goto_7

    :cond_8
    if-ne v0, v2, :cond_9

    .line 38
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    cmp-long v0, v2, v16

    if-nez v0, :cond_a

    :cond_9
    move-wide/from16 v2, v16

    :cond_a
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzm:J

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zza(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 40
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    cmp-long v0, v2, v22

    if-eqz v0, :cond_b

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzn:J

    goto/16 :goto_6

    .line 61
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    .line 41
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "] ["

    const-string v6, "Inconsistent headers ["

    const-string v7, "]"

    if-nez v3, :cond_c

    .line 43
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 44
    :catch_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Content-Length ["

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 45
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    :cond_c
    move-wide/from16 v8, v22

    .line 43
    :goto_4
    const-string v3, "Content-Range"

    .line 46
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/google/android/gms/internal/ads/zzcic;->zza:Ljava/util/regex/Pattern;

    .line 48
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x2

    .line 50
    :try_start_3
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v3, v8, v16

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    if-gez v3, :cond_d

    move-wide v8, v10

    goto :goto_5

    :cond_d
    cmp-long v3, v8, v10

    if-eqz v3, :cond_e

    .line 51
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v3, v12

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 52
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 53
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 54
    :catch_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected Content-Range ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    :cond_e
    :goto_5
    cmp-long v0, v8, v22

    if-eqz v0, :cond_f

    .line 50
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzm:J

    sub-long v22, v8, v2

    :cond_f
    move-wide/from16 v2, v22

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzn:J

    goto :goto_6

    .line 56
    :cond_10
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzn:J

    .line 40
    :goto_6
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    .line 57
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Z

    .line 61
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzn:J

    return-wide v2

    :catch_3
    move-exception v0

    .line 58
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcic;->zzn()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhq;

    const/16 v3, 0x7d0

    const/4 v7, 0x1

    .line 59
    invoke-direct {v2, v0, v5, v3, v7}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 60
    throw v2

    .line 28
    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    .line 33
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 34
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcic;->zzn()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhs;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzl:I

    const/4 v5, 0x0

    .line 35
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfj;->zzb:[B

    const/4 v4, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhf;[B)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzl:I

    const/16 v3, 0x1a0

    if-ne v0, v3, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    const/16 v3, 0x7d8

    .line 36
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    :cond_12
    throw v2

    :catch_4
    move-exception v0

    .line 29
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcic;->zzn()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhq;

    .line 30
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    .line 31
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    const/4 v7, 0x1

    move-object v4, v0

    .line 32
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 31
    throw v2

    .line 21
    :goto_8
    :try_start_5
    const-string v3, "Location"

    .line 22
    invoke-virtual {v14, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v8, "Unsupported protocol redirect: "

    if-eqz v3, :cond_15

    .line 26
    new-instance v11, Ljava/net/URL;

    .line 24
    invoke-direct {v11, v6, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v6, "https"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "http"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_9

    .line 27
    :cond_13
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    move-object v6, v11

    move v14, v15

    move-wide/from16 v2, v16

    move v11, v7

    move-wide/from16 v7, v20

    goto/16 :goto_0

    .line 26
    :cond_15
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Null location redirect"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_16
    new-instance v3, Ljava/net/NoRouteToHostException;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 56
    :goto_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhq;

    .line 63
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    .line 64
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    const/4 v7, 0x1

    move-object v4, v0

    .line 65
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 64
    throw v2
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Ljava/io/InputStream;
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

    .line 7
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzh:Lcom/google/android/gms/internal/ads/zzhf;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    .line 2
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 3
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Ljava/io/InputStream;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcic;->zzn()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzr:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Ljava/io/InputStream;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcic;->zzn()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzr:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 7
    throw v2
.end method

.method public final zzj()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final zzk(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzq:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzr:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzq:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Failed to update receive buffer size."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final synthetic zzl(Ljava/net/Socket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzr:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzm()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzq:I

    return v0
.end method
