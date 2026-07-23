.class public final Lcoil/bitmap/RealBitmapPool;
.super Ljava/lang/Object;
.source "RealBitmapPool.kt"

# interfaces
.implements Lcoil/bitmap/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/RealBitmapPool$Companion;
    }
.end annotation


# static fields
.field private static final ALLOWED_CONFIGS:Ljava/util/Set;

.field public static final Companion:Lcoil/bitmap/RealBitmapPool$Companion;


# instance fields
.field private final allowedConfigs:Ljava/util/Set;

.field private final bitmaps:Ljava/util/HashSet;

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Lcoil/bitmap/BitmapPoolStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcoil/bitmap/RealBitmapPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/bitmap/RealBitmapPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/bitmap/RealBitmapPool;->Companion:Lcoil/bitmap/RealBitmapPool$Companion;

    .line 169
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 170
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcoil/bitmap/RealBitmapPool$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcoil/bitmap/RealBitmapPool;->ALLOWED_CONFIGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;)V
    .locals 0

    const-string p4, "allowedConfigs"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "strategy"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    .line 27
    iput-object p2, p0, Lcoil/bitmap/RealBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 28
    iput-object p3, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    .line 32
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize must be >= 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 27
    sget-object p2, Lcoil/bitmap/RealBitmapPool;->ALLOWED_CONFIGS:Ljava/util/Set;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 28
    sget-object p3, Lcoil/bitmap/BitmapPoolStrategy;->Companion:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    invoke-virtual {p3}, Lcoil/bitmap/BitmapPoolStrategy$Companion;->invoke()Lcoil/bitmap/BitmapPoolStrategy;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/bitmap/RealBitmapPool;-><init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;)V

    return-void
.end method

.method private final normalize(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    return-void
.end method

.method private final declared-synchronized trimToSize(I)V
    .locals 3

    monitor-enter p0

    .line 141
    :goto_0
    :try_start_0
    iget v0, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    if-le v0, p1, :cond_1

    .line 142
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v0}, Lcoil/bitmap/BitmapPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 145
    iput p1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 150
    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    invoke-static {v0}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    .line 151
    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcoil/bitmap/RealBitmapPool;->evictions:I

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final clearMemory()V
    .locals 1

    const/4 v0, -0x1

    .line 119
    invoke-direct {p0, v0}, Lcoil/bitmap/RealBitmapPool;->trimToSize(I)V

    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/RealBitmapPool;->getOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(width, height, config)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/RealBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(width, height, config)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p3}, Lcoil/util/-Bitmaps;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcoil/bitmap/BitmapPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 102
    iget p2, p0, Lcoil/bitmap/RealBitmapPool;->misses:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcoil/bitmap/RealBitmapPool;->misses:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 104
    :cond_0
    iget-object p2, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 105
    iget p2, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    invoke-static {p1}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    .line 106
    iget p2, p0, Lcoil/bitmap/RealBitmapPool;->hits:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcoil/bitmap/RealBitmapPool;->hits:I

    .line 107
    invoke-direct {p0, p1}, Lcoil/bitmap/RealBitmapPool;->normalize(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-object p1

    .line 97
    :cond_1
    :try_start_1
    const-string p1, "Cannot create a mutable hardware bitmap."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 112
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/RealBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p1
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 69
    monitor-exit p0

    return-void

    .line 72
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v1, p1}, Lcoil/bitmap/BitmapPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 74
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    .line 76
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->puts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcoil/bitmap/RealBitmapPool;->puts:I

    .line 80
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    invoke-direct {p0, p1}, Lcoil/bitmap/RealBitmapPool;->trimToSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcoil/bitmap/RealBitmapPool;->clearMemory()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-gt v0, p1, :cond_1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 128
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcoil/bitmap/RealBitmapPool;->trimToSize(I)V

    goto :goto_1

    .line 130
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method
