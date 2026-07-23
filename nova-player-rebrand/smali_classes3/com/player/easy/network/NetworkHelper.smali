.class public final Lcom/player/easy/network/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/player/easy/network/NetworkHelper;",
        "",
        "<init>",
        "()V",
        "clientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "getClientBuilder",
        "()Lokhttp3/OkHttpClient$Builder;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "buildInsecureClient",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final clientBuilder:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method public static synthetic $r8$lambda$vL_xBGSHnvGvRCTtef3DoY977-8(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/network/NetworkHelper;->buildInsecureClient$lambda$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 17
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x23

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/player/easy/network/NetworkHelper;->clientBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 30
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/network/NetworkHelper;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static final buildInsecureClient$lambda$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final buildInsecureClient()Lokhttp3/OkHttpClient;
    .locals 5

    .line 40
    new-instance v0, Lcom/player/easy/network/NetworkHelper$buildInsecureClient$trustAllCerts$1;

    invoke-direct {v0}, Lcom/player/easy/network/NetworkHelper$buildInsecureClient$trustAllCerts$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 46
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 47
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 48
    iget-object v3, p0, Lcom/player/easy/network/NetworkHelper;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const-string v4, "getSocketFactory(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v1, v1, v2

    const-string v2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/player/easy/network/NetworkHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/player/easy/network/NetworkHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/player/easy/network/NetworkHelper;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/player/easy/network/NetworkHelper;->clientBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method
