.class public final Lcom/facebook/ads/redexgen/X/b5;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 77335
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77336
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    .line 77337
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    .line 77338
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b5;->A00()V

    .line 77339
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77340
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77341
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    .line 77342
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    .line 77343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b5;->A00()V

    .line 77344
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 77345
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77346
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    .line 77347
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    .line 77348
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b5;->A00()V

    .line 77349
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 77350
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77351
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    .line 77352
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    .line 77353
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b5;->A00()V

    .line 77354
    return-void
.end method

.method private A00()V
    .locals 3

    .line 77355
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/b5;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77356
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/b5;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 77358
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YB;->A00()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b5;->setId(I)V

    .line 77359
    return-void
.end method


# virtual methods
.method public getBodyImageView()Landroid/widget/ImageView;
    .locals 1

    .line 77360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 77361
    iget v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 77362
    iget v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:I

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .line 77363
    move-object v8, p0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A01:I

    if-lez v0, :cond_0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    if-gtz v0, :cond_1

    .line 77364
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/b5;
    .end local p1    # null:Z
    .end local p2    # null:I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 77365
    :goto_0
    return-void

    .line 77366
    :cond_1
    sub-int v4, p4, p2

    .line 77367
    .local v5, "blurBorderViewWidth":I
    sub-int v3, p5, p3

    .line 77368
    .local v6, "blurBorderViewHeight":I
    int-to-float v2, v4

    iget v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A01:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v1, v3

    iget v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 77369
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 77370
    .local v7, "scale":F
    iget v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v1, v0

    .line 77371
    .local v8, "expectedImageWidth":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v7, v0

    .line 77372
    .local p0, "expectedImageHeight":I
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 77373
    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p2

    .line 77374
    .local p1, "centerX":I
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p3

    .line 77375
    .local p2, "centerY":I
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    div-int/lit8 v0, v1, 0x2

    sub-int v3, v6, v0

    div-int/lit8 v0, v7, 0x2

    sub-int v2, v5, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    div-int/lit8 v0, v7, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v3, v2, v1, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 77376
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 77377
    if-eqz p2, :cond_1

    .line 77378
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    .line 77379
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 77380
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 77381
    :goto_0
    if-eqz p1, :cond_0

    .line 77382
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:I

    .line 77383
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    .line 77384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77385
    :goto_1
    return-void

    .line 77386
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 77387
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    goto :goto_0
.end method
