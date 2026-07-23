.class public final Lcoil/memory/RealWeakMemoryCache$WeakValue;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/RealWeakMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeakValue"
.end annotation


# instance fields
.field private final bitmap:Ljava/lang/ref/WeakReference;

.field private final identityHashCode:I

.field private final isSampled:Z

.field private final size:I


# direct methods
.method public constructor <init>(ILjava/lang/ref/WeakReference;ZI)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->identityHashCode:I

    .line 188
    iput-object p2, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->bitmap:Ljava/lang/ref/WeakReference;

    .line 189
    iput-boolean p3, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->isSampled:Z

    .line 190
    iput p4, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->size:I

    return-void
.end method


# virtual methods
.method public final getBitmap()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 188
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->bitmap:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getIdentityHashCode()I
    .locals 1

    .line 187
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->identityHashCode:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 190
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->size:I

    return v0
.end method

.method public final isSampled()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->isSampled:Z

    return v0
.end method
