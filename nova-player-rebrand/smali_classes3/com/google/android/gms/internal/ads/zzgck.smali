.class public final Lcom/google/android/gms/internal/ads/zzgck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgce;


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;

.field private final zzb:Ljava/lang/String;

.field private final zzc:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgck;->zza:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgck;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgck;->zzc:J

    return-void
.end method

.method private final zze(Ljava/lang/String;Z[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgch;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgch;-><init>(Lcom/google/android/gms/internal/ads/zzgck;Ljava/lang/String;ZLjava/lang/String;[B)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private final synthetic zzf(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V
    .locals 5

    .line 1
    const-string v0, "Timeout: "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 3
    :try_start_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgci;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzgci;-><init>(Ljava/net/HttpURLConnection;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgck;->zza:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgck;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgck;->zzc:J

    long-to-int v1, v1

    .line 5
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string p3, "POST"

    .line 8
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p3, "Content-Type"

    .line 9
    invoke-virtual {p1, p3, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p3

    goto/16 :goto_a

    :catch_0
    move-exception p3

    goto/16 :goto_b

    .line 10
    :cond_0
    :goto_0
    new-instance p3, Ljava/io/BufferedOutputStream;

    .line 11
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {p3, p5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p4

    .line 10
    :try_start_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p4

    .line 14
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 p4, 0x190

    if-ge p3, p4, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :goto_3
    :try_start_6
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v1, 0x0

    if-nez p4, :cond_3

    :try_start_7
    new-array v1, v1, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 17
    :try_start_8
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p3

    goto :goto_8

    :catchall_4
    move-exception p3

    goto :goto_6

    :cond_3
    const/16 v2, 0x1000

    .line 25
    :try_start_9
    new-array v2, v2, [B

    .line 18
    :goto_4
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 19
    invoke-virtual {p5, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 17
    :try_start_a
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    :goto_5
    new-instance p4, Lcom/google/android/gms/internal/ads/zzgcj;

    invoke-direct {p4, p3, v1}, Lcom/google/android/gms/internal/ads/zzgcj;-><init>(I[B)V

    .line 22
    invoke-virtual {p2, p4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_f

    .line 21
    :goto_6
    :try_start_c
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p5

    :try_start_d
    invoke-virtual {p3, p5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_8
    if-eqz p4, :cond_5

    :try_start_e
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception p4

    :try_start_f
    invoke-virtual {p3, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    throw p3
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_a
    move-object v1, p1

    goto :goto_c

    :goto_b
    move-object v1, p1

    goto :goto_e

    :catchall_7
    move-exception p1

    move-object p3, p1

    goto :goto_c

    :catch_1
    move-exception p1

    move-object p3, p1

    goto :goto_e

    .line 23
    :goto_c
    :try_start_10
    invoke-virtual {p2, p3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :goto_d
    move-object p1, v1

    goto :goto_f

    :catchall_8
    move-exception p1

    goto :goto_10

    .line 24
    :goto_e
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x9

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_d

    :goto_f
    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void

    :goto_10
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    :cond_7
    throw p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgck;->zze(Ljava/lang/String;Z[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x1

    .line 1
    const-string v0, "application/x-protobuf"

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgck;->zze(Ljava/lang/String;Z[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/lang/String;ZLjava/lang/String;[BLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcg;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgcg;-><init>(Lcom/google/android/gms/internal/ads/zzgck;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzgck;->zza:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, ""

    return-object p1
.end method

.method final synthetic zzd(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzgck;->zzf(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V

    return-void
.end method
