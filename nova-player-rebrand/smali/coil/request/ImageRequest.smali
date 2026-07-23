.class public final Lcoil/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/request/ImageRequest$Listener;,
        Lcoil/request/ImageRequest$Builder;
    }
.end annotation


# instance fields
.field private final allowConversionToBitmap:Z

.field private final allowHardware:Z

.field private final allowRgb565:Z

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final colorSpace:Landroid/graphics/ColorSpace;

.field private final context:Landroid/content/Context;

.field private final data:Ljava/lang/Object;

.field private final decoder:Lcoil/decode/Decoder;

.field private final defaults:Lcoil/request/DefaultRequestOptions;

.field private final defined:Lcoil/request/DefinedRequestOptions;

.field private final diskCachePolicy:Lcoil/request/CachePolicy;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final errorDrawable:Landroid/graphics/drawable/Drawable;

.field private final errorResId:Ljava/lang/Integer;

.field private final fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private final fallbackResId:Ljava/lang/Integer;

.field private final fetcher:Lkotlin/Pair;

.field private final headers:Lokhttp3/Headers;

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;

.field private final listener:Lcoil/request/ImageRequest$Listener;

.field private final memoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private final memoryCachePolicy:Lcoil/request/CachePolicy;

.field private final networkCachePolicy:Lcoil/request/CachePolicy;

.field private final parameters:Lcoil/request/Parameters;

.field private final placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private final placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private final placeholderResId:Ljava/lang/Integer;

.field private final precision:Lcoil/size/Precision;

.field private final premultipliedAlpha:Z

.field private final scale:Lcoil/size/Scale;

.field private final sizeResolver:Lcoil/size/SizeResolver;

.field private final target:Lcoil/target/Target;

.field private final transformations:Ljava/util/List;

.field private final transition:Lcoil/transition/Transition;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Key;Landroid/graphics/ColorSpace;Lkotlin/Pair;Lcoil/decode/Decoder;Ljava/util/List;Lokhttp3/Headers;Lcoil/request/Parameters;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcoil/request/ImageRequest;->data:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lcoil/request/ImageRequest;->target:Lcoil/target/Target;

    .line 69
    iput-object p4, p0, Lcoil/request/ImageRequest;->listener:Lcoil/request/ImageRequest$Listener;

    .line 72
    iput-object p5, p0, Lcoil/request/ImageRequest;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 75
    iput-object p6, p0, Lcoil/request/ImageRequest;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 78
    iput-object p7, p0, Lcoil/request/ImageRequest;->colorSpace:Landroid/graphics/ColorSpace;

    .line 81
    iput-object p8, p0, Lcoil/request/ImageRequest;->fetcher:Lkotlin/Pair;

    .line 84
    iput-object p9, p0, Lcoil/request/ImageRequest;->decoder:Lcoil/decode/Decoder;

    .line 87
    iput-object p10, p0, Lcoil/request/ImageRequest;->transformations:Ljava/util/List;

    .line 90
    iput-object p11, p0, Lcoil/request/ImageRequest;->headers:Lokhttp3/Headers;

    .line 93
    iput-object p12, p0, Lcoil/request/ImageRequest;->parameters:Lcoil/request/Parameters;

    .line 96
    iput-object p13, p0, Lcoil/request/ImageRequest;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 99
    iput-object p14, p0, Lcoil/request/ImageRequest;->sizeResolver:Lcoil/size/SizeResolver;

    .line 102
    iput-object p15, p0, Lcoil/request/ImageRequest;->scale:Lcoil/size/Scale;

    move-object/from16 p1, p16

    .line 105
    iput-object p1, p0, Lcoil/request/ImageRequest;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 p1, p17

    .line 108
    iput-object p1, p0, Lcoil/request/ImageRequest;->transition:Lcoil/transition/Transition;

    move-object/from16 p1, p18

    .line 111
    iput-object p1, p0, Lcoil/request/ImageRequest;->precision:Lcoil/size/Precision;

    move-object/from16 p1, p19

    .line 114
    iput-object p1, p0, Lcoil/request/ImageRequest;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    move/from16 p1, p20

    .line 117
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->allowConversionToBitmap:Z

    move/from16 p1, p21

    .line 120
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->allowHardware:Z

    move/from16 p1, p22

    .line 123
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->allowRgb565:Z

    move/from16 p1, p23

    .line 126
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->premultipliedAlpha:Z

    move-object/from16 p1, p24

    .line 129
    iput-object p1, p0, Lcoil/request/ImageRequest;->memoryCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 p1, p25

    .line 132
    iput-object p1, p0, Lcoil/request/ImageRequest;->diskCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 p1, p26

    .line 135
    iput-object p1, p0, Lcoil/request/ImageRequest;->networkCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 p1, p27

    .line 137
    iput-object p1, p0, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    move-object/from16 p1, p28

    .line 138
    iput-object p1, p0, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, p29

    .line 139
    iput-object p1, p0, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    move-object/from16 p1, p30

    .line 140
    iput-object p1, p0, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, p31

    .line 141
    iput-object p1, p0, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    move-object/from16 p1, p32

    .line 142
    iput-object p1, p0, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, p33

    .line 145
    iput-object p1, p0, Lcoil/request/ImageRequest;->defined:Lcoil/request/DefinedRequestOptions;

    move-object/from16 p1, p34

    .line 148
    iput-object p1, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Key;Landroid/graphics/ColorSpace;Lkotlin/Pair;Lcoil/decode/Decoder;Ljava/util/List;Lokhttp3/Headers;Lcoil/request/Parameters;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p34}, Lcoil/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Key;Landroid/graphics/ColorSpace;Lkotlin/Pair;Lcoil/decode/Decoder;Ljava/util/List;Lokhttp3/Headers;Lcoil/request/Parameters;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;)V

    return-void
.end method

.method public static final synthetic access$getErrorDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getErrorResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getFallbackDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getFallbackResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getPlaceholderDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getPlaceholderResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic newBuilder$default(Lcoil/request/ImageRequest;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 161
    iget-object p1, p0, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    :cond_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest;->newBuilder(Landroid/content/Context;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 165
    :cond_0
    instance-of v1, p1, Lcoil/request/ImageRequest;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    check-cast p1, Lcoil/request/ImageRequest;

    iget-object v2, p1, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcoil/request/ImageRequest;->data:Ljava/lang/Object;

    iget-object v2, p1, Lcoil/request/ImageRequest;->data:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcoil/request/ImageRequest;->target:Lcoil/target/Target;

    iget-object v2, p1, Lcoil/request/ImageRequest;->target:Lcoil/target/Target;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcoil/request/ImageRequest;->listener:Lcoil/request/ImageRequest$Listener;

    iget-object v2, p1, Lcoil/request/ImageRequest;->listener:Lcoil/request/ImageRequest$Listener;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcoil/request/ImageRequest;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iget-object v2, p1, Lcoil/request/ImageRequest;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iget-object v2, p1, Lcoil/request/ImageRequest;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcoil/request/ImageRequest;->colorSpace:Landroid/graphics/ColorSpace;

    iget-object v2, p1, Lcoil/request/ImageRequest;->colorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    :cond_1
    iget-object v1, p0, Lcoil/request/ImageRequest;->fetcher:Lkotlin/Pair;

    iget-object v2, p1, Lcoil/request/ImageRequest;->fetcher:Lkotlin/Pair;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcoil/request/ImageRequest;->decoder:Lcoil/decode/Decoder;

    iget-object v2, p1, Lcoil/request/ImageRequest;->decoder:Lcoil/decode/Decoder;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcoil/request/ImageRequest;->transformations:Ljava/util/List;

    iget-object v2, p1, Lcoil/request/ImageRequest;->transformations:Ljava/util/List;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcoil/request/ImageRequest;->headers:Lokhttp3/Headers;

    iget-object v2, p1, Lcoil/request/ImageRequest;->headers:Lokhttp3/Headers;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcoil/request/ImageRequest;->parameters:Lcoil/request/Parameters;

    iget-object v2, p1, Lcoil/request/ImageRequest;->parameters:Lcoil/request/Parameters;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lcoil/request/ImageRequest;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v2, p1, Lcoil/request/ImageRequest;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcoil/request/ImageRequest;->sizeResolver:Lcoil/size/SizeResolver;

    iget-object v2, p1, Lcoil/request/ImageRequest;->sizeResolver:Lcoil/size/SizeResolver;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcoil/request/ImageRequest;->scale:Lcoil/size/Scale;

    iget-object v2, p1, Lcoil/request/ImageRequest;->scale:Lcoil/size/Scale;

    if-ne v1, v2, :cond_2

    .line 181
    iget-object v1, p0, Lcoil/request/ImageRequest;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, p1, Lcoil/request/ImageRequest;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcoil/request/ImageRequest;->transition:Lcoil/transition/Transition;

    iget-object v2, p1, Lcoil/request/ImageRequest;->transition:Lcoil/transition/Transition;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcoil/request/ImageRequest;->precision:Lcoil/size/Precision;

    iget-object v2, p1, Lcoil/request/ImageRequest;->precision:Lcoil/size/Precision;

    if-ne v1, v2, :cond_2

    .line 184
    iget-object v1, p0, Lcoil/request/ImageRequest;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcoil/request/ImageRequest;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 185
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowConversionToBitmap:Z

    iget-boolean v2, p1, Lcoil/request/ImageRequest;->allowConversionToBitmap:Z

    if-ne v1, v2, :cond_2

    .line 186
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowHardware:Z

    iget-boolean v2, p1, Lcoil/request/ImageRequest;->allowHardware:Z

    if-ne v1, v2, :cond_2

    .line 187
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowRgb565:Z

    iget-boolean v2, p1, Lcoil/request/ImageRequest;->allowRgb565:Z

    if-ne v1, v2, :cond_2

    .line 188
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->premultipliedAlpha:Z

    iget-boolean v2, p1, Lcoil/request/ImageRequest;->premultipliedAlpha:Z

    if-ne v1, v2, :cond_2

    .line 189
    iget-object v1, p0, Lcoil/request/ImageRequest;->memoryCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/ImageRequest;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_2

    .line 190
    iget-object v1, p0, Lcoil/request/ImageRequest;->diskCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/ImageRequest;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_2

    .line 191
    iget-object v1, p0, Lcoil/request/ImageRequest;->networkCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/ImageRequest;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_2

    .line 192
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    iget-object v2, p1, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    iget-object v2, p1, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    iget-object v2, p1, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcoil/request/ImageRequest;->defined:Lcoil/request/DefinedRequestOptions;

    iget-object v2, p1, Lcoil/request/ImageRequest;->defined:Lcoil/request/DefinedRequestOptions;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    iget-object p1, p1, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final getAllowConversionToBitmap()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->allowConversionToBitmap:Z

    return v0
.end method

.method public final getAllowHardware()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->allowHardware:Z

    return v0
.end method

.method public final getAllowRgb565()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->allowRgb565:Z

    return v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 114
    iget-object v0, p0, Lcoil/request/ImageRequest;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 78
    iget-object v0, p0, Lcoil/request/ImageRequest;->colorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 60
    iget-object v0, p0, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcoil/request/ImageRequest;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDecoder()Lcoil/decode/Decoder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcoil/request/ImageRequest;->decoder:Lcoil/decode/Decoder;

    return-object v0
.end method

.method public final getDefaults()Lcoil/request/DefaultRequestOptions;
    .locals 1

    .line 148
    iget-object v0, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final getDefined()Lcoil/request/DefinedRequestOptions;
    .locals 1

    .line 145
    iget-object v0, p0, Lcoil/request/ImageRequest;->defined:Lcoil/request/DefinedRequestOptions;

    return-object v0
.end method

.method public final getDiskCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 132
    iget-object v0, p0, Lcoil/request/ImageRequest;->diskCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 105
    iget-object v0, p0, Lcoil/request/ImageRequest;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getError()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 155
    iget-object v0, p0, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    iget-object v2, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getError()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcoil/util/-Requests;->getDrawableCompat(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getFallback()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 158
    iget-object v0, p0, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    iget-object v2, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getFallback()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcoil/util/-Requests;->getDrawableCompat(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getFetcher()Lkotlin/Pair;
    .locals 1

    .line 81
    iget-object v0, p0, Lcoil/request/ImageRequest;->fetcher:Lkotlin/Pair;

    return-object v0
.end method

.method public final getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 90
    iget-object v0, p0, Lcoil/request/ImageRequest;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 96
    iget-object v0, p0, Lcoil/request/ImageRequest;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public final getListener()Lcoil/request/ImageRequest$Listener;
    .locals 1

    .line 69
    iget-object v0, p0, Lcoil/request/ImageRequest;->listener:Lcoil/request/ImageRequest$Listener;

    return-object v0
.end method

.method public final getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;
    .locals 1

    .line 72
    iget-object v0, p0, Lcoil/request/ImageRequest;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object v0
.end method

.method public final getMemoryCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 129
    iget-object v0, p0, Lcoil/request/ImageRequest;->memoryCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getNetworkCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 135
    iget-object v0, p0, Lcoil/request/ImageRequest;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getParameters()Lcoil/request/Parameters;
    .locals 1

    .line 93
    iget-object v0, p0, Lcoil/request/ImageRequest;->parameters:Lcoil/request/Parameters;

    return-object v0
.end method

.method public final getPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 152
    iget-object v0, p0, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    iget-object v2, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcoil/util/-Requests;->getDrawableCompat(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;
    .locals 1

    .line 75
    iget-object v0, p0, Lcoil/request/ImageRequest;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object v0
.end method

.method public final getPrecision()Lcoil/size/Precision;
    .locals 1

    .line 111
    iget-object v0, p0, Lcoil/request/ImageRequest;->precision:Lcoil/size/Precision;

    return-object v0
.end method

.method public final getPremultipliedAlpha()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->premultipliedAlpha:Z

    return v0
.end method

.method public final getScale()Lcoil/size/Scale;
    .locals 1

    .line 102
    iget-object v0, p0, Lcoil/request/ImageRequest;->scale:Lcoil/size/Scale;

    return-object v0
.end method

.method public final getSizeResolver()Lcoil/size/SizeResolver;
    .locals 1

    .line 99
    iget-object v0, p0, Lcoil/request/ImageRequest;->sizeResolver:Lcoil/size/SizeResolver;

    return-object v0
.end method

.method public final getTarget()Lcoil/target/Target;
    .locals 1

    .line 66
    iget-object v0, p0, Lcoil/request/ImageRequest;->target:Lcoil/target/Target;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/List;
    .locals 1

    .line 87
    iget-object v0, p0, Lcoil/request/ImageRequest;->transformations:Ljava/util/List;

    return-object v0
.end method

.method public final getTransition()Lcoil/transition/Transition;
    .locals 1

    .line 108
    iget-object v0, p0, Lcoil/request/ImageRequest;->transition:Lcoil/transition/Transition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 203
    iget-object v0, p0, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 204
    iget-object v1, p0, Lcoil/request/ImageRequest;->data:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 205
    iget-object v1, p0, Lcoil/request/ImageRequest;->target:Lcoil/target/Target;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 206
    iget-object v1, p0, Lcoil/request/ImageRequest;->listener:Lcoil/request/ImageRequest$Listener;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 207
    iget-object v1, p0, Lcoil/request/ImageRequest;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 208
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 209
    iget-object v1, p0, Lcoil/request/ImageRequest;->colorSpace:Landroid/graphics/ColorSpace;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-static {v1}, Lcoil/decode/Options$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ColorSpace;)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 210
    iget-object v1, p0, Lcoil/request/ImageRequest;->fetcher:Lkotlin/Pair;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lkotlin/Pair;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 211
    iget-object v1, p0, Lcoil/request/ImageRequest;->decoder:Lcoil/decode/Decoder;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 212
    iget-object v1, p0, Lcoil/request/ImageRequest;->transformations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 213
    iget-object v1, p0, Lcoil/request/ImageRequest;->headers:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 214
    iget-object v1, p0, Lcoil/request/ImageRequest;->parameters:Lcoil/request/Parameters;

    invoke-virtual {v1}, Lcoil/request/Parameters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 215
    iget-object v1, p0, Lcoil/request/ImageRequest;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-object v1, p0, Lcoil/request/ImageRequest;->sizeResolver:Lcoil/size/SizeResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-object v1, p0, Lcoil/request/ImageRequest;->scale:Lcoil/size/Scale;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 218
    iget-object v1, p0, Lcoil/request/ImageRequest;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-object v1, p0, Lcoil/request/ImageRequest;->transition:Lcoil/transition/Transition;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-object v1, p0, Lcoil/request/ImageRequest;->precision:Lcoil/size/Precision;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 221
    iget-object v1, p0, Lcoil/request/ImageRequest;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowConversionToBitmap:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowHardware:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowRgb565:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->premultipliedAlpha:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    iget-object v1, p0, Lcoil/request/ImageRequest;->memoryCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget-object v1, p0, Lcoil/request/ImageRequest;->diskCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    iget-object v1, p0, Lcoil/request/ImageRequest;->networkCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget-object v1, p0, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 232
    iget-object v1, p0, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 233
    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 234
    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 235
    iget-object v1, p0, Lcoil/request/ImageRequest;->defined:Lcoil/request/DefinedRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefinedRequestOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-object v1, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final newBuilder(Landroid/content/Context;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcoil/request/ImageRequest$Builder;

    invoke-direct {v0, p0, p1}, Lcoil/request/ImageRequest$Builder;-><init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageRequest(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageRequest;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageRequest;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageRequest;->target:Lcoil/target/Target;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageRequest;->listener:Lcoil/request/ImageRequest$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", memoryCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcoil/request/ImageRequest;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", placeholderMemoryCacheKey="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", colorSpace="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcoil/request/ImageRequest;->colorSpace:Landroid/graphics/ColorSpace;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", fetcher="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcoil/request/ImageRequest;->fetcher:Lkotlin/Pair;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", decoder="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcoil/request/ImageRequest;->decoder:Lcoil/decode/Decoder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", transformations="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcoil/request/ImageRequest;->transformations:Ljava/util/List;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", headers="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcoil/request/ImageRequest;->headers:Lokhttp3/Headers;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", parameters="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcoil/request/ImageRequest;->parameters:Lcoil/request/Parameters;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", lifecycle="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcoil/request/ImageRequest;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", sizeResolver="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcoil/request/ImageRequest;->sizeResolver:Lcoil/size/SizeResolver;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", scale="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcoil/request/ImageRequest;->scale:Lcoil/size/Scale;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", dispatcher="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcoil/request/ImageRequest;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", transition="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcoil/request/ImageRequest;->transition:Lcoil/transition/Transition;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", precision="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcoil/request/ImageRequest;->precision:Lcoil/size/Precision;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", bitmapConfig="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcoil/request/ImageRequest;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", allowConversionToBitmap="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowConversionToBitmap:Z

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", allowHardware="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowHardware:Z

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", allowRgb565="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->allowRgb565:Z

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", premultipliedAlpha="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->premultipliedAlpha:Z

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", memoryCachePolicy="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcoil/request/ImageRequest;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", diskCachePolicy="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcoil/request/ImageRequest;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", networkCachePolicy="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lcoil/request/ImageRequest;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ", placeholderResId="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderResId:Ljava/lang/Integer;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ", placeholderDrawable="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcoil/request/ImageRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", errorResId="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcoil/request/ImageRequest;->errorResId:Ljava/lang/Integer;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", errorDrawable="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcoil/request/ImageRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", fallbackResId="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackResId:Ljava/lang/Integer;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", fallbackDrawable="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcoil/request/ImageRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", defined="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcoil/request/ImageRequest;->defined:Lcoil/request/DefinedRequestOptions;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", defaults="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcoil/request/ImageRequest;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
