.class final Lcoil/memory/RealWeakMemoryCache$StrongValue;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"

# interfaces
.implements Lcoil/memory/RealMemoryCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/RealWeakMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrongValue"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final isSampled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcoil/memory/RealWeakMemoryCache$StrongValue;->bitmap:Landroid/graphics/Bitmap;

    .line 195
    iput-boolean p2, p0, Lcoil/memory/RealWeakMemoryCache$StrongValue;->isSampled:Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 194
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache$StrongValue;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isSampled()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcoil/memory/RealWeakMemoryCache$StrongValue;->isSampled:Z

    return v0
.end method
