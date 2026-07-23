.class public abstract Lcom/tonyodev/fetch2okhttp/OkHttpUtils;
.super Ljava/lang/Object;
.source "Utils.kt"


# direct methods
.method public static final getDefaultCookieJar()Lokhttp3/CookieJar;
    .locals 2

    .line 10
    invoke-static {}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getDefaultCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    .line 11
    new-instance v1, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v1, v0}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    return-object v1
.end method
