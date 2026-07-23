.class public final Lcoil/bitmap/SizeStrategy;
.super Ljava/lang/Object;
.source "BitmapPoolStrategy.kt"

# interfaces
.implements Lcoil/bitmap/BitmapPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/SizeStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/bitmap/SizeStrategy$Companion;


# instance fields
.field private final entries:Lcoil/collection/LinkedMultimap;

.field private final sizes:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/bitmap/SizeStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/bitmap/SizeStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/bitmap/SizeStrategy;->Companion:Lcoil/bitmap/SizeStrategy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcoil/collection/LinkedMultimap;

    invoke-direct {v0}, Lcoil/collection/LinkedMultimap;-><init>()V

    iput-object v0, p0, Lcoil/bitmap/SizeStrategy;->entries:Lcoil/collection/LinkedMultimap;

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    return-void
.end method

.method private final decrementSize(I)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {v0, p1, p2, p3}, Lcoil/util/Utils;->calculateAllocationByteCount(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 61
    iget-object v1, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    :goto_1
    iget-object v1, p0, Lcoil/bitmap/SizeStrategy;->entries:Lcoil/collection/LinkedMultimap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcoil/collection/LinkedMultimap;->removeLast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 66
    invoke-direct {p0, v0}, Lcoil/bitmap/SizeStrategy;->decrementSize(I)V

    .line 67
    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_3
    return-object v1
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcoil/bitmap/SizeStrategy;->entries:Lcoil/collection/LinkedMultimap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcoil/collection/LinkedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 54
    iget-object v1, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 2

    .line 73
    iget-object v0, p0, Lcoil/bitmap/SizeStrategy;->entries:Lcoil/collection/LinkedMultimap;

    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcoil/bitmap/SizeStrategy;->decrementSize(I)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeStrategy: entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/bitmap/SizeStrategy;->entries:Lcoil/collection/LinkedMultimap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/bitmap/SizeStrategy;->sizes:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
