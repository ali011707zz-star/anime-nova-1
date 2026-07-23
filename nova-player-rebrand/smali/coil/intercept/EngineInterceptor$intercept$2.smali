.class final Lcoil/intercept/EngineInterceptor$intercept$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EngineInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/EngineInterceptor;->intercept(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $chain:Lcoil/intercept/Interceptor$Chain;

.field final synthetic $eventListener:Lcoil/EventListener;

.field final synthetic $fetcher:Lcoil/fetch/Fetcher;

.field final synthetic $mappedData:Ljava/lang/Object;

.field final synthetic $memoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field final synthetic $request:Lcoil/request/ImageRequest;

.field final synthetic $size:Lcoil/size/Size;

.field final synthetic $value:Lcoil/memory/RealMemoryCache$Value;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcoil/intercept/EngineInterceptor;


# direct methods
.method constructor <init>(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/RealMemoryCache$Value;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/intercept/Interceptor$Chain;Lcoil/size/Size;Lcoil/EventListener;Lcoil/memory/MemoryCache$Key;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iput-object p2, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lcoil/request/ImageRequest;

    iput-object p3, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lcoil/memory/RealMemoryCache$Value;

    iput-object p4, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    iput-object p5, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$fetcher:Lcoil/fetch/Fetcher;

    iput-object p6, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    iput-object p7, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$size:Lcoil/size/Size;

    iput-object p8, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$eventListener:Lcoil/EventListener;

    iput-object p9, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 0
    new-instance v0, Lcoil/intercept/EngineInterceptor$intercept$2;

    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v2, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lcoil/request/ImageRequest;

    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lcoil/memory/RealMemoryCache$Value;

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$fetcher:Lcoil/fetch/Fetcher;

    iget-object v6, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    iget-object v7, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$size:Lcoil/size/Size;

    iget-object v8, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$eventListener:Lcoil/EventListener;

    iget-object v9, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcoil/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/RealMemoryCache$Value;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/intercept/Interceptor$Chain;Lcoil/size/Size;Lcoil/EventListener;Lcoil/memory/MemoryCache$Key;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$intercept$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcoil/intercept/EngineInterceptor$intercept$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcoil/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v5, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 103
    iget v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v11, :cond_3

    if-eq v0, v9, :cond_2

    if-ne v0, v8, :cond_1

    iget v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->I$1:I

    iget v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iget-object v2, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    check-cast v3, Lcoil/fetch/DrawableResult;

    iget-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lcoil/intercept/EngineInterceptor;

    iget-object v6, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lcoil/EventListener;

    iget-object v9, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lcoil/size/Size;

    iget-object v12, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lcoil/request/ImageRequest;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    check-cast v13, Landroid/graphics/Bitmap;

    .line 370
    invoke-interface {v5}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v14

    invoke-static {v14}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    if-le v1, v0, :cond_0

    :goto_0
    move-object/from16 v21, v3

    goto/16 :goto_9

    :cond_0
    move v7, v1

    goto/16 :goto_a

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    iget-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    check-cast v0, Lcoil/decode/Decoder;

    iget-object v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    check-cast v1, Lcoil/fetch/FetchResult;

    iget-object v2, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lcoil/decode/Options;

    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lcoil/EventListener;

    iget-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lcoil/size/Size;

    iget-object v6, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lcoil/request/ImageRequest;

    iget-object v9, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v1

    move-object/from16 v1, p1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iget-object v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    check-cast v1, Lcoil/decode/Options;

    iget-object v2, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lcoil/EventListener;

    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lcoil/size/Size;

    iget-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lcoil/request/ImageRequest;

    iget-object v12, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lcoil/fetch/Fetcher;

    iget-object v13, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lcoil/intercept/EngineInterceptor;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v2

    move-object v2, v12

    move-object v12, v13

    move-object v13, v4

    move-object v4, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    iget-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lcoil/request/ImageRequest;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcoil/intercept/EngineInterceptor;->access$invalidateData(Lcoil/intercept/EngineInterceptor;Ljava/lang/Object;)V

    .line 108
    iget-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lcoil/memory/RealMemoryCache$Value;

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    invoke-static {v0}, Lcoil/intercept/EngineInterceptor;->access$getReferenceCounter$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v0

    iget-object v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lcoil/memory/RealMemoryCache$Value;

    invoke-interface {v1}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 112
    :cond_5
    iget-object v12, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v2, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    iget-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$fetcher:Lcoil/fetch/Fetcher;

    iget-object v13, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lcoil/request/ImageRequest;

    iget-object v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    check-cast v1, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v1}, Lcoil/intercept/RealInterceptorChain;->getRequestType()I

    move-result v14

    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$size:Lcoil/size/Size;

    iget-object v15, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$eventListener:Lcoil/EventListener;

    .line 277
    invoke-static {v12}, Lcoil/intercept/EngineInterceptor;->access$getRequestService$p(Lcoil/intercept/EngineInterceptor;)Lcoil/memory/RequestService;

    move-result-object v1

    invoke-static {v12}, Lcoil/intercept/EngineInterceptor;->access$getSystemCallbacks$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/SystemCallbacks;

    move-result-object v4

    invoke-virtual {v4}, Lcoil/util/SystemCallbacks;->isOnline()Z

    move-result v4

    invoke-virtual {v1, v13, v3, v4}, Lcoil/memory/RequestService;->options(Lcoil/request/ImageRequest;Lcoil/size/Size;Z)Lcoil/decode/Options;

    move-result-object v4

    .line 279
    invoke-interface {v15, v13, v0, v4}, Lcoil/EventListener;->fetchStart(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;)V

    .line 280
    invoke-static {v12}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v1

    iput-object v12, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    iput-object v13, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    iput-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    iput-object v15, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    iput v14, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iput v11, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    invoke-interface/range {v0 .. v5}, Lcoil/fetch/Fetcher;->fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_6

    goto/16 :goto_3

    :cond_6
    move-object v2, v0

    move v0, v14

    .line 103
    :goto_1
    move-object v14, v1

    check-cast v14, Lcoil/fetch/FetchResult;

    .line 281
    invoke-interface {v15, v13, v2, v4, v14}, Lcoil/EventListener;->fetchEnd(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;Lcoil/fetch/FetchResult;)V

    .line 284
    instance-of v1, v14, Lcoil/fetch/SourceResult;

    if-eqz v1, :cond_a

    .line 287
    :try_start_1
    invoke-interface {v5}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    if-nez v0, :cond_7

    .line 291
    invoke-virtual {v13}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    if-nez v0, :cond_7

    .line 292
    invoke-virtual {v13}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    sget-object v0, Lcoil/decode/EmptyDecoder;->INSTANCE:Lcoil/decode/EmptyDecoder;

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v14

    goto/16 :goto_5

    .line 298
    :cond_7
    invoke-virtual {v13}, Lcoil/request/ImageRequest;->getDecoder()Lcoil/decode/Decoder;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v12}, Lcoil/intercept/EngineInterceptor;->access$getRegistry$p(Lcoil/intercept/EngineInterceptor;)Lcoil/ComponentRegistry;

    move-result-object v0

    invoke-virtual {v13}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v14

    check-cast v2, Lcoil/fetch/SourceResult;

    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v2

    move-object/from16 v16, v14

    check-cast v16, Lcoil/fetch/SourceResult;

    invoke-virtual/range {v16 .. v16}, Lcoil/fetch/SourceResult;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v2, v7}, Lcoil/util/-ComponentRegistries;->requireDecoder(Lcoil/ComponentRegistry;Ljava/lang/Object;Lokio/BufferedSource;Ljava/lang/String;)Lcoil/decode/Decoder;

    move-result-object v0

    .line 302
    :cond_8
    :goto_2
    invoke-interface {v15, v13, v0, v4}, Lcoil/EventListener;->decodeStart(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;)V

    .line 303
    invoke-static {v12}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v1

    move-object v2, v14

    check-cast v2, Lcoil/fetch/SourceResult;

    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v2

    iput-object v12, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    iput-object v13, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    iput-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    iput-object v15, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    iput-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    iput-object v14, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    iput v9, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    invoke-interface/range {v0 .. v5}, Lcoil/decode/Decoder;->decode(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_9

    :goto_3
    return-object v6

    :cond_9
    move-object v2, v4

    move-object v9, v12

    move-object v6, v13

    move-object v4, v3

    move-object v3, v15

    .line 103
    :goto_4
    check-cast v1, Lcoil/decode/DecodeResult;

    .line 304
    invoke-interface {v3, v6, v0, v2, v1}, Lcoil/EventListener;->decodeEnd(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;Lcoil/decode/DecodeResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    new-instance v0, Lcoil/fetch/DrawableResult;

    .line 315
    invoke-virtual {v1}, Lcoil/decode/DecodeResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 316
    invoke-virtual {v1}, Lcoil/decode/DecodeResult;->isSampled()Z

    move-result v1

    .line 317
    check-cast v14, Lcoil/fetch/SourceResult;

    invoke-virtual {v14}, Lcoil/fetch/SourceResult;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v12

    .line 314
    invoke-direct {v0, v7, v1, v12}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    move-object/from16 v20, v4

    move-object v12, v6

    move-object v4, v9

    move-object v6, v3

    move-object v3, v0

    goto :goto_6

    .line 309
    :goto_5
    check-cast v1, Lcoil/fetch/SourceResult;

    invoke-virtual {v1}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lcoil/util/-Extensions;->closeQuietly(Ljava/io/Closeable;)V

    .line 310
    throw v0

    .line 320
    :cond_a
    instance-of v0, v14, Lcoil/fetch/DrawableResult;

    if-eqz v0, :cond_15

    check-cast v14, Lcoil/fetch/DrawableResult;

    move-object/from16 v20, v3

    move-object v2, v4

    move-object v4, v12

    move-object v12, v13

    move-object v3, v14

    move-object v6, v15

    .line 324
    :goto_6
    invoke-interface {v5}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 341
    invoke-virtual {v12}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_b

    .line 345
    :cond_b
    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_d

    .line 346
    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    sget-object v7, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    const-string v9, "resultBitmap"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_7
    move-object v13, v1

    goto :goto_8

    .line 350
    :cond_c
    invoke-static {v4}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    .line 353
    invoke-static {v4}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v17

    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual {v2}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    invoke-virtual {v2}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v21

    invoke-virtual {v2}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v22

    invoke-virtual/range {v17 .. v22}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 356
    :cond_d
    invoke-virtual {v12}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 357
    invoke-static {v4}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    .line 360
    invoke-static {v4}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v17

    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual {v2}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    invoke-virtual {v2}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v21

    invoke-virtual {v2}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v22

    invoke-virtual/range {v17 .. v22}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 368
    :goto_8
    const-string v1, "input"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v12, v13}, Lcoil/EventListener;->transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_e

    goto/16 :goto_0

    .line 372
    :goto_9
    const-string v0, "output"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v12, v13}, Lcoil/EventListener;->transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 373
    invoke-virtual {v12}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v1

    .line 373
    invoke-static/range {v21 .. v26}, Lcoil/fetch/DrawableResult;->copy$default(Lcoil/fetch/DrawableResult;Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;ILjava/lang/Object;)Lcoil/fetch/DrawableResult;

    move-result-object v3

    goto :goto_b

    :cond_e
    move-object v2, v0

    move v0, v1

    move-object/from16 v9, v20

    const/4 v7, 0x0

    :goto_a
    add-int/lit8 v1, v7, 0x1

    .line 53
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 370
    invoke-static {v4}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    const-string v7, "bitmap"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    iput-object v9, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    iput-object v6, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    iput-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    iput-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    iput-object v2, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    iput-object v10, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    iput v1, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iput v0, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->I$1:I

    iput v8, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    throw v10

    .line 362
    :cond_f
    invoke-static {v4}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    .line 328
    :goto_b
    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_c

    :cond_10
    move-object v0, v10

    :goto_c
    if-nez v0, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 111
    :goto_d
    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->component1()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->component2()Z

    move-result v1

    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->component3()Lcoil/decode/DataSource;

    move-result-object v2

    .line 115
    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    invoke-static {v3, v0}, Lcoil/intercept/EngineInterceptor;->access$validateDrawable(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lcoil/request/ImageRequest;

    iget-object v6, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-static {v3, v4, v6, v0, v1}, Lcoil/intercept/EngineInterceptor;->access$writeToMemoryCache(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z

    move-result v3

    .line 123
    iget-object v4, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lcoil/request/ImageRequest;

    .line 125
    iget-object v6, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v10, v6

    .line 128
    :cond_13
    iget-object v3, v5, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    check-cast v3, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v3}, Lcoil/intercept/RealInterceptorChain;->getCached()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_14

    move v7, v11

    goto :goto_e

    :cond_14
    const/4 v7, 0x0

    .line 124
    :goto_e
    new-instance v3, Lcoil/request/ImageResult$Metadata;

    invoke-direct {v3, v10, v1, v2, v7}, Lcoil/request/ImageResult$Metadata;-><init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V

    .line 121
    new-instance v1, Lcoil/request/SuccessResult;

    invoke-direct {v1, v0, v4, v3}, Lcoil/request/SuccessResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    return-object v1

    .line 320
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
