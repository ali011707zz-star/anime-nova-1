.class public final Lcom/facebook/ads/redexgen/X/Yp;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:I

.field public A01:Landroid/graphics/Paint;

.field public A02:Landroid/graphics/Paint;

.field public A03:Landroid/graphics/Paint;

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 74522
    const/16 v1, 0x3c

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Yp;-><init>(Lcom/facebook/ads/redexgen/X/gi;IZ)V

    .line 74523
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;IZ)V
    .locals 3

    .line 74524
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74525
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:I

    .line 74526
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Yp;->A04:Z

    .line 74527
    if-eqz p3, :cond_0

    .line 74528
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A02:Landroid/graphics/Paint;

    .line 74529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A02:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74530
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74531
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A02:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A02:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74533
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A01:Landroid/graphics/Paint;

    .line 74534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A01:Landroid/graphics/Paint;

    const v0, -0x4cbbbbbc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74535
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A01:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A01:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74537
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    .line 74538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74539
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74542
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 74543
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 74544
    .local v0, "density":F
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74545
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74546
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74547
    return-object v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 74548
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A04:Z

    move-object v8, p1

    if-eqz v0, :cond_0

    .line 74549
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 74550
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 74551
    .local v0, "edgeLength":I
    div-int/lit8 v6, v7, 0x2

    .line 74552
    .local v1, "centerX":I
    div-int/lit8 v5, v7, 0x2

    .line 74553
    .local v2, "centerY":I
    mul-int/lit8 v0, v6, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 74554
    .local v3, "outerRadius":I
    int-to-float v3, v6

    int-to-float v2, v5

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A02:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74555
    add-int/lit8 v0, v4, -0x2

    .line 74556
    .local v4, "innerRadius":I
    int-to-float v3, v6

    int-to-float v2, v5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yp;->A01:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74557
    div-int/lit8 v2, v7, 0x3

    .line 74558
    .local v5, "startX":I
    div-int/lit8 v1, v7, 0x3

    .line 74559
    .local v6, "startY":I
    int-to-float v9, v2

    int-to-float v10, v1

    mul-int/lit8 v0, v2, 0x2

    int-to-float v11, v0

    mul-int/lit8 v0, v1, 0x2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74560
    mul-int/lit8 v0, v2, 0x2

    int-to-float v9, v0

    int-to-float v10, v1

    int-to-float v11, v2

    mul-int/lit8 v0, v1, 0x2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/Yp;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74561
    .end local v0    # "edgeLength":I
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v3    # "outerRadius":I
    .end local v4    # "innerRadius":I
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    :cond_0
    invoke-super {p0, v8}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74562
    return-void
.end method
