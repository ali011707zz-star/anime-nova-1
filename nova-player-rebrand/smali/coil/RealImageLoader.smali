.class public final Lcoil/RealImageLoader;
.super Ljava/lang/Object;
.source "RealImageLoader.kt"

# interfaces
.implements Lcoil/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/RealImageLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/RealImageLoader$Companion;


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final componentRegistry:Lcoil/ComponentRegistry;

.field private final context:Landroid/content/Context;

.field private final defaults:Lcoil/request/DefaultRequestOptions;

.field private final delegateService:Lcoil/memory/DelegateService;

.field private final drawableDecoder:Lcoil/decode/DrawableDecoderService;

.field private final eventListenerFactory:Lcoil/EventListener$Factory;

.field private final interceptors:Ljava/util/List;

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final memoryCache:Lcoil/memory/RealMemoryCache;

.field private final memoryCacheService:Lcoil/memory/MemoryCacheService;

.field private final options:Lcoil/util/ImageLoaderOptions;

.field private final registry:Lcoil/ComponentRegistry;

.field private final requestService:Lcoil/memory/RequestService;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final systemCallbacks:Lcoil/util/SystemCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/RealImageLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/RealImageLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/RealImageLoader;->Companion:Lcoil/RealImageLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lcoil/bitmap/BitmapPool;Lcoil/memory/RealMemoryCache;Lokhttp3/Call$Factory;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V
    .locals 13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const-string v7, "context"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "defaults"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "bitmapPool"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "memoryCache"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "callFactory"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "eventListenerFactory"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "componentRegistry"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "options"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcoil/RealImageLoader;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcoil/RealImageLoader;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 70
    iput-object v1, p0, Lcoil/RealImageLoader;->bitmapPool:Lcoil/bitmap/BitmapPool;

    .line 71
    iput-object v2, p0, Lcoil/RealImageLoader;->memoryCache:Lcoil/memory/RealMemoryCache;

    .line 72
    iput-object v3, p0, Lcoil/RealImageLoader;->callFactory:Lokhttp3/Call$Factory;

    .line 73
    iput-object v4, p0, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    .line 74
    iput-object v5, p0, Lcoil/RealImageLoader;->componentRegistry:Lcoil/ComponentRegistry;

    .line 75
    iput-object v6, p0, Lcoil/RealImageLoader;->options:Lcoil/util/ImageLoaderOptions;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 281
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v4, Lcoil/RealImageLoader$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v4, v2, p0}, Lcoil/RealImageLoader$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcoil/RealImageLoader;)V

    .line 79
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 81
    new-instance v0, Lcoil/memory/DelegateService;

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcoil/memory/DelegateService;-><init>(Lcoil/ImageLoader;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/util/Logger;)V

    iput-object v0, p0, Lcoil/RealImageLoader;->delegateService:Lcoil/memory/DelegateService;

    .line 82
    new-instance v8, Lcoil/memory/MemoryCacheService;

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/memory/RealMemoryCache;->getStrongMemoryCache()Lcoil/memory/StrongMemoryCache;

    move-result-object v2

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/memory/RealMemoryCache;->getWeakMemoryCache()Lcoil/memory/WeakMemoryCache;

    move-result-object v4

    .line 82
    invoke-direct {v8, v0, v2, v4}, Lcoil/memory/MemoryCacheService;-><init>(Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;)V

    iput-object v8, p0, Lcoil/RealImageLoader;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    .line 84
    new-instance v9, Lcoil/memory/RequestService;

    invoke-direct {v9, v1}, Lcoil/memory/RequestService;-><init>(Lcoil/util/Logger;)V

    iput-object v9, p0, Lcoil/RealImageLoader;->requestService:Lcoil/memory/RequestService;

    .line 85
    new-instance v11, Lcoil/decode/DrawableDecoderService;

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object v0

    invoke-direct {v11, v0}, Lcoil/decode/DrawableDecoderService;-><init>(Lcoil/bitmap/BitmapPool;)V

    iput-object v11, p0, Lcoil/RealImageLoader;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    .line 86
    new-instance v10, Lcoil/util/SystemCallbacks;

    invoke-virtual {v6}, Lcoil/util/ImageLoaderOptions;->getNetworkObserverEnabled()Z

    move-result v0

    invoke-direct {v10, p0, p1, v0}, Lcoil/util/SystemCallbacks;-><init>(Lcoil/RealImageLoader;Landroid/content/Context;Z)V

    iput-object v10, p0, Lcoil/RealImageLoader;->systemCallbacks:Lcoil/util/SystemCallbacks;

    .line 87
    invoke-virtual {v5}, Lcoil/ComponentRegistry;->newBuilder()Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 89
    new-instance v1, Lcoil/map/StringMapper;

    invoke-direct {v1}, Lcoil/map/StringMapper;-><init>()V

    .line 55
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 90
    new-instance v1, Lcoil/map/FileUriMapper;

    invoke-direct {v1}, Lcoil/map/FileUriMapper;-><init>()V

    .line 55
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 91
    new-instance v1, Lcoil/map/ResourceUriMapper;

    invoke-direct {v1, p1}, Lcoil/map/ResourceUriMapper;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 92
    new-instance v1, Lcoil/map/ResourceIntMapper;

    invoke-direct {v1, p1}, Lcoil/map/ResourceIntMapper;-><init>(Landroid/content/Context;)V

    .line 55
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 94
    new-instance v1, Lcoil/fetch/HttpUriFetcher;

    invoke-direct {v1, v3}, Lcoil/fetch/HttpUriFetcher;-><init>(Lokhttp3/Call$Factory;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 95
    new-instance v1, Lcoil/fetch/HttpUrlFetcher;

    invoke-direct {v1, v3}, Lcoil/fetch/HttpUrlFetcher;-><init>(Lokhttp3/Call$Factory;)V

    .line 63
    const-class v3, Lokhttp3/HttpUrl;

    invoke-virtual {v0, v1, v3}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 96
    new-instance v1, Lcoil/fetch/FileFetcher;

    invoke-virtual {v6}, Lcoil/util/ImageLoaderOptions;->getAddLastModifiedToFileCacheKey()Z

    move-result v3

    invoke-direct {v1, v3}, Lcoil/fetch/FileFetcher;-><init>(Z)V

    .line 63
    const-class v3, Ljava/io/File;

    invoke-virtual {v0, v1, v3}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 97
    new-instance v1, Lcoil/fetch/AssetUriFetcher;

    invoke-direct {v1, p1}, Lcoil/fetch/AssetUriFetcher;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 98
    new-instance v1, Lcoil/fetch/ContentUriFetcher;

    invoke-direct {v1, p1}, Lcoil/fetch/ContentUriFetcher;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 99
    new-instance v1, Lcoil/fetch/ResourceUriFetcher;

    invoke-direct {v1, p1, v11}, Lcoil/fetch/ResourceUriFetcher;-><init>(Landroid/content/Context;Lcoil/decode/DrawableDecoderService;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 100
    new-instance v1, Lcoil/fetch/DrawableFetcher;

    invoke-direct {v1, v11}, Lcoil/fetch/DrawableFetcher;-><init>(Lcoil/decode/DrawableDecoderService;)V

    .line 63
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 101
    new-instance v1, Lcoil/fetch/BitmapFetcher;

    invoke-direct {v1}, Lcoil/fetch/BitmapFetcher;-><init>()V

    .line 63
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object v0

    .line 103
    new-instance v1, Lcoil/decode/BitmapFactoryDecoder;

    invoke-direct {v1, p1}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/decode/Decoder;)Lcoil/ComponentRegistry$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object v4

    iput-object v4, p0, Lcoil/RealImageLoader;->registry:Lcoil/ComponentRegistry;

    .line 105
    invoke-virtual {v4}, Lcoil/ComponentRegistry;->getInterceptors$coil_base_release()Ljava/util/List;

    move-result-object p1

    new-instance v3, Lcoil/intercept/EngineInterceptor;

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object v5

    .line 106
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v6

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/RealMemoryCache;->getStrongMemoryCache()Lcoil/memory/StrongMemoryCache;

    move-result-object v7

    const/4 v12, 0x0

    .line 105
    invoke-direct/range {v3 .. v12}, Lcoil/intercept/EngineInterceptor;-><init>(Lcoil/ComponentRegistry;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/MemoryCacheService;Lcoil/memory/RequestService;Lcoil/util/SystemCallbacks;Lcoil/decode/DrawableDecoderService;Lcoil/util/Logger;)V

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcoil/RealImageLoader;->interceptors:Ljava/util/List;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcoil/RealImageLoader;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$executeMain(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcoil/RealImageLoader;->executeMain(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcoil/RealImageLoader;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method private final executeMain(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    instance-of v3, v2, Lcoil/RealImageLoader$executeMain$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcoil/RealImageLoader$executeMain$1;

    iget v4, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcoil/RealImageLoader$executeMain$1;

    invoke-direct {v3, v1, v2}, Lcoil/RealImageLoader$executeMain$1;-><init>(Lcoil/RealImageLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 139
    iget v5, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_0
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageRequest;

    iget-object v4, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcoil/request/ErrorResult;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v3, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcoil/EventListener;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1a

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    :pswitch_1
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageRequest;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ErrorResult;

    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lcoil/request/ImageResult;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcoil/memory/RequestDelegate;

    iget-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcoil/memory/TargetDelegate;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcoil/EventListener;

    iget-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcoil/request/ImageRequest;

    iget-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcoil/RealImageLoader;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    move-object v5, v8

    move-object v7, v10

    goto/16 :goto_18

    :pswitch_2
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageResult$Metadata;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageRequest;

    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lcoil/request/SuccessResult;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lcoil/RealImageLoader;

    iget-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lcoil/request/ImageResult;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lcoil/memory/RequestDelegate;

    iget-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lcoil/memory/TargetDelegate;

    iget-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcoil/EventListener;

    iget-object v13, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcoil/request/ImageRequest;

    iget-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcoil/RealImageLoader;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    move-object v9, v11

    move-object v2, v12

    move-object v11, v13

    move-object v12, v14

    goto/16 :goto_13

    :pswitch_3
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcoil/memory/TargetDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcoil/EventListener;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcoil/request/ImageRequest;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcoil/RealImageLoader;

    :goto_1
    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    goto/16 :goto_18

    :pswitch_4
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcoil/memory/TargetDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcoil/EventListener;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcoil/request/ImageRequest;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcoil/RealImageLoader;

    goto :goto_1

    :pswitch_5
    iget v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lcoil/memory/RequestDelegate;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Lcoil/memory/TargetDelegate;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lcoil/EventListener;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, Lcoil/request/ImageRequest;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Lcoil/RealImageLoader;

    :try_start_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v20, v5

    move-object v5, v7

    :goto_2
    move v15, v0

    move-object v14, v11

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object v5, v7

    :goto_3
    move-object v7, v8

    goto/16 :goto_18

    :pswitch_6
    iget v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, Lcoil/memory/TargetDelegate;

    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcoil/EventListener;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v11, v8

    check-cast v11, Lcoil/request/ImageRequest;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v12, v8

    check-cast v12, Lcoil/RealImageLoader;

    :try_start_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_4

    :pswitch_7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iget-object v2, v1, Lcoil/RealImageLoader;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    move-object/from16 v5, p1

    .line 144
    invoke-static {v5, v6, v2, v6}, Lcoil/request/ImageRequest;->newBuilder$default(Lcoil/request/ImageRequest;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v5

    invoke-virtual {v1}, Lcoil/RealImageLoader;->getDefaults()Lcoil/request/DefaultRequestOptions;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcoil/request/ImageRequest$Builder;->defaults(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v11

    .line 147
    invoke-virtual {v1}, Lcoil/RealImageLoader;->getEventListenerFactory()Lcoil/EventListener$Factory;

    move-result-object v5

    invoke-interface {v5, v11}, Lcoil/EventListener$Factory;->create(Lcoil/request/ImageRequest;)Lcoil/EventListener;

    move-result-object v7

    .line 150
    iget-object v5, v1, Lcoil/RealImageLoader;->delegateService:Lcoil/memory/DelegateService;

    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v7}, Lcoil/memory/DelegateService;->createTargetDelegate(Lcoil/target/Target;ILcoil/EventListener;)Lcoil/memory/TargetDelegate;

    move-result-object v9

    .line 153
    iget-object v5, v1, Lcoil/RealImageLoader;->delegateService:Lcoil/memory/DelegateService;

    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    .line 156
    sget-object v10, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v8, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lkotlinx/coroutines/Job;

    .line 153
    invoke-virtual {v5, v11, v9, v8}, Lcoil/memory/DelegateService;->createRequestDelegate(Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)Lcoil/memory/RequestDelegate;

    move-result-object v5

    .line 157
    :try_start_6
    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    if-nez v0, :cond_2

    .line 160
    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v8

    .line 19
    invoke-virtual {v8}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v10

    sget-object v12, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v10, v12}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_5

    .line 22
    :cond_1
    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-static {v8, v3}, Lcoil/util/-Lifecycles;->observeStarted(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v2, v4, :cond_2

    goto/16 :goto_19

    :goto_4
    move-object v8, v7

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v12, v1

    goto/16 :goto_18

    :cond_2
    :goto_5
    move-object v12, v1

    goto :goto_4

    .line 163
    :goto_6
    :try_start_7
    iget-object v2, v12, Lcoil/RealImageLoader;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcoil/memory/MemoryCacheService;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v6

    goto :goto_7

    :cond_3
    invoke-interface {v2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 165
    :goto_7
    :try_start_8
    invoke-static {v9, v6}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    if-nez v2, :cond_4

    move-object v10, v6

    goto :goto_8

    .line 166
    :cond_4
    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v10, "context.resources"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_8
    if-nez v10, :cond_5

    .line 166
    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_9

    :catchall_6
    move-exception v0

    goto/16 :goto_17

    :cond_5
    :goto_9
    invoke-virtual {v9, v10, v2}, Lcoil/memory/TargetDelegate;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 167
    invoke-interface {v8, v11}, Lcoil/EventListener;->onStart(Lcoil/request/ImageRequest;)V

    .line 168
    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_a

    :cond_6
    invoke-interface {v7, v11}, Lcoil/request/ImageRequest$Listener;->onStart(Lcoil/request/ImageRequest;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 170
    :goto_a
    :try_start_9
    invoke-virtual {v12}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v7

    invoke-virtual {v7}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v7

    if-eqz v2, :cond_7

    .line 191
    invoke-interface {v7, v2}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    goto :goto_b

    :catchall_7
    move-exception v0

    goto/16 :goto_3

    .line 174
    :cond_7
    :goto_b
    invoke-interface {v8, v11}, Lcoil/EventListener;->resolveSizeStart(Lcoil/request/ImageRequest;)V

    .line 175
    invoke-virtual {v11}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v7

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    const/4 v10, 0x2

    iput v10, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-interface {v7, v3}, Lcoil/size/SizeResolver;->size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v7, v4, :cond_8

    goto/16 :goto_19

    :cond_8
    move-object/from16 v20, v2

    move-object v2, v7

    goto/16 :goto_2

    .line 139
    :goto_c
    :try_start_a
    check-cast v2, Lcoil/size/Size;

    .line 176
    invoke-interface {v8, v14, v2}, Lcoil/EventListener;->resolveSizeEnd(Lcoil/request/ImageRequest;Lcoil/size/Size;)V

    .line 228
    new-instance v13, Lcoil/intercept/RealInterceptorChain;

    invoke-static {v12}, Lcoil/RealImageLoader;->access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;

    move-result-object v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    const/16 v17, 0x0

    move-object/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v21, v8

    :try_start_b
    invoke-direct/range {v13 .. v21}, Lcoil/intercept/RealInterceptorChain;-><init>(Lcoil/request/ImageRequest;ILjava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    move-object/from16 v7, v21

    .line 229
    :try_start_c
    invoke-virtual {v12}, Lcoil/RealImageLoader;->getOptions()Lcoil/util/ImageLoaderOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/util/ImageLoaderOptions;->getLaunchInterceptorChainOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 230
    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v13, v14, v3}, Lcoil/intercept/RealInterceptorChain;->proceed(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    goto/16 :goto_19

    :cond_9
    move-object v11, v14

    :goto_d
    move-object v8, v5

    move-object v10, v7

    goto :goto_f

    :catchall_8
    move-exception v0

    :goto_e
    move-object v11, v14

    goto/16 :goto_18

    .line 232
    :cond_a
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v2, Lcoil/RealImageLoader$executeChain$2;

    invoke-direct {v2, v13, v14, v6}, Lcoil/RealImageLoader$executeChain$2;-><init>(Lcoil/intercept/RealInterceptorChain;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ne v2, v4, :cond_9

    goto/16 :goto_19

    .line 179
    :goto_f
    :try_start_d
    move-object v7, v2

    check-cast v7, Lcoil/request/ImageResult;

    .line 183
    instance-of v0, v7, Lcoil/request/SuccessResult;

    if-eqz v0, :cond_11

    move-object v2, v7

    check-cast v2, Lcoil/request/SuccessResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 244
    :try_start_e
    invoke-virtual {v2}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v5

    .line 245
    invoke-virtual {v2}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcoil/request/ImageResult$Metadata;->getDataSource()Lcoil/decode/DataSource;

    .line 247
    invoke-virtual {v12}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    .line 248
    invoke-static {v9, v0}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 249
    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$8:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$9:Ljava/lang/Object;

    const/4 v13, 0x5

    iput v13, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v9, v2, v3}, Lcoil/memory/TargetDelegate;->success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    if-ne v13, v4, :cond_b

    goto/16 :goto_19

    :cond_b
    move-object v13, v11

    move-object v14, v12

    move-object v11, v9

    move-object v12, v10

    move-object v9, v7

    move-object v10, v8

    move-object v8, v14

    move-object v7, v2

    .line 250
    :goto_10
    :try_start_f
    invoke-interface {v12, v5, v0}, Lcoil/EventListener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    .line 251
    invoke-virtual {v5}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_11

    :cond_c
    invoke-interface {v2, v5, v0}, Lcoil/request/ImageRequest$Listener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 253
    :goto_11
    :try_start_10
    invoke-virtual {v8}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v0

    invoke-virtual {v7}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 195
    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_e

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_12

    :cond_d
    invoke-interface {v0, v2}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v5, v10

    move-object v9, v11

    move-object v7, v12

    move-object v11, v13

    move-object v12, v14

    goto/16 :goto_18

    :cond_e
    :goto_12
    move-object v7, v9

    move-object v8, v10

    goto/16 :goto_16

    :catchall_a
    move-exception v0

    move-object v7, v2

    move-object v2, v10

    move-object v10, v8

    move-object v8, v12

    .line 253
    :goto_13
    :try_start_11
    invoke-virtual {v8}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v5

    invoke-virtual {v5}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v5

    invoke-virtual {v7}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 195
    instance-of v8, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_10

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_f

    goto :goto_14

    :cond_f
    invoke-interface {v5, v7}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_14

    :catchall_b
    move-exception v0

    move-object v7, v2

    move-object v5, v10

    goto :goto_18

    .line 196
    :cond_10
    :goto_14
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 184
    :cond_11
    :try_start_12
    instance-of v0, v7, Lcoil/request/ErrorResult;

    if-eqz v0, :cond_14

    move-object v5, v7

    check-cast v5, Lcoil/request/ErrorResult;

    .line 262
    invoke-virtual {v5}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    .line 263
    invoke-virtual {v12}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    .line 264
    invoke-static {v9, v6}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 265
    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v9, v5, v3}, Lcoil/memory/TargetDelegate;->error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    goto :goto_19

    .line 266
    :cond_12
    :goto_15
    invoke-virtual {v5}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v10, v0, v2}, Lcoil/EventListener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 267
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v5}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Lcoil/request/ImageRequest$Listener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 198
    :cond_14
    :goto_16
    invoke-virtual {v8}, Lcoil/memory/RequestDelegate;->complete()V

    return-object v7

    :catchall_c
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_e

    :catchall_d
    move-exception v0

    move-object v7, v8

    goto/16 :goto_e

    .line 170
    :goto_17
    :try_start_13
    invoke-virtual {v12}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v7

    invoke-virtual {v7}, Lcoil/memory/RealMemoryCache;->getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v7

    if-eqz v2, :cond_15

    .line 191
    invoke-interface {v7, v2}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 192
    :cond_15
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 157
    :cond_16
    :try_start_14
    new-instance v0, Lcoil/request/NullRequestDataException;

    invoke-direct {v0}, Lcoil/request/NullRequestDataException;-><init>()V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 188
    :goto_18
    :try_start_15
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19

    .line 193
    iget-object v2, v12, Lcoil/RealImageLoader;->requestService:Lcoil/memory/RequestService;

    invoke-virtual {v2, v11, v0}, Lcoil/memory/RequestService;->errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v2

    .line 263
    invoke-virtual {v12}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    .line 264
    invoke-static {v9, v6}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 265
    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$8:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/RealImageLoader$executeMain$1;->L$9:Ljava/lang/Object;

    const/4 v6, 0x7

    iput v6, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v9, v0, v3}, Lcoil/memory/TargetDelegate;->error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_17

    :goto_19
    return-object v4

    :cond_17
    move-object v4, v0

    move-object v0, v2

    move-object v3, v7

    .line 266
    :goto_1a
    invoke-virtual {v4}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcoil/EventListener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 267
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v4}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcoil/request/ImageRequest$Listener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 198
    :goto_1b
    invoke-virtual {v5}, Lcoil/memory/RequestDelegate;->complete()V

    return-object v4

    .line 189
    :cond_19
    :try_start_16
    invoke-direct {v12, v11, v7}, Lcoil/RealImageLoader;->onCancel(Lcoil/request/ImageRequest;Lcoil/EventListener;)V

    .line 190
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 198
    :goto_1c
    invoke-virtual {v5}, Lcoil/memory/RequestDelegate;->complete()V

    throw v0

    .line 141
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The image loader is shutdown."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final onCancel(Lcoil/request/ImageRequest;Lcoil/EventListener;)V
    .locals 0

    .line 272
    invoke-interface {p2, p1}, Lcoil/EventListener;->onCancel(Lcoil/request/ImageRequest;)V

    .line 273
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p1}, Lcoil/request/ImageRequest$Listener;->onCancel(Lcoil/request/ImageRequest;)V

    return-void
.end method


# virtual methods
.method public enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcoil/RealImageLoader$enqueue$job$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcoil/RealImageLoader$enqueue$job$1;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    instance-of v1, v1, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    check-cast v1, Lcoil/target/ViewTarget;

    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequestJob(Lkotlinx/coroutines/Job;)Ljava/util/UUID;

    move-result-object v0

    .line 120
    new-instance v1, Lcoil/request/ViewTargetDisposable;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object p1

    check-cast p1, Lcoil/target/ViewTarget;

    invoke-direct {v1, v0, p1}, Lcoil/request/ViewTargetDisposable;-><init>(Ljava/util/UUID;Lcoil/target/ViewTarget;)V

    return-object v1

    .line 122
    :cond_0
    new-instance p1, Lcoil/request/BaseTargetDisposable;

    invoke-direct {p1, v0}, Lcoil/request/BaseTargetDisposable;-><init>(Lkotlinx/coroutines/Job;)V

    return-object p1
.end method

.method public execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 128
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    instance-of v0, v0, Lcoil/target/ViewTarget;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v0

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 156
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/Job;

    .line 129
    invoke-virtual {v0, v1}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequestJob(Lkotlinx/coroutines/Job;)Ljava/util/UUID;

    .line 133
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcoil/RealImageLoader$execute$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcoil/RealImageLoader$execute$2;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapPool()Lcoil/bitmap/BitmapPool;
    .locals 1

    .line 70
    iget-object v0, p0, Lcoil/RealImageLoader;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-object v0
.end method

.method public getDefaults()Lcoil/request/DefaultRequestOptions;
    .locals 1

    .line 69
    iget-object v0, p0, Lcoil/RealImageLoader;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final getEventListenerFactory()Lcoil/EventListener$Factory;
    .locals 1

    .line 73
    iget-object v0, p0, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    return-object v0
.end method

.method public final getLogger()Lcoil/util/Logger;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMemoryCache()Lcoil/memory/MemoryCache;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryCache()Lcoil/memory/RealMemoryCache;
    .locals 1

    .line 71
    iget-object v0, p0, Lcoil/RealImageLoader;->memoryCache:Lcoil/memory/RealMemoryCache;

    return-object v0
.end method

.method public final getOptions()Lcoil/util/ImageLoaderOptions;
    .locals 1

    .line 75
    iget-object v0, p0, Lcoil/RealImageLoader;->options:Lcoil/util/ImageLoaderOptions;

    return-object v0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/RealMemoryCache;->getStrongMemoryCache()Lcoil/memory/StrongMemoryCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcoil/memory/StrongMemoryCache;->trimMemory(I)V

    .line 205
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/RealMemoryCache;->getWeakMemoryCache()Lcoil/memory/WeakMemoryCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcoil/memory/WeakMemoryCache;->trimMemory(I)V

    .line 206
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lcoil/bitmap/BitmapPool;->trimMemory(I)V

    return-void
.end method
