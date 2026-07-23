.class public final Lcoil/memory/RequestService;
.super Ljava/lang/Object;
.source "RequestService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RequestService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/memory/RequestService$Companion;

.field public static final VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final hardwareBitmapService:Lcoil/memory/HardwareBitmapService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcoil/memory/RequestService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RequestService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RequestService;->Companion:Lcoil/memory/RequestService$Companion;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 101
    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v3

    invoke-static {}, Lcoil/bitmap/RealBitmapPool$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 103
    :cond_0
    new-array v0, v2, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v3

    .line 100
    :goto_0
    sput-object v0, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcoil/util/Logger;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object p1, Lcoil/memory/HardwareBitmapService;->Companion:Lcoil/memory/HardwareBitmapService$Companion;

    invoke-virtual {p1}, Lcoil/memory/HardwareBitmapService$Companion;->invoke()Lcoil/memory/HardwareBitmapService;

    move-result-object p1

    iput-object p1, p0, Lcoil/memory/RequestService;->hardwareBitmapService:Lcoil/memory/HardwareBitmapService;

    return-void
.end method

.method private final isConfigValidForHardwareAllocation(Lcoil/request/ImageRequest;Lcoil/size/Size;)Z
    .locals 1

    .line 89
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcoil/memory/RequestService;->isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcoil/memory/RequestService;->hardwareBitmapService:Lcoil/memory/HardwareBitmapService;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcoil/memory/HardwareBitmapService;->allowHardware(Lcoil/size/Size;Lcoil/util/Logger;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isConfigValidForTransformations(Lcoil/request/ImageRequest;)Z
    .locals 1

    .line 95
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcoil/request/ErrorResult;

    .line 27
    instance-of v1, p2, Lcoil/request/NullRequestDataException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getFallback()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getError()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 26
    :goto_0
    invoke-direct {v0, v1, p1, p2}, Lcoil/request/ErrorResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcoil/util/-Bitmaps;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowHardware()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object p1

    .line 76
    instance-of p2, p1, Lcoil/target/ViewTarget;

    if-eqz p2, :cond_2

    check-cast p1, Lcoil/target/ViewTarget;

    invoke-interface {p1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final options(Lcoil/request/ImageRequest;Lcoil/size/Size;Z)Lcoil/decode/Options;
    .locals 14

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct/range {p0 .. p1}, Lcoil/memory/RequestService;->isConfigValidForTransformations(Lcoil/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p2}, Lcoil/memory/RequestService;->isConfigValidForHardwareAllocation(Lcoil/request/ImageRequest;Lcoil/size/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    :goto_2
    move-object v13, v0

    goto :goto_3

    :cond_1
    sget-object v0, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    goto :goto_2

    .line 48
    :goto_3
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowRgb565()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v3, v0, :cond_2

    const/4 v0, 0x1

    :goto_4
    move v7, v0

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    .line 50
    :goto_5
    new-instance v1, Lcoil/decode/Options;

    .line 51
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 54
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v5

    .line 55
    invoke-static {p1}, Lcoil/util/-Requests;->getAllowInexactSize(Lcoil/request/ImageRequest;)Z

    move-result v6

    .line 57
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v8

    .line 58
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v9

    .line 59
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object v10

    .line 60
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v11

    .line 61
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v12

    .line 50
    invoke-direct/range {v1 .. v13}, Lcoil/decode/Options;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Scale;ZZZLokhttp3/Headers;Lcoil/request/Parameters;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    return-object v1
.end method
