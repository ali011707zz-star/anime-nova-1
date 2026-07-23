.class public final Lcoil/decode/BitmapFactoryDecoder;
.super Ljava/lang/Object;
.source "BitmapFactoryDecoder.kt"

# interfaces
.implements Lcoil/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;,
        Lcoil/decode/BitmapFactoryDecoder$ExifInterfaceInputStream;,
        Lcoil/decode/BitmapFactoryDecoder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/decode/BitmapFactoryDecoder$Companion;

.field private static final SUPPORTED_EXIF_MIME_TYPES:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcoil/decode/BitmapFactoryDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/decode/BitmapFactoryDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/decode/BitmapFactoryDecoder;->Companion:Lcoil/decode/BitmapFactoryDecoder$Companion;

    .line 327
    const-string v0, "image/heic"

    const-string v1, "image/heif"

    const-string v2, "image/jpeg"

    const-string v3, "image/webp"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcoil/decode/BitmapFactoryDecoder;->SUPPORTED_EXIF_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder;->context:Landroid/content/Context;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$decodeInterruptible(Lcoil/decode/BitmapFactoryDecoder;Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/decode/BitmapFactoryDecoder;->decodeInterruptible(Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;

    move-result-object p0

    return-object p0
.end method

.method private final applyExifTransformations(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;ZI)Landroid/graphics/Bitmap;
    .locals 5

    if-lez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p4, :cond_1

    if-nez v0, :cond_1

    return-object p2

    .line 247
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 248
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 249
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    if-eqz p4, :cond_2

    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 251
    invoke-virtual {v1, p4, v3, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    if-eqz v0, :cond_3

    int-to-float p4, p5

    .line 254
    invoke-virtual {v1, p4, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 257
    :cond_3
    new-instance p4, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p4, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 258
    invoke-virtual {v1, p4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 259
    iget v0, p4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v3

    if-nez v2, :cond_4

    iget v2, p4, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    neg-float v0, v0

    .line 260
    iget p4, p4, Landroid/graphics/RectF;->top:F

    neg-float p4, p4

    invoke-virtual {v1, v0, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    const/16 p4, 0x5a

    if-eq p5, p4, :cond_5

    const/16 p4, 0x10e

    if-eq p5, p4, :cond_5

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    invoke-interface {p1, p4, p5, p3}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_2

    .line 264
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-interface {p1, p4, p5, p3}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 42
    :goto_2
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object p5, p0, Lcoil/decode/BitmapFactoryDecoder;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 272
    invoke-interface {p1, p2}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method private final computeConfig(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/Options;ZI)Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 212
    invoke-virtual {p2}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez p3, :cond_0

    if-lez p4, :cond_1

    .line 216
    :cond_0
    invoke-static {v0}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 221
    :cond_1
    invoke-virtual {p2}, Lcoil/decode/Options;->getAllowRgb565()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, p2, :cond_2

    iget-object p2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string p3, "image/jpeg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 222
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 226
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_3

    invoke-static {p1}, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {}, Lcoil/bitmap/RealBitmapPool$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    if-ne p1, p2, :cond_3

    invoke-static {}, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticApiModelOutline2;->m()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-eq v0, p1, :cond_3

    .line 227
    invoke-static {}, Lcoil/bitmap/RealBitmapPool$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method private final decodeInterruptible(Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 47
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 48
    new-instance v3, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;-><init>(Lokio/Source;)V

    .line 49
    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    const/4 v8, 0x1

    .line 52
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    invoke-interface {v4}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object v5

    invoke-interface {v5}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v3}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v5

    if-nez v5, :cond_18

    const/4 v9, 0x0

    .line 55
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    iget-object v5, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcoil/decode/BitmapFactoryDecoder;->shouldReadExifData(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    new-instance v5, Landroidx/exifinterface/media/ExifInterface;

    new-instance v10, Lcoil/decode/BitmapFactoryDecoder$ExifInterfaceInputStream;

    invoke-interface {v4}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object v11

    invoke-interface {v11}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Lcoil/decode/BitmapFactoryDecoder$ExifInterfaceInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 62
    invoke-virtual {v3}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v10

    if-nez v10, :cond_0

    .line 63
    invoke-virtual {v5}, Landroidx/exifinterface/media/ExifInterface;->isFlipped()Z

    move-result v10

    .line 64
    invoke-virtual {v5}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v5

    goto :goto_0

    .line 62
    :cond_0
    throw v10

    :cond_1
    move v5, v9

    move v10, v5

    :goto_0
    const/16 v11, 0x5a

    if-eq v5, v11, :cond_3

    const/16 v11, 0x10e

    if-ne v5, v11, :cond_2

    goto :goto_1

    :cond_2
    move v11, v9

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v8

    :goto_2
    if-eqz v11, :cond_4

    .line 72
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_3

    :cond_4
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_3
    if-eqz v11, :cond_5

    .line 73
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_4
    move-object/from16 v13, p4

    goto :goto_5

    :cond_5
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_4

    .line 75
    :goto_5
    invoke-direct {v1, v7, v13, v10, v5}, Lcoil/decode/BitmapFactoryDecoder;->computeConfig(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/Options;ZI)Landroid/graphics/Bitmap$Config;

    move-result-object v14

    iput-object v14, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 77
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-lt v14, v15, :cond_6

    invoke-virtual {v13}, Lcoil/decode/Options;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 78
    invoke-virtual {v13}, Lcoil/decode/Options;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v15

    invoke-static {v7, v15}, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 82
    :cond_6
    invoke-virtual {v13}, Lcoil/decode/Options;->getPremultipliedAlpha()Z

    move-result v15

    iput-boolean v15, v7, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    const/16 v15, 0x18

    if-ge v14, v15, :cond_7

    move v14, v8

    goto :goto_6

    :cond_7
    move v14, v9

    .line 86
    :goto_6
    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 87
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 90
    iget v15, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v6, "inPreferredConfig"

    if-lez v15, :cond_8

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v9, :cond_9

    :cond_8
    move v15, v8

    goto/16 :goto_b

    .line 96
    :cond_9
    instance-of v1, v0, Lcoil/size/PixelSize;

    if-nez v1, :cond_b

    .line 98
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v14, :cond_a

    .line 102
    iget-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v15, v9, v0}, Lcoil/bitmap/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_a
    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto/16 :goto_c

    .line 106
    :cond_b
    check-cast v0, Lcoil/size/PixelSize;

    invoke-virtual {v0}, Lcoil/size/PixelSize;->component1()I

    move-result v1

    invoke-virtual {v0}, Lcoil/size/PixelSize;->component2()I

    move-result v0

    .line 107
    invoke-virtual {v13}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v9

    invoke-static {v12, v11, v1, v0, v9}, Lcoil/decode/DecodeUtils;->calculateInSampleSize(IIIILcoil/size/Scale;)I

    move-result v9

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v14, v12

    int-to-double v12, v9

    div-double v16, v14, v12

    int-to-double v11, v11

    int-to-double v13, v9

    div-double v18, v11, v13

    int-to-double v11, v1

    int-to-double v0, v0

    .line 115
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v24

    move-wide/from16 v22, v0

    move-wide/from16 v20, v11

    .line 110
    invoke-static/range {v16 .. v24}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(DDDDLcoil/size/Scale;)D

    move-result-wide v0

    .line 119
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-eqz v9, :cond_c

    invoke-static {v0, v1, v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v0

    :cond_c
    cmpg-double v9, v0, v11

    if-nez v9, :cond_d

    move v9, v8

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    xor-int/lit8 v13, v9, 0x1

    .line 121
    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v9, :cond_f

    cmpl-double v9, v0, v11

    const v11, 0x7fffffff

    if-lez v9, :cond_e

    int-to-double v12, v11

    div-double/2addr v12, v0

    .line 125
    invoke-static {v12, v13}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v9

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 126
    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    goto :goto_9

    .line 129
    :cond_e
    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-double v11, v11

    mul-double/2addr v11, v0

    .line 130
    invoke-static {v11, v12}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v9

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 134
    :cond_f
    :goto_9
    iget-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v9, :cond_a

    .line 137
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v9, v8, :cond_10

    iget-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v11, :cond_10

    .line 138
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v9, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1, v9}, Lcoil/bitmap/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    .line 145
    :cond_10
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v11, v11

    int-to-double v13, v9

    div-double/2addr v11, v13

    .line 146
    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v13, v13

    int-to-double v8, v9

    div-double/2addr v13, v8

    mul-double/2addr v11, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v8

    .line 148
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    mul-double/2addr v0, v13

    add-double/2addr v0, v8

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 150
    iget-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-interface {v2, v11, v0, v1}, Lcoil/bitmap/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    :goto_a
    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    .line 92
    :goto_b
    iput v15, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 162
    :goto_c
    iget-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 173
    :try_start_0
    invoke-interface {v4}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 167
    :try_start_1
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 176
    :try_start_2
    invoke-virtual {v3}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_14

    if-eqz v9, :cond_13

    .line 190
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v9, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 193
    iget-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move v6, v5

    move-object v3, v9

    move v5, v10

    invoke-direct/range {v1 .. v6}, Lcoil/decode/BitmapFactoryDecoder;->applyExifTransformations(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v1

    .line 195
    new-instance v1, Lcoil/decode/DecodeResult;

    .line 196
    iget-object v4, v3, Lcoil/decode/BitmapFactoryDecoder;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "context.resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 197
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-gt v2, v15, :cond_12

    iget-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v2, :cond_11

    goto :goto_d

    :cond_11
    move v8, v0

    goto :goto_e

    :cond_12
    :goto_d
    move v8, v15

    .line 195
    :goto_e
    invoke-direct {v1, v5, v8}, Lcoil/decode/DecodeResult;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object v1

    :cond_13
    move-object/from16 v3, p0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v3, p0

    move-object v6, v9

    .line 176
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    move-object v6, v9

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_f
    move-object v6, v1

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v3, p0

    move-object v5, v0

    .line 167
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_5
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_f

    :goto_10
    if-nez v8, :cond_15

    goto :goto_11

    .line 178
    :cond_15
    invoke-interface {v2, v8}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    :goto_11
    if-eq v6, v8, :cond_17

    if-nez v6, :cond_16

    goto :goto_12

    .line 180
    :cond_16
    invoke-interface {v2, v6}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_17
    :goto_12
    throw v0

    :cond_18
    move-object v3, v1

    .line 54
    throw v5
.end method

.method private final shouldReadExifData(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    sget-object v0, Lcoil/decode/BitmapFactoryDecoder;->SUPPORTED_EXIF_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public decode(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 333
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 339
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 29
    :try_start_0
    new-instance v1, Lcoil/decode/InterruptibleSource;

    invoke-direct {v1, v0, p2}, Lcoil/decode/InterruptibleSource;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lokio/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {p0, p1, v1, p3, p4}, Lcoil/decode/BitmapFactoryDecoder;->access$decodeInterruptible(Lcoil/decode/BitmapFactoryDecoder;Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v1}, Lcoil/decode/InterruptibleSource;->clearInterrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 357
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 332
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 33
    :try_start_3
    invoke-virtual {v1}, Lcoil/decode/InterruptibleSource;->clearInterrupt()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 37
    :goto_0
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    throw p1

    .line 38
    :cond_2
    :goto_1
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string p3, "Blocking call was interrupted due to parent cancellation."

    invoke-direct {p2, p3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "CancellationException(\"Blocking call was interrupted due to parent cancellation.\").initCause(exception)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public handles(Lokio/BufferedSource;Ljava/lang/String;)Z
    .locals 0

    .line 0
    const-string p2, "source"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
