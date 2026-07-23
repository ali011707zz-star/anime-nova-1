.class public final Lcoil/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "ImageRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowConversionToBitmap:Z

.field private allowHardware:Ljava/lang/Boolean;

.field private allowRgb565:Ljava/lang/Boolean;

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private colorSpace:Landroid/graphics/ColorSpace;

.field private final context:Landroid/content/Context;

.field private data:Ljava/lang/Object;

.field private decoder:Lcoil/decode/Decoder;

.field private defaults:Lcoil/request/DefaultRequestOptions;

.field private diskCachePolicy:Lcoil/request/CachePolicy;

.field private dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:Ljava/lang/Integer;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResId:Ljava/lang/Integer;

.field private fetcher:Lkotlin/Pair;

.field private headers:Lokhttp3/Headers$Builder;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private listener:Lcoil/request/ImageRequest$Listener;

.field private memoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private memoryCachePolicy:Lcoil/request/CachePolicy;

.field private networkCachePolicy:Lcoil/request/CachePolicy;

.field private parameters:Lcoil/request/Parameters$Builder;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private placeholderResId:Ljava/lang/Integer;

.field private precision:Lcoil/size/Precision;

.field private premultipliedAlpha:Z

.field private resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

.field private resolvedScale:Lcoil/size/Scale;

.field private resolvedSizeResolver:Lcoil/size/SizeResolver;

.field private scale:Lcoil/size/Scale;

.field private sizeResolver:Lcoil/size/SizeResolver;

.field private target:Lcoil/target/Target;

.field private transformations:Ljava/util/List;

.field private transition:Lcoil/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 331
    sget-object p1, Lcoil/request/DefaultRequestOptions;->INSTANCE:Lcoil/request/DefaultRequestOptions;

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 333
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 334
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 335
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 336
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 338
    :cond_0
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    .line 339
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    .line 340
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 341
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 342
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 343
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 344
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 345
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    .line 346
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 347
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    .line 348
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    .line 349
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 350
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    .line 351
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 353
    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    .line 354
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 355
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 356
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 357
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    .line 358
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 359
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    .line 360
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 361
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    .line 362
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 363
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 364
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 365
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method public constructor <init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 371
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefaults()Lcoil/request/DefaultRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 372
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 373
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 374
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 375
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 376
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getFetcher()Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    .line 379
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDecoder()Lcoil/decode/Decoder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    .line 380
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 381
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 382
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Parameters;->newBuilder()Lcoil/request/Parameters$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 383
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 384
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 385
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getScale()Lcoil/size/Scale;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    .line 386
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 387
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    .line 388
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getPrecision()Lcoil/size/Precision;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    .line 389
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 390
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getAllowHardware()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    .line 391
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getAllowRgb565()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    .line 392
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 393
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    .line 394
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 395
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 396
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 397
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getPlaceholderResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    .line 398
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getPlaceholderDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 399
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getErrorResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    .line 400
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getErrorDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 401
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getFallbackResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    .line 402
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getFallbackDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 406
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 407
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 408
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 410
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 411
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 412
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resetResolvedScale()V
    .locals 1

    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resetResolvedValues()V
    .locals 1

    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 874
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 875
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resolveLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 884
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 885
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 886
    :goto_0
    invoke-static {v0}, Lcoil/util/-Contexts;->getLifecycle(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcoil/request/GlobalLifecycle;->INSTANCE:Lcoil/request/GlobalLifecycle;

    :cond_1
    return-object v0
.end method

.method private final resolveScale()Lcoil/size/Scale;
    .locals 2

    .line 904
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 905
    instance-of v1, v0, Lcoil/size/ViewSizeResolver;

    if-eqz v1, :cond_0

    .line 906
    check-cast v0, Lcoil/size/ViewSizeResolver;

    invoke-interface {v0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    .line 907
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcoil/util/-Extensions;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object v0

    return-object v0

    .line 910
    :cond_0
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 911
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_1

    .line 912
    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    .line 913
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcoil/util/-Extensions;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object v0

    return-object v0

    .line 916
    :cond_1
    sget-object v0, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    return-object v0
.end method

.method private final resolveSizeResolver()Lcoil/size/SizeResolver;
    .locals 5

    .line 890
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 891
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_2

    .line 892
    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    .line 893
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_1

    .line 894
    :cond_0
    sget-object v0, Lcoil/size/SizeResolver;->Companion:Lcoil/size/SizeResolver$Companion;

    sget-object v1, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    invoke-virtual {v0, v1}, Lcoil/size/SizeResolver$Companion;->create(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    move-result-object v0

    return-object v0

    .line 896
    :cond_1
    sget-object v1, Lcoil/size/ViewSizeResolver;->Companion:Lcoil/size/ViewSizeResolver$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lcoil/size/ViewSizeResolver$Companion;->create$default(Lcoil/size/ViewSizeResolver$Companion;Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;

    move-result-object v0

    return-object v0

    .line 899
    :cond_2
    new-instance v0, Lcoil/size/DisplaySizeResolver;

    iget-object v1, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcoil/size/DisplaySizeResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final allowHardware(Z)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 592
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final build()Lcoil/request/ImageRequest;
    .locals 42

    move-object/from16 v0, p0

    .line 833
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 834
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    :cond_0
    move-object v3, v1

    .line 835
    iget-object v4, v0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 836
    iget-object v5, v0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 837
    iget-object v6, v0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 838
    iget-object v7, v0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 839
    iget-object v8, v0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 840
    iget-object v9, v0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    .line 841
    iget-object v10, v0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    .line 842
    iget-object v11, v0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 843
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    const/4 v12, 0x0

    if-nez v1, :cond_1

    move-object v1, v12

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcoil/util/-Extensions;->orEmpty(Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v1

    .line 844
    iget-object v13, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-nez v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v13}, Lcoil/request/Parameters$Builder;->build()Lcoil/request/Parameters;

    move-result-object v12

    :goto_1
    invoke-static {v12}, Lcoil/util/-Extensions;->orEmpty(Lcoil/request/Parameters;)Lcoil/request/Parameters;

    move-result-object v13

    .line 845
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-nez v12, :cond_3

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    if-nez v12, :cond_3

    invoke-direct {v0}, Lcoil/request/ImageRequest$Builder;->resolveLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v12

    :cond_3
    move-object v14, v12

    .line 846
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    if-nez v12, :cond_4

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    if-nez v12, :cond_4

    invoke-direct {v0}, Lcoil/request/ImageRequest$Builder;->resolveSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v12

    :cond_4
    move-object v15, v12

    .line 847
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    if-nez v12, :cond_5

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    if-nez v12, :cond_5

    invoke-direct {v0}, Lcoil/request/ImageRequest$Builder;->resolveScale()Lcoil/size/Scale;

    move-result-object v12

    :cond_5
    move-object/from16 v16, v12

    .line 848
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v12, :cond_6

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v12}, Lcoil/request/DefaultRequestOptions;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v12

    :cond_6
    move-object/from16 v17, v12

    .line 849
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    if-nez v12, :cond_7

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v12}, Lcoil/request/DefaultRequestOptions;->getTransition()Lcoil/transition/Transition;

    move-result-object v12

    :cond_7
    move-object/from16 v18, v12

    .line 850
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    if-nez v12, :cond_8

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v12}, Lcoil/request/DefaultRequestOptions;->getPrecision()Lcoil/size/Precision;

    move-result-object v12

    :cond_8
    move-object/from16 v19, v12

    .line 851
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-nez v12, :cond_9

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v12}, Lcoil/request/DefaultRequestOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    :cond_9
    move-object/from16 v20, v12

    .line 852
    iget-boolean v12, v0, Lcoil/request/ImageRequest$Builder;->allowConversionToBitmap:Z

    move-object/from16 v21, v2

    .line 853
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getAllowHardware()Z

    move-result v2

    :goto_2
    move/from16 v22, v2

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    .line 854
    :goto_3
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getAllowRgb565()Z

    move-result v2

    :goto_4
    move/from16 v23, v2

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    .line 855
    :goto_5
    iget-boolean v2, v0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    move/from16 v24, v2

    .line 856
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-nez v2, :cond_c

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v2

    :cond_c
    move-object/from16 v25, v2

    .line 857
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-nez v2, :cond_d

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v2

    :cond_d
    move-object/from16 v26, v2

    .line 858
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-nez v2, :cond_e

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v2

    :cond_e
    move-object/from16 v27, v2

    .line 859
    new-instance v34, Lcoil/request/DefinedRequestOptions;

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    move-object/from16 v31, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v32, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    move-object/from16 v33, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    move-object/from16 v28, v2

    .line 860
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v35, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    move-object/from16 v36, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v38, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v40, v34

    move-object/from16 v34, v28

    move-object/from16 v28, v40

    move-object/from16 v40, v2

    .line 859
    invoke-direct/range {v28 .. v40}, Lcoil/request/DefinedRequestOptions;-><init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    move-object/from16 v34, v28

    .line 861
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    move-object/from16 v35, v2

    .line 862
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    move-object/from16 v28, v2

    .line 863
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v2

    .line 864
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    move-object/from16 v30, v2

    .line 865
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v2

    .line 866
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    move-object/from16 v32, v2

    .line 867
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 832
    new-instance v33, Lcoil/request/ImageRequest;

    .line 843
    const-string v0, "orEmpty()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v36, 0x0

    move/from16 v41, v12

    move-object v12, v1

    move-object/from16 v1, v33

    move-object/from16 v33, v2

    move-object/from16 v2, v21

    move/from16 v21, v41

    .line 832
    invoke-direct/range {v1 .. v36}, Lcoil/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Key;Landroid/graphics/ColorSpace;Lkotlin/Pair;Lcoil/decode/Decoder;Ljava/util/List;Lokhttp3/Headers;Lcoil/request/Parameters;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 429
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final defaults(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "defaults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 825
    invoke-direct {p0}, Lcoil/request/ImageRequest$Builder;->resetResolvedScale()V

    return-object p0
.end method

.method public final error(I)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 730
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 779
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 780
    invoke-direct {p0}, Lcoil/request/ImageRequest$Builder;->resetResolvedValues()V

    return-object p0
.end method
