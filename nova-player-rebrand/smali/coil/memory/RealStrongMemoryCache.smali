.class final Lcoil/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"

# interfaces
.implements Lcoil/memory/StrongMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RealStrongMemoryCache$InternalValue;,
        Lcoil/memory/RealStrongMemoryCache$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/memory/RealStrongMemoryCache$Companion;


# instance fields
.field private final cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/memory/RealStrongMemoryCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RealStrongMemoryCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RealStrongMemoryCache;->Companion:Lcoil/memory/RealStrongMemoryCache$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)V
    .locals 0

    const-string p4, "weakMemoryCache"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "referenceCounter"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    .line 100
    iput-object p2, p0, Lcoil/memory/RealStrongMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 105
    new-instance p1, Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-direct {p1, p0, p3}, Lcoil/memory/RealStrongMemoryCache$cache$1;-><init>(Lcoil/memory/RealStrongMemoryCache;I)V

    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    return-void
.end method

.method public static final synthetic access$getReferenceCounter$p(Lcoil/memory/RealStrongMemoryCache;)Lcoil/bitmap/BitmapReferenceCounter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcoil/memory/RealStrongMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object p0
.end method

.method public static final synthetic access$getWeakMemoryCache$p(Lcoil/memory/RealStrongMemoryCache;)Lcoil/memory/WeakMemoryCache;
    .locals 0

    .line 98
    iget-object p0, p0, Lcoil/memory/RealStrongMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized clearMemory()V
    .locals 2

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil/memory/RealMemoryCache$Value;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getMaxSize()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->maxSize()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p2}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcoil/memory/RealStrongMemoryCache;->getMaxSize()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v1, p1, p2, p3, v0}, Lcoil/memory/WeakMemoryCache;->set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {v1, p2}, Lcoil/bitmap/BitmapReferenceCounter;->increment(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    new-instance v2, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    invoke-direct {v2, p2, p3, v0}, Lcoil/memory/RealStrongMemoryCache$InternalValue;-><init>(Landroid/graphics/Bitmap;ZI)V

    invoke-virtual {v1, p1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcoil/memory/RealStrongMemoryCache;->clearMemory()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-gt v0, p1, :cond_1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 164
    iget-object p1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {p0}, Lcoil/memory/RealStrongMemoryCache;->getSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    goto :goto_1

    .line 166
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
