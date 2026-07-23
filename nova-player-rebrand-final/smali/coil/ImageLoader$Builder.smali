.class public final Lcoil/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private availableMemoryPercentage:D

.field private bitmapPoolPercentage:D

.field private bitmapPoolingEnabled:Z

.field private callFactory:Lokhttp3/Call$Factory;

.field private componentRegistry:Lcoil/ComponentRegistry;

.field private defaults:Lcoil/request/DefaultRequestOptions;

.field private eventListenerFactory:Lcoil/EventListener$Factory;

.field private memoryCache:Lcoil/memory/RealMemoryCache;

.field private options:Lcoil/util/ImageLoaderOptions;

.field private trackWeakReferences:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    .line 128
    sget-object v0, Lcoil/request/DefaultRequestOptions;->INSTANCE:Lcoil/request/DefaultRequestOptions;

    iput-object v0, p0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcoil/ImageLoader$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 130
    iput-object v0, p0, Lcoil/ImageLoader$Builder;->eventListenerFactory:Lcoil/EventListener$Factory;

    .line 131
    iput-object v0, p0, Lcoil/ImageLoader$Builder;->componentRegistry:Lcoil/ComponentRegistry;

    .line 132
    new-instance v1, Lcoil/util/ImageLoaderOptions;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcoil/util/ImageLoaderOptions;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcoil/ImageLoader$Builder;->options:Lcoil/util/ImageLoaderOptions;

    .line 134
    iput-object v0, p0, Lcoil/ImageLoader$Builder;->memoryCache:Lcoil/memory/RealMemoryCache;

    .line 135
    sget-object v0, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {v0, p1}, Lcoil/util/Utils;->getDefaultAvailableMemoryPercentage(Landroid/content/Context;)D

    move-result-wide v1

    iput-wide v1, p0, Lcoil/ImageLoader$Builder;->availableMemoryPercentage:D

    .line 136
    invoke-virtual {v0}, Lcoil/util/Utils;->getDefaultBitmapPoolPercentage()D

    move-result-wide v0

    iput-wide v0, p0, Lcoil/ImageLoader$Builder;->bitmapPoolPercentage:D

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    .line 138
    iput-boolean p1, p0, Lcoil/ImageLoader$Builder;->trackWeakReferences:Z

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lcoil/ImageLoader$Builder;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private final buildDefaultCallFactory()Lokhttp3/Call$Factory;
    .locals 1

    .line 536
    new-instance v0, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;

    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;-><init>(Lcoil/ImageLoader$Builder;)V

    invoke-static {v0}, Lcoil/util/-Extensions;->lazyCallFactory(Lkotlin/jvm/functions/Function0;)Lokhttp3/Call$Factory;

    move-result-object v0

    return-object v0
.end method

.method private final buildDefaultMemoryCache()Lcoil/memory/RealMemoryCache;
    .locals 11

    .line 543
    sget-object v0, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    iget-object v1, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    iget-wide v2, p0, Lcoil/ImageLoader$Builder;->availableMemoryPercentage:D

    invoke-virtual {v0, v1, v2, v3}, Lcoil/util/Utils;->calculateAvailableMemorySize(Landroid/content/Context;D)J

    move-result-wide v0

    .line 544
    iget-boolean v2, p0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcoil/ImageLoader$Builder;->bitmapPoolPercentage:D

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v5, v2

    int-to-long v2, v5

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-nez v5, :cond_1

    .line 549
    new-instance v1, Lcoil/bitmap/EmptyBitmapPool;

    invoke-direct {v1}, Lcoil/bitmap/EmptyBitmapPool;-><init>()V

    goto :goto_1

    .line 551
    :cond_1
    new-instance v4, Lcoil/bitmap/RealBitmapPool;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcoil/bitmap/RealBitmapPool;-><init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v4

    .line 553
    :goto_1
    iget-boolean v2, p0, Lcoil/ImageLoader$Builder;->trackWeakReferences:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 554
    new-instance v2, Lcoil/memory/RealWeakMemoryCache;

    invoke-direct {v2, v3}, Lcoil/memory/RealWeakMemoryCache;-><init>(Lcoil/util/Logger;)V

    goto :goto_2

    .line 556
    :cond_2
    sget-object v2, Lcoil/memory/EmptyWeakMemoryCache;->INSTANCE:Lcoil/memory/EmptyWeakMemoryCache;

    .line 558
    :goto_2
    iget-boolean v4, p0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    if-eqz v4, :cond_3

    .line 559
    new-instance v4, Lcoil/bitmap/RealBitmapReferenceCounter;

    invoke-direct {v4, v2, v1, v3}, Lcoil/bitmap/RealBitmapReferenceCounter;-><init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapPool;Lcoil/util/Logger;)V

    goto :goto_3

    .line 561
    :cond_3
    sget-object v4, Lcoil/bitmap/EmptyBitmapReferenceCounter;->INSTANCE:Lcoil/bitmap/EmptyBitmapReferenceCounter;

    .line 563
    :goto_3
    sget-object v5, Lcoil/memory/StrongMemoryCache;->Companion:Lcoil/memory/StrongMemoryCache$Companion;

    invoke-virtual {v5, v2, v4, v0, v3}, Lcoil/memory/StrongMemoryCache$Companion;->invoke(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)Lcoil/memory/StrongMemoryCache;

    move-result-object v0

    .line 564
    new-instance v3, Lcoil/memory/RealMemoryCache;

    invoke-direct {v3, v0, v2, v4, v1}, Lcoil/memory/RealMemoryCache;-><init>(Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/bitmap/BitmapPool;)V

    return-object v3
.end method


# virtual methods
.method public final build()Lcoil/ImageLoader;
    .locals 11

    .line 522
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->memoryCache:Lcoil/memory/RealMemoryCache;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcoil/ImageLoader$Builder;->buildDefaultMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 523
    new-instance v1, Lcoil/RealImageLoader;

    .line 524
    iget-object v2, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    .line 525
    iget-object v3, p0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 526
    invoke-virtual {v5}, Lcoil/memory/RealMemoryCache;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object v4

    .line 528
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->callFactory:Lokhttp3/Call$Factory;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcoil/ImageLoader$Builder;->buildDefaultCallFactory()Lokhttp3/Call$Factory;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 529
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->eventListenerFactory:Lcoil/EventListener$Factory;

    if-nez v0, :cond_2

    sget-object v0, Lcoil/EventListener$Factory;->NONE:Lcoil/EventListener$Factory;

    :cond_2
    move-object v7, v0

    .line 530
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->componentRegistry:Lcoil/ComponentRegistry;

    if-nez v0, :cond_3

    new-instance v0, Lcoil/ComponentRegistry;

    invoke-direct {v0}, Lcoil/ComponentRegistry;-><init>()V

    :cond_3
    move-object v8, v0

    .line 531
    iget-object v9, p0, Lcoil/ImageLoader$Builder;->options:Lcoil/util/ImageLoaderOptions;

    const/4 v10, 0x0

    .line 523
    invoke-direct/range {v1 .. v10}, Lcoil/RealImageLoader;-><init>(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lcoil/bitmap/BitmapPool;Lcoil/memory/RealMemoryCache;Lokhttp3/Call$Factory;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V

    return-object v1
.end method

.method public final componentRegistry(Lcoil/ComponentRegistry;)Lcoil/ImageLoader$Builder;
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->componentRegistry:Lcoil/ComponentRegistry;

    return-object p0
.end method

.method public final crossfade(I)Lcoil/ImageLoader$Builder;
    .locals 4

    if-lez p1, :cond_0

    .line 413
    new-instance v0, Lcoil/transition/CrossfadeTransition;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcoil/transition/CrossfadeTransition;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    :goto_0
    invoke-virtual {p0, v0}, Lcoil/ImageLoader$Builder;->transition(Lcoil/transition/Transition;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final crossfade(Z)Lcoil/ImageLoader$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 405
    :goto_0
    invoke-virtual {p0, p1}, Lcoil/ImageLoader$Builder;->crossfade(I)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final diskCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "policy"

    move-object/from16 v13, p1

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    iget-object v2, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/16 v15, 0xbff

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v16}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final memoryCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "policy"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v2, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/16 v15, 0xdff

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v16}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final transition(Lcoil/transition/Transition;)Lcoil/ImageLoader$Builder;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "transition"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object v2, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/16 v15, 0xffd

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v16}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method
