.class public final Lcoil/memory/RealWeakMemoryCache;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"

# interfaces
.implements Lcoil/memory/WeakMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RealWeakMemoryCache$WeakValue;,
        Lcoil/memory/RealWeakMemoryCache$StrongValue;,
        Lcoil/memory/RealWeakMemoryCache$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/memory/RealWeakMemoryCache$Companion;


# instance fields
.field private final cache:Ljava/util/HashMap;

.field private operationsSinceCleanUp:I


# direct methods
.method public static synthetic $r8$lambda$JI9HyDHTy5OolzMWIDEMvwljk2M(Lcoil/memory/RealWeakMemoryCache$WeakValue;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$lambda-8(Lcoil/memory/RealWeakMemoryCache$WeakValue;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/memory/RealWeakMemoryCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RealWeakMemoryCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RealWeakMemoryCache;->Companion:Lcoil/memory/RealWeakMemoryCache$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/util/Logger;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    return-void
.end method

.method private static final cleanUp$lambda-8(Lcoil/memory/RealWeakMemoryCache$WeakValue;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final cleanUpIfNecessary()V
    .locals 2

    .line 150
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cleanUp$coil_base_release()V
    .locals 8

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    .line 161
    iget-object v1, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "iterator.next()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    .line 165
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 167
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_1
    if-nez v2, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 172
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    .line 173
    new-instance v3, Lcoil/memory/RealWeakMemoryCache$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcoil/memory/RealWeakMemoryCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto :goto_3

    .line 76
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6

    move v4, v0

    move v5, v4

    :goto_2
    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v4, v5

    .line 78
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 80
    check-cast v7, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    .line 175
    invoke-virtual {v7}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    .line 81
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    :cond_4
    if-le v6, v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    goto :goto_2

    .line 178
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public declared-synchronized clearMemory()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 136
    :try_start_0
    iput v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    .line 137
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
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
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    .line 74
    invoke-virtual {v2}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    new-instance v5, Lcoil/memory/RealWeakMemoryCache$StrongValue;

    invoke-virtual {v2}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->isSampled()Z

    move-result v2

    invoke-direct {v5, v4, v2}, Lcoil/memory/RealWeakMemoryCache$StrongValue;-><init>(Landroid/graphics/Bitmap;Z)V

    :goto_1
    if-nez v5, :cond_3

    if-le v3, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move-object v0, v5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getCache$coil_base_release()Ljava/util/HashMap;
    .locals 1

    .line 65
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method public declared-synchronized remove(Landroid/graphics/Bitmap;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 117
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->getCache$coil_base_release()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "cache.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    invoke-virtual {v5}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getIdentityHashCode()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    if-le v4, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 128
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return v2

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    .line 209
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 83
    :cond_0
    :goto_0
    check-cast v1, Ljava/util/ArrayList;

    .line 150
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 88
    new-instance v0, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v2, p3, p4}, Lcoil/memory/RealWeakMemoryCache$WeakValue;-><init>(ILjava/lang/ref/WeakReference;ZI)V

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_4

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "values[index]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    .line 91
    invoke-virtual {v4}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getSize()I

    move-result v5

    if-lt p4, v5, :cond_2

    .line 92
    invoke-virtual {v4}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getIdentityHashCode()I

    move-result p3

    if-ne p3, p1, :cond_1

    invoke-virtual {v4}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_1

    .line 93
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 95
    :cond_1
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-le v3, p3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 100
    :cond_4
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_3
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
