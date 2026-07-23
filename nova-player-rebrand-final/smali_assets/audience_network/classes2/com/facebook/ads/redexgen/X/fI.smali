.class public final Lcom/facebook/ads/redexgen/X/fI;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Z

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Landroid/graphics/Path;

.field public final A05:Landroid/graphics/Path;

.field public final A06:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2807
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xcAgjuPXjiWMB1ssCuSZa5J"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MDq9KSsWLWIXMrqq85Bb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5uEVnqsabDRdJRQ85jW9NMB9i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gm0LtQz6WhkHdj5wX4JbuGG7BvRjVm91"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l1YawQMaGwDZUwnW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7ZUqugjvimlTMP6MGoSM1hJ8SS3JK7y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GCEj76jN8N56F9CXfv91ddVngBp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DhtSUABtfeQAzaNHynIAsSOoxymmsGBP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fI;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fI;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 82228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/fI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V

    .line 82229
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Z)V
    .locals 4

    .line 82230
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 82231
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/fI;->A02:Z

    .line 82232
    const/4 v2, 0x5

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fI;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A01:Ljava/lang/String;

    .line 82233
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fI;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A00:Ljava/lang/String;

    .line 82234
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    .line 82235
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    .line 82236
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    .line 82237
    new-instance v0, Lcom/facebook/ads/redexgen/X/fH;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/fH;-><init>(Lcom/facebook/ads/redexgen/X/fI;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A03:Landroid/graphics/Paint;

    .line 82238
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fI;->A01()V

    .line 82239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fI;->setClickable(Z)V

    .line 82240
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 82241
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/fI;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/fI;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/fI;->A08:[Ljava/lang/String;

    const-string v1, "l8iwcelfQsHaFWcAi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 1

    .line 82242
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A02:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A01:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fI;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82243
    return-void

    .line 82244
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A00:Ljava/lang/String;

    goto :goto_0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fI;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x22t
        0x36t
        0x30t
        0x26t
        0x12t
        0x2et
        0x23t
        0x3bt
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 82245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 82246
    const/high16 v2, 0x42c80000    # 100.0f

    .line 82247
    .local v0, "designedSize":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v5, v0

    div-float/2addr v5, v2

    .line 82248
    .local v1, "scaleFactor":F
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A02:Z

    if-eqz v0, :cond_0

    .line 82249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 82250
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    const/high16 v4, 0x41d40000    # 26.5f

    mul-float v1, v5, v4

    const/high16 v3, 0x41780000    # 15.5f

    mul-float v0, v5, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82251
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    mul-float v1, v5, v4

    const/high16 v0, 0x42a90000    # 84.5f

    mul-float/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82252
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v5

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    mul-float/2addr v4, v5

    mul-float/2addr v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 82255
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A06:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82256
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 82257
    return-void

    .line 82258
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 82259
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    const/high16 v7, 0x41e80000    # 29.0f

    mul-float v1, v5, v7

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float v0, v5, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82260
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    mul-float v1, v5, v7

    const/high16 v6, 0x429e0000    # 79.0f

    mul-float v0, v5, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82261
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v1, v5, v2

    mul-float v0, v5, v6

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82262
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    mul-float/2addr v2, v5

    mul-float v0, v5, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82263
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    mul-float/2addr v7, v5

    mul-float v0, v5, v4

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 82265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 82266
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    const/high16 v3, 0x425c0000    # 55.0f

    mul-float v1, v5, v3

    mul-float v0, v5, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82267
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    mul-float v1, v5, v3

    mul-float v0, v5, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float v0, v5, v2

    mul-float/2addr v6, v5

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    mul-float/2addr v2, v5

    mul-float v0, v5, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 82272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A04:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82273
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fI;->A05:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fI;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 82274
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/fI;->A02:Z

    .line 82275
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fI;->A01()V

    .line 82276
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/fI;->refreshDrawableState()V

    .line 82277
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/fI;->invalidate()V

    .line 82278
    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 0

    .line 82279
    if-eqz p1, :cond_0

    .line 82280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fI;->A00:Ljava/lang/String;

    .line 82281
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fI;->A01()V

    .line 82282
    :cond_0
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 0

    .line 82283
    if-eqz p1, :cond_0

    .line 82284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fI;->A01:Ljava/lang/String;

    .line 82285
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fI;->A01()V

    .line 82286
    :cond_0
    return-void
.end method
