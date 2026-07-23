.class public abstract Lcoil/fetch/HttpFetcher;
.super Ljava/lang/Object;
.source "HttpFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/HttpFetcher$Companion;
    }
.end annotation


# static fields
.field private static final CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

.field private static final CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

.field public static final Companion:Lcoil/fetch/HttpFetcher$Companion;


# instance fields
.field private final callFactory:Lokhttp3/Call$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/fetch/HttpFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/fetch/HttpFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/fetch/HttpFetcher;->Companion:Lcoil/fetch/HttpFetcher$Companion;

    .line 119
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lcoil/fetch/HttpFetcher;->CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    .line 120
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lcoil/fetch/HttpFetcher;->CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1

    const-string v0, "callFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/fetch/HttpFetcher;->callFactory:Lokhttp3/Call$Factory;

    return-void
.end method

.method static synthetic fetch$suspendImpl(Lcoil/fetch/HttpFetcher;Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    instance-of p1, p5, Lcoil/fetch/HttpFetcher$fetch$1;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Lcoil/fetch/HttpFetcher$fetch$1;

    iget p3, p1, Lcoil/fetch/HttpFetcher$fetch$1;->label:I

    const/high16 v0, -0x80000000

    and-int v1, p3, v0

    if-eqz v1, :cond_0

    sub-int/2addr p3, v0

    iput p3, p1, Lcoil/fetch/HttpFetcher$fetch$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcoil/fetch/HttpFetcher$fetch$1;

    invoke-direct {p1, p0, p5}, Lcoil/fetch/HttpFetcher$fetch$1;-><init>(Lcoil/fetch/HttpFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p1, Lcoil/fetch/HttpFetcher$fetch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p5

    .line 49
    iget v0, p1, Lcoil/fetch/HttpFetcher$fetch$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-object p0, p1, Lcoil/fetch/HttpFetcher$fetch$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lokhttp3/Call;

    iget-object p0, p1, Lcoil/fetch/HttpFetcher$fetch$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lokhttp3/HttpUrl;

    iget-object p1, p1, Lcoil/fetch/HttpFetcher$fetch$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcoil/fetch/HttpFetcher;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, p1

    goto/16 :goto_2

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p2}, Lcoil/fetch/HttpFetcher;->toHttpUrl(Ljava/lang/Object;)Lokhttp3/HttpUrl;

    move-result-object p2

    .line 56
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p3

    invoke-virtual {p4}, Lcoil/decode/Options;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 58
    invoke-virtual {p4}, Lcoil/decode/Options;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v0

    .line 59
    invoke-virtual {p4}, Lcoil/decode/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v2

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 62
    sget-object p4, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {p3, p4}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 64
    invoke-virtual {p4}, Lcoil/decode/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p4

    invoke-virtual {p4}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 65
    sget-object p4, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {p3, p4}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 67
    :cond_4
    sget-object p4, Lcoil/fetch/HttpFetcher;->CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {p3, p4}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .line 71
    sget-object p4, Lcoil/fetch/HttpFetcher;->CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {p3, p4}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 75
    :cond_6
    :goto_1
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    sget-object v2, Lkotlinx/coroutines/CoroutineDispatcher;->Key:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    invoke-interface {p4, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p4

    instance-of p4, p4, Lkotlinx/coroutines/MainCoroutineDispatcher;

    if-eqz p4, :cond_8

    if-nez v0, :cond_7

    .line 81
    iget-object p1, p0, Lcoil/fetch/HttpFetcher;->callFactory:Lokhttp3/Call$Factory;

    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p3

    invoke-interface {p1, p3}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    goto :goto_3

    .line 78
    :cond_7
    new-instance p0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw p0

    .line 85
    :cond_8
    iget-object p4, p0, Lcoil/fetch/HttpFetcher;->callFactory:Lokhttp3/Call$Factory;

    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p3

    invoke-interface {p4, p3}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p3

    const-string p4, "callFactory.newCall(request.build())"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p0, p1, Lcoil/fetch/HttpFetcher$fetch$1;->L$0:Ljava/lang/Object;

    iput-object p2, p1, Lcoil/fetch/HttpFetcher$fetch$1;->L$1:Ljava/lang/Object;

    iput-object p3, p1, Lcoil/fetch/HttpFetcher$fetch$1;->L$2:Ljava/lang/Object;

    iput v1, p1, Lcoil/fetch/HttpFetcher$fetch$1;->label:I

    .line 126
    new-instance p4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {p4, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 132
    invoke-virtual {p4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 17
    new-instance v0, Lcoil/util/ContinuationCallback;

    invoke-direct {v0, p3, p4}, Lcoil/util/ContinuationCallback;-><init>(Lokhttp3/Call;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 18
    invoke-interface {p3, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 19
    invoke-interface {p4, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 138
    invoke-virtual {p4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p3

    .line 125
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p4

    if-ne p3, p4, :cond_9

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_9
    if-ne p3, p5, :cond_a

    return-object p5

    .line 16
    :cond_a
    :goto_2
    move-object p1, p3

    check-cast p1, Lokhttp3/Response;

    .line 88
    :goto_3
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p3

    if-nez p3, :cond_c

    .line 89
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    .line 90
    :goto_4
    new-instance p0, Lcoil/network/HttpException;

    const-string p2, "response"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcoil/network/HttpException;-><init>(Lokhttp3/Response;)V

    throw p0

    .line 92
    :cond_c
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 94
    new-instance p4, Lcoil/fetch/SourceResult;

    .line 95
    invoke-virtual {p3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p5

    const-string v0, "body.source()"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p2, p3}, Lcoil/fetch/HttpFetcher;->getMimeType$coil_base_release(Lokhttp3/HttpUrl;Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-virtual {p1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_d

    sget-object p1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    goto :goto_5

    :cond_d
    sget-object p1, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 94
    :goto_5
    invoke-direct {p4, p5, p0, p1}, Lcoil/fetch/SourceResult;-><init>(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object p4

    .line 92
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Null response body!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcoil/fetch/HttpFetcher;->fetch$suspendImpl(Lcoil/fetch/HttpFetcher;Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeType$coil_base_release(Lokhttp3/HttpUrl;Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    if-eqz p2, :cond_1

    .line 110
    const-string v2, "text/plain"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const-string v3, "getSingleton()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcoil/util/-Extensions;->getMimeTypeFromUrl(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    return-object v0

    :cond_3
    const/16 p1, 0x3b

    .line 113
    invoke-static {p2, p1, v0, v1, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcoil/fetch/Fetcher$DefaultImpls;->handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract toHttpUrl(Ljava/lang/Object;)Lokhttp3/HttpUrl;
.end method
