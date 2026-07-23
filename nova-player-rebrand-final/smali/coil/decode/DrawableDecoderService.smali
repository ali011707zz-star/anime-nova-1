.class public final Lcoil/decode/DrawableDecoderService;
.super Ljava/lang/Object;
.source "DrawableDecoderService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/DrawableDecoderService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/decode/DrawableDecoderService$Companion;


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/decode/DrawableDecoderService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/decode/DrawableDecoderService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/decode/DrawableDecoderService;->Companion:Lcoil/decode/DrawableDecoderService$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/bitmap/BitmapPool;)V
    .locals 1

    const-string v0, "bitmapPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/decode/DrawableDecoderService;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-void
.end method

.method private final isConfigValid(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {p2}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isSizeValid(ZLcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/size/Scale;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 68
    instance-of p1, p2, Lcoil/size/OriginalSize;

    if-nez p1, :cond_1

    .line 69
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p1, p3, p2, p4}, Lcoil/decode/DecodeUtils;->computePixelSize(IILcoil/size/Size;Lcoil/size/Scale;)Lcoil/size/PixelSize;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    const-string v1, "bitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcoil/decode/DrawableDecoderService;->isConfigValid(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p5, p3, v0, p4}, Lcoil/decode/DrawableDecoderService;->isSizeValid(ZLcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/size/Scale;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p5, "drawable.mutate()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcoil/util/-Extensions;->getWidth(Landroid/graphics/drawable/Drawable;)I

    move-result p5

    const/16 v0, 0x200

    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    move p5, v0

    .line 49
    :goto_0
    invoke-static {p1}, Lcoil/util/-Extensions;->getHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-lez v1, :cond_2

    move v0, v1

    .line 50
    :cond_2
    invoke-static {p5, v0, p3, p4}, Lcoil/decode/DecodeUtils;->computePixelSize(IILcoil/size/Size;Lcoil/size/Scale;)Lcoil/size/PixelSize;

    move-result-object p3

    invoke-virtual {p3}, Lcoil/size/PixelSize;->component1()I

    move-result p4

    invoke-virtual {p3}, Lcoil/size/PixelSize;->component2()I

    move-result p3

    .line 52
    iget-object p5, p0, Lcoil/decode/DrawableDecoderService;->bitmapPool:Lcoil/bitmap/BitmapPool;

    invoke-static {p2}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-interface {p5, p4, p3, p2}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    const-string v0, "bounds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget v0, p5, Landroid/graphics/Rect;->left:I

    .line 79
    iget v1, p5, Landroid/graphics/Rect;->top:I

    .line 80
    iget v2, p5, Landroid/graphics/Rect;->right:I

    .line 81
    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p1, v3, v3, p4, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1, v0, v1, v2, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p2
.end method
