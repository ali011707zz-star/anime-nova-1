.class final Lcoil/memory/RealStrongMemoryCache$InternalValue;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"

# interfaces
.implements Lcoil/memory/RealMemoryCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/RealStrongMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalValue"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final isSampled:Z

.field private final size:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZI)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->bitmap:Landroid/graphics/Bitmap;

    .line 170
    iput-boolean p2, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->isSampled:Z

    .line 171
    iput p3, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->size:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 169
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 171
    iget v0, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->size:I

    return v0
.end method

.method public isSampled()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->isSampled:Z

    return v0
.end method
