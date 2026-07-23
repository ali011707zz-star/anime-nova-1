.class public final Lcoil/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "EngineInterceptor.kt"

# interfaces
.implements Lcoil/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/intercept/EngineInterceptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/intercept/EngineInterceptor$Companion;


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private final drawableDecoder:Lcoil/decode/DrawableDecoderService;

.field private final memoryCacheService:Lcoil/memory/MemoryCacheService;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final registry:Lcoil/ComponentRegistry;

.field private final requestService:Lcoil/memory/RequestService;

.field private final strongMemoryCache:Lcoil/memory/StrongMemoryCache;

.field private final systemCallbacks:Lcoil/util/SystemCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/intercept/EngineInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/intercept/EngineInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/intercept/EngineInterceptor;->Companion:Lcoil/intercept/EngineInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/ComponentRegistry;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/MemoryCacheService;Lcoil/memory/RequestService;Lcoil/util/SystemCallbacks;Lcoil/decode/DrawableDecoderService;Lcoil/util/Logger;)V
    .locals 0

    const-string p9, "registry"

    invoke-static {p1, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "bitmapPool"

    invoke-static {p2, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "referenceCounter"

    invoke-static {p3, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "strongMemoryCache"

    invoke-static {p4, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "memoryCacheService"

    invoke-static {p5, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "requestService"

    invoke-static {p6, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "systemCallbacks"

    invoke-static {p7, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "drawableDecoder"

    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    .line 57
    iput-object p2, p0, Lcoil/intercept/EngineInterceptor;->bitmapPool:Lcoil/bitmap/BitmapPool;

    .line 58
    iput-object p3, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 59
    iput-object p4, p0, Lcoil/intercept/EngineInterceptor;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    .line 60
    iput-object p5, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    .line 61
    iput-object p6, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    .line 62
    iput-object p7, p0, Lcoil/intercept/EngineInterceptor;->systemCallbacks:Lcoil/util/SystemCallbacks;

    .line 63
    iput-object p8, p0, Lcoil/intercept/EngineInterceptor;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    return-void
.end method

.method public static final synthetic access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-object p0
.end method

.method public static final synthetic access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;
    .locals 0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic access$getReferenceCounter$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapReferenceCounter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object p0
.end method

.method public static final synthetic access$getRegistry$p(Lcoil/intercept/EngineInterceptor;)Lcoil/ComponentRegistry;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    return-object p0
.end method

.method public static final synthetic access$getRequestService$p(Lcoil/intercept/EngineInterceptor;)Lcoil/memory/RequestService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    return-object p0
.end method

.method public static final synthetic access$getSystemCallbacks$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/SystemCallbacks;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->systemCallbacks:Lcoil/util/SystemCallbacks;

    return-object p0
.end method

.method public static final synthetic access$invalidateData(Lcoil/intercept/EngineInterceptor;Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcoil/intercept/EngineInterceptor;->invalidateData(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$validateDrawable(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcoil/intercept/EngineInterceptor;->validateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic access$writeToMemoryCache(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/intercept/EngineInterceptor;->writeToMemoryCache(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z

    move-result p0

    return p0
.end method

.method private final invalidateData(Ljava/lang/Object;)V
    .locals 2

    .line 251
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    invoke-interface {v0, p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    return-void

    .line 252
    :cond_0
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    :cond_1
    return-void
.end method

.method private final isSizeValid(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z
    .locals 8

    .line 190
    instance-of v0, p4, Lcoil/size/OriginalSize;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p2}, Lcoil/memory/RealMemoryCache$Value;->isSampled()Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    .line 198
    :cond_0
    instance-of v0, p4, Lcoil/size/PixelSize;

    if-eqz v0, :cond_9

    .line 201
    instance-of v0, p1, Lcoil/memory/MemoryCache$Key$Complex;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcoil/memory/MemoryCache$Key$Complex;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$Key$Complex;->getSize()Lcoil/size/Size;

    move-result-object v3

    .line 202
    :goto_1
    instance-of p1, v3, Lcoil/size/PixelSize;

    if-eqz p1, :cond_3

    .line 203
    check-cast v3, Lcoil/size/PixelSize;

    invoke-virtual {v3}, Lcoil/size/PixelSize;->getWidth()I

    move-result p1

    .line 204
    invoke-virtual {v3}, Lcoil/size/PixelSize;->getHeight()I

    move-result v0

    goto :goto_3

    .line 206
    :cond_3
    sget-object p1, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    if-nez v3, :cond_8

    .line 207
    :goto_2
    invoke-interface {p2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    move v7, v0

    move v0, p1

    move p1, v7

    .line 216
    :goto_3
    check-cast p4, Lcoil/size/PixelSize;

    invoke-virtual {p4}, Lcoil/size/PixelSize;->getWidth()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_5

    invoke-virtual {p4}, Lcoil/size/PixelSize;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_5

    return v2

    .line 223
    :cond_5
    invoke-virtual {p4}, Lcoil/size/PixelSize;->getWidth()I

    move-result v3

    .line 224
    invoke-virtual {p4}, Lcoil/size/PixelSize;->getHeight()I

    move-result p4

    .line 225
    invoke-virtual {p3}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v4

    .line 220
    invoke-static {p1, v0, v3, p4, v4}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v3, v5

    if-nez p1, :cond_6

    goto :goto_4

    .line 227
    :cond_6
    invoke-static {p3}, Lcoil/util/-Requests;->getAllowInexactSize(Lcoil/request/ImageRequest;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    :goto_4
    cmpl-double p1, v3, v5

    if-lez p1, :cond_9

    .line 234
    invoke-interface {p2}, Lcoil/memory/RealMemoryCache$Value;->isSampled()Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    .line 209
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    return v2
.end method

.method private final validateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 258
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 261
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    .line 264
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->increment(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method private final writeToMemoryCache(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z
    .locals 2

    .line 383
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_3

    .line 388
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 390
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    invoke-interface {p1, p2, v1, p4}, Lcoil/memory/StrongMemoryCache;->set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Z)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public final computeMemoryCacheKey$coil_base_release(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/size/Size;)Lcoil/memory/MemoryCache$Key;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {p3, p2}, Lcoil/fetch/Fetcher;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object p4, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p1

    .line 168
    new-instance p4, Lcoil/memory/MemoryCache$Key$Complex;

    .line 170
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcoil/request/Parameters;->cacheKeys()Ljava/util/Map;

    move-result-object p1

    .line 168
    invoke-direct {p4, p2, v0, p3, p1}, Lcoil/memory/MemoryCache$Key$Complex;-><init>(Ljava/lang/String;Ljava/util/List;Lcoil/size/Size;Ljava/util/Map;)V

    return-object p4

    .line 153
    :cond_1
    sget-object v0, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p1

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    .line 186
    invoke-virtual {p1}, Lcoil/request/Parameters;->cacheKeys()Ljava/util/Map;

    move-result-object p1

    .line 182
    new-instance p3, Lcoil/memory/MemoryCache$Key$Complex;

    invoke-direct {p3, p2, v1, p4, p1}, Lcoil/memory/MemoryCache$Key$Complex;-><init>(Ljava/lang/String;Ljava/util/List;Lcoil/size/Size;Ljava/util/Map;)V

    return-object p3

    :cond_2
    const/4 p1, 0x0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 184
    throw p3
.end method

.method public intercept(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    instance-of v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcoil/intercept/EngineInterceptor$intercept$1;

    iget v2, v1, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcoil/intercept/EngineInterceptor$intercept$1;

    invoke-direct {v1, p0, v0}, Lcoil/intercept/EngineInterceptor$intercept$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 67
    iget v1, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    const/4 v13, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v13, :cond_1

    iget-object v1, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcoil/intercept/Interceptor$Chain;

    iget-object v2, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v6, v1

    goto/16 :goto_6

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    :try_start_1
    instance-of v0, v6, Lcoil/intercept/RealInterceptorChain;

    if-eqz v0, :cond_9

    .line 72
    invoke-interface {v6}, Lcoil/intercept/Interceptor$Chain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 75
    invoke-interface {v6}, Lcoil/intercept/Interceptor$Chain;->getSize()Lcoil/size/Size;

    move-result-object v7

    .line 76
    move-object v3, v6

    check-cast v3, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v3}, Lcoil/intercept/RealInterceptorChain;->getEventListener()Lcoil/EventListener;

    move-result-object v8

    .line 79
    invoke-interface {v8, v2, v1}, Lcoil/EventListener;->mapStart(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    invoke-static {v3, v1}, Lcoil/util/-ComponentRegistries;->mapData(Lcoil/ComponentRegistry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 81
    invoke-interface {v8, v2, v4}, Lcoil/EventListener;->mapEnd(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 84
    invoke-static {v2, v4}, Lcoil/util/-Requests;->fetcher(Lcoil/request/ImageRequest;Ljava/lang/Object;)Lcoil/fetch/Fetcher;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    invoke-static {v1, v4}, Lcoil/util/-ComponentRegistries;->requireFetcher(Lcoil/ComponentRegistry;Ljava/lang/Object;)Lcoil/fetch/Fetcher;

    move-result-object v1

    :cond_3
    move-object v5, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto/16 :goto_6

    .line 85
    :goto_2
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v2, v4, v5, v7}, Lcoil/intercept/EngineInterceptor;->computeMemoryCacheKey$coil_base_release(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/size/Size;)Lcoil/memory/MemoryCache$Key;

    move-result-object v1

    :cond_4
    move-object v9, v1

    .line 86
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    invoke-virtual {v1, v9}, Lcoil/memory/MemoryCacheService;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;

    move-result-object v1

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_7

    .line 89
    invoke-virtual {p0, v9, v3, v2, v7}, Lcoil/intercept/EngineInterceptor;->isCachedValueValid$coil_base_release(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    new-instance v1, Lcoil/request/SuccessResult;

    .line 91
    invoke-interface {v3}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "context.resources"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 93
    new-instance v0, Lcoil/request/ImageResult$Metadata;

    .line 95
    invoke-interface {v3}, Lcoil/memory/RealMemoryCache$Value;->isSampled()Z

    move-result v3

    .line 96
    sget-object v4, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    .line 97
    move-object v7, v6

    check-cast v7, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v7}, Lcoil/intercept/RealInterceptorChain;->getCached()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    .line 93
    :goto_5
    invoke-direct {v0, v9, v3, v4, v13}, Lcoil/request/ImageResult$Metadata;-><init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V

    .line 90
    invoke-direct {v1, v5, v2, v0}, Lcoil/request/SuccessResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    return-object v1

    .line 103
    :cond_7
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v14

    new-instance v0, Lcoil/intercept/EngineInterceptor$intercept$2;

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcoil/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/RealMemoryCache$Value;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/intercept/Interceptor$Chain;Lcoil/size/Size;Lcoil/EventListener;Lcoil/memory/MemoryCache$Key;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v6, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v13, v11, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    invoke-static {v14, v0, v11}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_8

    return-object v12

    :cond_8
    return-object v0

    .line 70
    :cond_9
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :goto_6
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_a

    .line 136
    iget-object v2, v2, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    invoke-interface {v6}, Lcoil/intercept/Interceptor$Chain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcoil/memory/RequestService;->errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;

    move-result-object v0

    return-object v0

    .line 134
    :cond_a
    throw v0
.end method

.method public final isCachedValueValid$coil_base_release(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z
    .locals 1

    const-string v0, "cacheValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/intercept/EngineInterceptor;->isSizeValid(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 171
    :cond_0
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    invoke-interface {p2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcoil/memory/RequestService;->isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result p1

    if-nez p1, :cond_1

    return p4

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
