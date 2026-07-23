.class public final Lcoil/bitmap/RealBitmapReferenceCounter;
.super Ljava/lang/Object;
.source "BitmapReferenceCounter.kt"

# interfaces
.implements Lcoil/bitmap/BitmapReferenceCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/RealBitmapReferenceCounter$Value;,
        Lcoil/bitmap/RealBitmapReferenceCounter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/bitmap/RealBitmapReferenceCounter$Companion;

.field private static final MAIN_HANDLER:Landroid/os/Handler;


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private operationsSinceCleanUp:I

.field private final values:Landroidx/collection/SparseArrayCompat;

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method public static synthetic $r8$lambda$T-fjVoHwIQHdJBQpePCgCvWQb0Q(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->decrement$lambda-4(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/bitmap/RealBitmapReferenceCounter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/bitmap/RealBitmapReferenceCounter;->Companion:Lcoil/bitmap/RealBitmapReferenceCounter$Companion;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcoil/bitmap/RealBitmapReferenceCounter;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapPool;Lcoil/util/Logger;)V
    .locals 0

    const-string p3, "weakMemoryCache"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "bitmapPool"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    .line 58
    iput-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->bitmapPool:Lcoil/bitmap/BitmapPool;

    .line 62
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private final cleanUpIfNecessary()V
    .locals 2

    .line 114
    iget v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->operationsSinceCleanUp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->operationsSinceCleanUp:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUp$coil_base_release()V

    :cond_0
    return-void
.end method

.method private static final decrement$lambda-4(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->bitmapPool:Lcoil/bitmap/BitmapPool;

    invoke-interface {p0, p1}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final getValue(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;
    .locals 2

    .line 134
    invoke-direct {p0, p1, p2}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-direct {v0, v1, p2, p2}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;-><init>(Ljava/lang/ref/WeakReference;IZ)V

    .line 137
    iget-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    .line 181
    invoke-virtual {p2, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private final getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;
    .locals 2

    .line 143
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final cleanUp$coil_base_release()V
    .locals 6

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    .line 22
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 123
    iget-object v5, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    .line 124
    invoke-virtual {v5}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lt v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    .line 130
    :cond_2
    :goto_1
    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    :goto_2
    add-int/lit8 v4, v2, 0x1

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 130
    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    if-le v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public declared-synchronized decrement(Landroid/graphics/Bitmap;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 77
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 79
    monitor-exit p0

    return v2

    .line 81
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->setCount(I)V

    .line 86
    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 88
    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 89
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v0, p1}, Lcoil/memory/WeakMemoryCache;->remove(Landroid/graphics/Bitmap;)Z

    .line 91
    sget-object v0, Lcoil/bitmap/RealBitmapReferenceCounter;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;-><init>(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :cond_2
    invoke-direct {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUpIfNecessary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized increment(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 68
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValue(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->setCount(I)V

    .line 71
    invoke-direct {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setValid(Landroid/graphics/Bitmap;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object p2

    if-nez p2, :cond_1

    .line 104
    iget-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    new-instance v2, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v2, v3, v1, p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;-><init>(Ljava/lang/ref/WeakReference;IZ)V

    .line 175
    invoke-virtual {p2, v0, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 107
    :cond_0
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValue(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->setValid(Z)V

    .line 110
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
