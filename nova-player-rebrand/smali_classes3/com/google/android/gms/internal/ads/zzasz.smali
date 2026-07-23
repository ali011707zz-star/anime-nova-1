.class public final Lcom/google/android/gms/internal/ads/zzasz;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasy;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasm;-><init>()V

    return-void
.end method

.method static zzb(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzarq;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzarq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzary;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzasw;
    .locals 8

    .line 1
    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzh()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    .line 2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzm()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 7
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzo()I

    move-result v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 13
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    const-string p2, "application/x-www-form-urlencoded; charset=UTF-8"

    .line 14
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zza()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "POST"

    .line 17
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zzn()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 20
    invoke-virtual {v1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    invoke-virtual {v1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    new-instance p2, Ljava/io/DataOutputStream;

    .line 23
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 24
    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 26
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 35
    :cond_2
    const-string p2, "GET"

    .line 27
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzary;->zza()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x64

    if-lt p2, p1, :cond_4

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_5

    :cond_4
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_5

    const/16 p1, 0x130

    if-eq p2, p1, :cond_5

    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasw;

    .line 31
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasz;->zzb(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzasx;

    .line 33
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzasx;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    move v3, v4

    goto :goto_2

    :cond_5
    :try_start_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasw;

    .line 34
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzasz;->zzb(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p1, p2, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 28
    :cond_6
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    .line 29
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-nez v3, :cond_7

    .line 35
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 36
    :cond_7
    throw p1
.end method
