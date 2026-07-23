.class public final Lcoil/fetch/HttpUriFetcher;
.super Lcoil/fetch/HttpFetcher;
.source "HttpFetcher.kt"


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1

    const-string v0, "callFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcoil/fetch/HttpFetcher;-><init>(Lokhttp3/Call$Factory;)V

    return-void
.end method


# virtual methods
.method public handles(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public key(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 24
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->key(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toHttpUrl(Landroid/net/Uri;)Lokhttp3/HttpUrl;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    const-string v0, "get(toString())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic toHttpUrl(Ljava/lang/Object;)Lokhttp3/HttpUrl;
    .locals 0

    .line 24
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUriFetcher;->toHttpUrl(Landroid/net/Uri;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method
