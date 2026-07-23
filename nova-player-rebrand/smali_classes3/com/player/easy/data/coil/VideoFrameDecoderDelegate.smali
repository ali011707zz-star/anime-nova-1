.class public final Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;
.super Ljava/lang/Object;
.source "VideoFrameDecoderDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J \u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "paint",
        "Landroid/graphics/Paint;",
        "decode",
        "Lcoil/decode/DecodeResult;",
        "pool",
        "Lcoil/bitmap/BitmapPool;",
        "retriever",
        "Landroid/media/MediaMetadataRetriever;",
        "size",
        "Lcoil/size/Size;",
        "options",
        "Lcoil/decode/Options;",
        "normalizeBitmap",
        "Landroid/graphics/Bitmap;",
        "inBitmap",
        "isConfigValid",
        "",
        "bitmap",
        "isSizeValid",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVideoFrameDecoderDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoFrameDecoderDelegate.kt\ncom/player/easy/data/coil/VideoFrameDecoderDelegate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 4 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,181:1\n1#2:182\n27#3:183\n41#4,3:184\n*S KotlinDebug\n*F\n+ 1 VideoFrameDecoderDelegate.kt\ncom/player/easy/data/coil/VideoFrameDecoderDelegate\n*L\n113#1:183\n160#1:184,3\n*E\n"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->context:Landroid/content/Context;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private final isConfigValid(Landroid/graphics/Bitmap;Lcoil/decode/Options;)Z
    .locals 2

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {}, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticApiModelOutline2;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 172
    invoke-virtual {p2}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final isSizeValid(Landroid/graphics/Bitmap;Lcoil/decode/Options;Lcoil/size/Size;)Z
    .locals 1

    .line 176
    invoke-virtual {p2}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    instance-of v0, p3, Lcoil/size/OriginalSize;

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object p2

    invoke-static {v0, p1, p3, p2}, Lcoil/decode/DecodeUtils;->computePixelSize(IILcoil/size/Size;Lcoil/size/Scale;)Lcoil/size/PixelSize;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method private final normalizeBitmap(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/decode/Options;)Landroid/graphics/Bitmap;
    .locals 4

    .line 124
    invoke-direct {p0, p2, p4}, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->isConfigValid(Landroid/graphics/Bitmap;Lcoil/decode/Options;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p4, p3}, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->isSizeValid(Landroid/graphics/Bitmap;Lcoil/decode/Options;Lcoil/size/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 133
    :cond_0
    instance-of v0, p3, Lcoil/size/PixelSize;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 137
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 138
    check-cast p3, Lcoil/size/PixelSize;

    invoke-virtual {p3}, Lcoil/size/PixelSize;->getWidth()I

    move-result v2

    .line 139
    invoke-virtual {p3}, Lcoil/size/PixelSize;->getHeight()I

    move-result p3

    .line 140
    invoke-virtual {p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v3

    .line 135
    invoke-static {v0, v1, v2, p3, v3}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v0

    double-to-float p3, v0

    .line 143
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 144
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    goto :goto_0

    .line 146
    :cond_1
    instance-of p3, p3, Lcoil/size/OriginalSize;

    if-eqz p3, :cond_3

    .line 148
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 149
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 154
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    invoke-virtual {p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {}, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticApiModelOutline2;->m()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 155
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    .line 159
    :goto_1
    invoke-interface {p1, v0, v1, p4}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 184
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 162
    iget-object p3, p0, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    invoke-interface {p1, p2}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    return-object p4

    .line 132
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final decode(Lcoil/bitmap/BitmapPool;Landroid/media/MediaMetadataRetriever;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    const-string v4, "pool"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "retriever"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "size"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "options"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Lcoil/decode/Options;->getParameters()Lcoil/request/Parameters;

    move-result-object v4

    invoke-static {v4}, Lcoil/request/Videos;->videoFrameOption(Lcoil/request/Parameters;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    .line 33
    :goto_1
    invoke-virtual {v8}, Lcoil/decode/Options;->getParameters()Lcoil/request/Parameters;

    move-result-object v4

    invoke-static {v4}, Lcoil/request/Videos;->videoFrameMicros(Lcoil/request/Parameters;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_1
    const-wide/16 v6, 0x0

    .line 41
    :goto_2
    instance-of v4, v3, Lcoil/size/PixelSize;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x0

    if-eqz v4, :cond_9

    const/16 v4, 0x18

    .line 44
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 45
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_2
    move v4, v11

    :goto_3
    const/16 v12, 0x5a

    const/16 v13, 0x13

    const/16 v14, 0x12

    if-eq v4, v12, :cond_4

    const/16 v12, 0x10e

    if-eq v4, v12, :cond_4

    .line 55
    invoke-virtual {v2, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 56
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4

    :cond_3
    move v4, v11

    .line 57
    :goto_4
    invoke-virtual {v2, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-static {v12}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_6

    .line 47
    :cond_4
    invoke-virtual {v2, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_5

    :cond_5
    move v4, v11

    .line 50
    :goto_5
    invoke-virtual {v2, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 51
    invoke-static {v12}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 49
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_6

    :cond_6
    move v12, v11

    :goto_6
    if-lez v4, :cond_8

    if-lez v12, :cond_8

    .line 65
    check-cast v3, Lcoil/size/PixelSize;

    invoke-virtual {v3}, Lcoil/size/PixelSize;->getWidth()I

    move-result v13

    .line 66
    invoke-virtual {v3}, Lcoil/size/PixelSize;->getHeight()I

    move-result v3

    .line 67
    invoke-virtual {v8}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v14

    .line 62
    invoke-static {v4, v12, v13, v3, v14}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v13

    .line 69
    invoke-virtual {v8}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v13, v14, v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v13

    :cond_7
    move-wide v15, v9

    int-to-double v9, v4

    mul-double/2addr v9, v13

    .line 70
    invoke-static {v9, v10}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v3

    int-to-double v9, v12

    mul-double/2addr v13, v9

    .line 71
    invoke-static {v13, v14}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v9

    .line 72
    new-instance v10, Lcoil/size/PixelSize;

    invoke-direct {v10, v3, v9}, Lcoil/size/PixelSize;-><init>(II)V

    :goto_7
    move v9, v4

    goto :goto_8

    :cond_8
    move-wide v15, v9

    .line 77
    sget-object v10, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    goto :goto_7

    :cond_9
    move-wide v15, v9

    .line 80
    instance-of v3, v3, Lcoil/size/OriginalSize;

    if-eqz v3, :cond_f

    sget-object v10, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    move v9, v11

    move v12, v9

    .line 84
    :goto_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_a

    instance-of v3, v10, Lcoil/size/PixelSize;

    if-eqz v3, :cond_a

    .line 85
    move-object v3, v10

    check-cast v3, Lcoil/size/PixelSize;

    move-wide/from16 v17, v6

    move-object v7, v3

    move-wide/from16 v3, v17

    invoke-virtual {v7}, Lcoil/size/PixelSize;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Lcoil/size/PixelSize;->getHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcoil/decode/VideoFrameDecoderDelegate$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_9

    :cond_a
    move-wide v3, v6

    .line 87
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 88
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 89
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_e

    .line 97
    invoke-direct {v0, v1, v2, v10, v8}, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->normalizeBitmap(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/decode/Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-lez v9, :cond_c

    if-lez v12, :cond_c

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 106
    invoke-virtual {v8}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v4

    .line 101
    invoke-static {v9, v12, v2, v3, v4}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v2

    cmpg-double v2, v2, v15

    if-gez v2, :cond_d

    :cond_c
    const/4 v11, 0x1

    .line 113
    :cond_d
    new-instance v2, Lcoil/decode/DecodeResult;

    iget-object v3, v0, Lcom/player/easy/data/coil/VideoFrameDecoderDelegate;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "getResources(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 113
    invoke-direct {v2, v4, v11}, Lcoil/decode/DecodeResult;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object v2

    .line 95
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode frame at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " microseconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_f
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
