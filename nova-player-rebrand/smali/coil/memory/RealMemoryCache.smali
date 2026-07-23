.class public final Lcoil/memory/RealMemoryCache;
.super Ljava/lang/Object;
.source "RealMemoryCache.kt"

# interfaces
.implements Lcoil/memory/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RealMemoryCache$Value;
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final strongMemoryCache:Lcoil/memory/StrongMemoryCache;

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method public constructor <init>(Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/bitmap/BitmapPool;)V
    .locals 1

    const-string v0, "strongMemoryCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weakMemoryCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceCounter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapPool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcoil/memory/RealMemoryCache;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    .line 10
    iput-object p2, p0, Lcoil/memory/RealMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    .line 11
    iput-object p3, p0, Lcoil/memory/RealMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 12
    iput-object p4, p0, Lcoil/memory/RealMemoryCache;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcoil/memory/RealMemoryCache;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    invoke-interface {v0}, Lcoil/memory/StrongMemoryCache;->clearMemory()V

    .line 39
    iget-object v0, p0, Lcoil/memory/RealMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v0}, Lcoil/memory/WeakMemoryCache;->clearMemory()V

    return-void
.end method

.method public final getBitmapPool()Lcoil/bitmap/BitmapPool;
    .locals 1

    .line 12
    iget-object v0, p0, Lcoil/memory/RealMemoryCache;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-object v0
.end method

.method public final getReferenceCounter()Lcoil/bitmap/BitmapReferenceCounter;
    .locals 1

    .line 11
    iget-object v0, p0, Lcoil/memory/RealMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object v0
.end method

.method public final getStrongMemoryCache()Lcoil/memory/StrongMemoryCache;
    .locals 1

    .line 9
    iget-object v0, p0, Lcoil/memory/RealMemoryCache;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    return-object v0
.end method

.method public final getWeakMemoryCache()Lcoil/memory/WeakMemoryCache;
    .locals 1

    .line 10
    iget-object v0, p0, Lcoil/memory/RealMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    return-object v0
.end method
