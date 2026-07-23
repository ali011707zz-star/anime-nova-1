.class public abstract Lcom/facebook/ads/redexgen/X/YN;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 74046
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 74047
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 74048
    move-object v2, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 74049
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 74050
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 p0, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;
    .locals 2

    .line 74051
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 74052
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YM;->A01(F)Ljava/lang/String;

    move-result-object v0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 74053
    .local v0, "decodedImage":[B
    array-length v0, v1

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;
    .locals 2

    .line 74054
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 74055
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YM;->A01(F)Ljava/lang/String;

    move-result-object v0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 74056
    .local v0, "decodedImage":[B
    array-length v0, v1

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A00(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 74057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
