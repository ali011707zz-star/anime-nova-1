.class final Lcom/google/android/gms/internal/ads/zzciw;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhu;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzht;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhf;

.field private zzg:Ljava/net/HttpURLConnection;

.field private final zzh:Ljava/util/Queue;

.field private zzi:Ljava/io/InputStream;

.field private zzj:Z

.field private zzk:I

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private final zzq:J

.field private final zzr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzciw;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhz;IIJJ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzd:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzht;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zze:Lcom/google/android/gms/internal/ads/zzht;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzb:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzc:I

    new-instance p1, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzh:Ljava/util/Queue;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzq:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzr:J

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    :cond_0
    return-void
.end method

.method private final zzl()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzh:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Unexpected error while disconnecting"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzg:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1
    :cond_0
    :try_start_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzl:J

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzm:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    const/4 v7, -0x1

    if-nez v2, :cond_1

    return v7

    :cond_1
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzn:J

    add-long/2addr v2, v4

    int-to-long v8, v0

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzr:J

    add-long/2addr v2, v8

    add-long/2addr v2, v4

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzp:J

    const-wide/16 v12, 0x1

    add-long v14, v10, v12

    cmp-long v0, v2, v14

    if-lez v0, :cond_2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzo:J

    cmp-long v0, v10, v2

    if-gez v0, :cond_2

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzq:J

    add-long/2addr v10, v14

    sub-long/2addr v10, v4

    const-wide/16 v4, -0x1

    add-long/2addr v10, v4

    add-long v16, v14, v8

    add-long v4, v16, v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/4 v6, 0x2

    move-wide v2, v14

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzciw;->zzk(JJI)Ljava/net/HttpURLConnection;

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzp:J

    move-wide v10, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    add-long/2addr v10, v12

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzn:J

    sub-long/2addr v10, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzm:J

    sub-long/2addr v10, v2

    .line 4
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 5
    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 6
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzm:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzm:J

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V

    return v0

    .line 6
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    const/16 v4, 0x7d0

    const/4 v5, 0x2

    .line 8
    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 9
    throw v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 11

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzm:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    .line 2
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    const-wide/16 v8, -0x1

    cmp-long v2, v0, v8

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzq:J

    goto :goto_0

    .line 17
    :cond_0
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzq:J

    .line 3
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v3

    add-long v5, v0, v8

    .line 2
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzn:J

    const/4 v7, 0x1

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzciw;->zzk(JJI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzg:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Range"

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzciw;->zza:Ljava/util/regex/Pattern;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 9
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const/4 v4, 0x2

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x3

    .line 11
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzl:J

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzn:J

    add-long/2addr v0, v6

    add-long/2addr v0, v8

    .line 16
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzo:J

    goto :goto_1

    .line 17
    :cond_1
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzn:J

    sub-long v6, v0, v6

    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzl:J

    add-long/2addr v0, v8

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzo:J

    .line 16
    :goto_1
    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzp:J

    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzj:Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/zzciw;->zzl:J

    return-wide v0

    .line 12
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Range ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 3
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzciu;

    .line 14
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzciu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhf;)V

    throw v1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzg:Ljava/net/HttpURLConnection;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;
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

    .line 6
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

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
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;->zzl()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzj:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzj:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_1
    return-void

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;->zzl()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzj:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzj:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    .line 6
    :cond_2
    throw v2
.end method

.method public final zzj()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzg:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final zzk(JJI)Ljava/net/HttpURLConnection;
    .locals 9

    .line 1
    const-string v1, "Unable to connect to "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "-"

    const-string v3, "bytes="

    .line 2
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzb:I

    .line 4
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzc:I

    .line 5
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zze:Lcom/google/android/gms/internal/ads/zzht;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzht;->zza()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    move v7, p5

    goto/16 :goto_3

    .line 8
    :cond_0
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    .line 9
    invoke-virtual {v4, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "User-Agent"

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzd:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string p2, "identity"

    .line 11
    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GET"

    .line 12
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzh:Ljava/util/Queue;

    .line 14
    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzk:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_2

    const/16 p1, 0x12b

    if-gt p2, p1, :cond_2

    .line 23
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;

    if-eqz p2, :cond_1

    .line 24
    new-instance p2, Ljava/io/SequenceInputStream;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;

    invoke-direct {p2, p3, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzi:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v4

    .line 25
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;->zzl()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    const/16 p4, 0x7d0

    .line 26
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 27
    throw p2

    .line 20
    :cond_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;->zzl()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzciv;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzk:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    .line 22
    invoke-direct {p2, p3, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzciv;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzhf;I)V

    throw p2

    :catch_2
    move-exception v0

    move-object p2, v0

    move-object v4, p2

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzciw;->zzl()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhq;

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    move v7, p5

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 18
    throw v2

    :catch_3
    move-exception v0

    move v7, p5

    move-object p1, v0

    move-object v5, p1

    .line 27
    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhq;

    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzf:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v8, v7

    const/16 v7, 0x7d0

    .line 29
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhf;II)V

    .line 28
    throw v3
.end method
