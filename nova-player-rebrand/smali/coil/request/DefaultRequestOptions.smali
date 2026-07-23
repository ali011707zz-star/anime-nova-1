.class public final Lcoil/request/DefaultRequestOptions;
.super Ljava/lang/Object;
.source "DefaultRequestOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/request/DefaultRequestOptions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/request/DefaultRequestOptions$Companion;

.field public static final INSTANCE:Lcoil/request/DefaultRequestOptions;


# instance fields
.field private final allowHardware:Z

.field private final allowRgb565:Z

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final diskCachePolicy:Lcoil/request/CachePolicy;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final error:Landroid/graphics/drawable/Drawable;

.field private final fallback:Landroid/graphics/drawable/Drawable;

.field private final memoryCachePolicy:Lcoil/request/CachePolicy;

.field private final networkCachePolicy:Lcoil/request/CachePolicy;

.field private final placeholder:Landroid/graphics/drawable/Drawable;

.field private final precision:Lcoil/size/Precision;

.field private final transition:Lcoil/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcoil/request/DefaultRequestOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/request/DefaultRequestOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/request/DefaultRequestOptions;->Companion:Lcoil/request/DefaultRequestOptions$Companion;

    .line 92
    new-instance v2, Lcoil/request/DefaultRequestOptions;

    const/16 v15, 0xfff

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v16}, Lcoil/request/DefaultRequestOptions;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcoil/request/DefaultRequestOptions;->INSTANCE:Lcoil/request/DefaultRequestOptions;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precision"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryCachePolicy"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCachePolicy"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCachePolicy"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    iput-object p2, p0, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    .line 23
    iput-object p3, p0, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    .line 24
    iput-object p4, p0, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 25
    iput-boolean p5, p0, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    .line 26
    iput-boolean p6, p0, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    .line 27
    iput-object p7, p0, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object p8, p0, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object p9, p0, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object p10, p0, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 31
    iput-object p11, p0, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 32
    iput-object p12, p0, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 21
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 22
    sget-object p2, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 23
    sget-object p3, Lcoil/size/Precision;->AUTOMATIC:Lcoil/size/Precision;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 24
    sget-object p4, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {p4}, Lcoil/util/Utils;->getDEFAULT_BITMAP_CONFIG()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    const/4 p5, 0x1

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    const/4 p6, 0x0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    const/4 v0, 0x0

    if-eqz p14, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 30
    sget-object p10, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    .line 31
    sget-object p11, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 32
    sget-object p12, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 20
    invoke-direct/range {p2 .. p14}, Lcoil/request/DefaultRequestOptions;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    return-void
.end method

.method public static synthetic copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 35
    iget-object p1, p0, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-boolean p5, p0, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p6, p0, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p7, p0, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p8, p0, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p10, p0, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-object p12, p0, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcoil/request/DefaultRequestOptions;->copy(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)Lcoil/request/DefaultRequestOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)Lcoil/request/DefaultRequestOptions;
    .locals 14

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transition"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precision"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConfig"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryCachePolicy"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCachePolicy"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCachePolicy"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcoil/request/DefaultRequestOptions;

    move-object v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcoil/request/DefaultRequestOptions;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcoil/request/DefaultRequestOptions;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lcoil/request/DefaultRequestOptions;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    if-ne v1, v2, :cond_1

    .line 57
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 58
    iget-boolean v1, p0, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    iget-boolean v2, p1, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    if-ne v1, v2, :cond_1

    .line 59
    iget-boolean v1, p0, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    iget-boolean v2, p1, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    if-ne v1, v2, :cond_1

    .line 60
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    iget-object p1, p1, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAllowHardware()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    return v0
.end method

.method public final getAllowRgb565()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    return v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 24
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getDiskCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 31
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 21
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getError()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 28
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallback()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 29
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getMemoryCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 30
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getNetworkCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 32
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 27
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPrecision()Lcoil/size/Precision;
    .locals 1

    .line 23
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    return-object v0
.end method

.method public final getTransition()Lcoil/transition/Transition;
    .locals 1

    .line 22
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-boolean v1, p0, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean v1, p0, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

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

    .line 76
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultRequestOptions(dispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->transition:Lcoil/transition/Transition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->precision:Lcoil/size/Precision;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmapConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", allowHardware="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean v1, p0, Lcoil/request/DefaultRequestOptions;->allowHardware:Z

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", allowRgb565="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean v1, p0, Lcoil/request/DefaultRequestOptions;->allowRgb565:Z

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", placeholder="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", error="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->error:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", fallback="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->fallback:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", memoryCachePolicy="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", diskCachePolicy="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", networkCachePolicy="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcoil/request/DefaultRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
