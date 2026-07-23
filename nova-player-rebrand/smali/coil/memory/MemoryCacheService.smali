.class public final Lcoil/memory/MemoryCacheService;
.super Ljava/lang/Object;
.source "MemoryCacheService.kt"


# instance fields
.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final strongMemoryCache:Lcoil/memory/StrongMemoryCache;

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method public constructor <init>(Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;)V
    .locals 1

    const-string v0, "referenceCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strongMemoryCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weakMemoryCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcoil/memory/MemoryCacheService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 7
    iput-object p2, p0, Lcoil/memory/MemoryCacheService;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    .line 8
    iput-object p3, p0, Lcoil/memory/MemoryCacheService;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    return-void
.end method


# virtual methods
.method public final get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcoil/memory/MemoryCacheService;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    invoke-interface {v0, p1}, Lcoil/memory/StrongMemoryCache;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcoil/memory/MemoryCacheService;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v0, p1}, Lcoil/memory/WeakMemoryCache;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 14
    iget-object p1, p0, Lcoil/memory/MemoryCacheService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {v0}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->increment(Landroid/graphics/Bitmap;)V

    :cond_2
    return-object v0
.end method
