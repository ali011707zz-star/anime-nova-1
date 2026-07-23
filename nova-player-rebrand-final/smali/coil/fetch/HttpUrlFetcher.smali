.class public final Lcoil/fetch/HttpUrlFetcher;
.super Lcoil/fetch/HttpFetcher;
.source "HttpFetcher.kt"


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1

    const-string v0, "callFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcoil/fetch/HttpFetcher;-><init>(Lokhttp3/Call$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    check-cast p1, Lokhttp3/HttpUrl;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUrlFetcher;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic toHttpUrl(Ljava/lang/Object;)Lokhttp3/HttpUrl;
    .locals 0

    .line 33
    check-cast p1, Lokhttp3/HttpUrl;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUrlFetcher;->toHttpUrl(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public toHttpUrl(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
