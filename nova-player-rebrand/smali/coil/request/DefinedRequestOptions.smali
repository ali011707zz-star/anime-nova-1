.class public final Lcoil/request/DefinedRequestOptions;
.super Ljava/lang/Object;
.source "DefinedRequestOptions.kt"


# instance fields
.field private final allowHardware:Ljava/lang/Boolean;

.field private final allowRgb565:Ljava/lang/Boolean;

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final diskCachePolicy:Lcoil/request/CachePolicy;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;

.field private final memoryCachePolicy:Lcoil/request/CachePolicy;

.field private final networkCachePolicy:Lcoil/request/CachePolicy;

.field private final precision:Lcoil/size/Precision;

.field private final scale:Lcoil/size/Scale;

.field private final sizeResolver:Lcoil/size/SizeResolver;

.field private final transition:Lcoil/transition/Transition;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcoil/request/DefinedRequestOptions;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 21
    iput-object p2, p0, Lcoil/request/DefinedRequestOptions;->sizeResolver:Lcoil/size/SizeResolver;

    .line 22
    iput-object p3, p0, Lcoil/request/DefinedRequestOptions;->scale:Lcoil/size/Scale;

    .line 23
    iput-object p4, p0, Lcoil/request/DefinedRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 24
    iput-object p5, p0, Lcoil/request/DefinedRequestOptions;->transition:Lcoil/transition/Transition;

    .line 25
    iput-object p6, p0, Lcoil/request/DefinedRequestOptions;->precision:Lcoil/size/Precision;

    .line 26
    iput-object p7, p0, Lcoil/request/DefinedRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 27
    iput-object p8, p0, Lcoil/request/DefinedRequestOptions;->allowHardware:Ljava/lang/Boolean;

    .line 28
    iput-object p9, p0, Lcoil/request/DefinedRequestOptions;->allowRgb565:Ljava/lang/Boolean;

    .line 29
    iput-object p10, p0, Lcoil/request/DefinedRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 30
    iput-object p11, p0, Lcoil/request/DefinedRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 31
    iput-object p12, p0, Lcoil/request/DefinedRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcoil/request/DefinedRequestOptions;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->lifecycle:Landroidx/lifecycle/Lifecycle;

    check-cast p1, Lcoil/request/DefinedRequestOptions;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->sizeResolver:Lcoil/size/SizeResolver;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->sizeResolver:Lcoil/size/SizeResolver;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->scale:Lcoil/size/Scale;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->scale:Lcoil/size/Scale;

    if-ne v1, v2, :cond_1

    .line 56
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->transition:Lcoil/transition/Transition;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->transition:Lcoil/transition/Transition;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->precision:Lcoil/size/Precision;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->precision:Lcoil/size/Precision;

    if-ne v1, v2, :cond_1

    .line 59
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 60
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->allowHardware:Ljava/lang/Boolean;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->allowHardware:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->allowRgb565:Ljava/lang/Boolean;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->allowRgb565:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_1

    .line 63
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    iget-object v2, p1, Lcoil/request/DefinedRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    iget-object p1, p1, Lcoil/request/DefinedRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAllowHardware()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->allowHardware:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAllowRgb565()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->allowRgb565:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 26
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getDiskCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 30
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 23
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 20
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public final getMemoryCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 29
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getNetworkCachePolicy()Lcoil/request/CachePolicy;
    .locals 1

    .line 31
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final getPrecision()Lcoil/size/Precision;
    .locals 1

    .line 25
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->precision:Lcoil/size/Precision;

    return-object v0
.end method

.method public final getScale()Lcoil/size/Scale;
    .locals 1

    .line 22
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->scale:Lcoil/size/Scale;

    return-object v0
.end method

.method public final getSizeResolver()Lcoil/size/SizeResolver;
    .locals 1

    .line 21
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->sizeResolver:Lcoil/size/SizeResolver;

    return-object v0
.end method

.method public final getTransition()Lcoil/transition/Transition;
    .locals 1

    .line 24
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->transition:Lcoil/transition/Transition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcoil/request/DefinedRequestOptions;->lifecycle:Landroidx/lifecycle/Lifecycle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->sizeResolver:Lcoil/size/SizeResolver;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->scale:Lcoil/size/Scale;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->transition:Lcoil/transition/Transition;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->precision:Lcoil/size/Precision;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->allowHardware:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->allowRgb565:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v2, p0, Lcoil/request/DefinedRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-nez v2, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefinedRequestOptions(lifecycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->sizeResolver:Lcoil/size/SizeResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->scale:Lcoil/size/Scale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", transition="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->transition:Lcoil/transition/Transition;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", precision="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->precision:Lcoil/size/Precision;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", bitmapConfig="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", allowHardware="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->allowHardware:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", allowRgb565="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->allowRgb565:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", memoryCachePolicy="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", diskCachePolicy="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", networkCachePolicy="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcoil/request/DefinedRequestOptions;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
