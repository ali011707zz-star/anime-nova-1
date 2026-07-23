.class public final Lcom/facebook/ads/redexgen/X/Ov;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:Landroid/content/res/ColorStateList;

.field public A03:Landroid/content/res/ColorStateList;

.field public A04:Landroid/graphics/PorterDuff$Mode;

.field public A05:Landroid/graphics/PorterDuffColorFilter;

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Rect;

.field public final A0A:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1510
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7TbfIjq4nUNlo9PBRbBh8Nqjz9WD1j4o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QwIEzzAwkj5R91wAwEWLlMMFKcIcEzMH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YGxjb6ZA6RtUmEF8MJ0615ZpcT73YF5q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S0hvC3rZuvsYRwp1KEtz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1QChJDVwb8IocnSKwo65wA6CZgco7TbD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZdRWauYqGR9BuXwVkjl982N5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gVkOfeUFBBjn0ZGk6MgiFADp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9Iu12MOa7l614b1gjodkd988Is"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ov;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2

    .line 56318
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Z

    .line 56320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A07:Z

    .line 56321
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Landroid/graphics/PorterDuff$Mode;

    .line 56322
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    .line 56323
    const/4 v1, 0x5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    .line 56324
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->A01(Landroid/content/res/ColorStateList;)V

    .line 56325
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A0A:Landroid/graphics/RectF;

    .line 56326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A09:Landroid/graphics/Rect;

    .line 56327
    return-void
.end method

.method private A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 56328
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56329
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 56330
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->getState()[I

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 56331
    .local v0, "color":I
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private A01(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 56332
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    .line 56333
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->getState()[I

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56334
    return-void
.end method

.method private A02(Landroid/graphics/Rect;)V
    .locals 6

    .line 56335
    if-nez p1, :cond_0

    .line 56336
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 56337
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ov;->A0A:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A09:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56339
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Z

    if-eqz v0, :cond_1

    .line 56340
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A07:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ox;->A01(FFZ)F

    move-result v5

    .line 56341
    .local v0, "vInset":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A07:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ox;->A00(FFZ)F

    move-result v0

    .line 56342
    .local v1, "hInset":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ov;->A09:Landroid/graphics/Rect;

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 56343
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A0A:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A09:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 56344
    .end local v0    # "vInset":F
    .end local v1    # "hInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public final A03()F
    .locals 1

    .line 56345
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:F

    return v0
.end method

.method public final A04()F
    .locals 1

    .line 56346
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    return v0
.end method

.method public final A05()Landroid/content/res/ColorStateList;
    .locals 1

    .line 56347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final A06(F)V
    .locals 1

    .line 56348
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 56349
    return-void

    .line 56350
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    .line 56351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(Landroid/graphics/Rect;)V

    .line 56352
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->invalidateSelf()V

    .line 56353
    return-void
.end method

.method public final A07(FZZ)V
    .locals 1

    .line 56354
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A07:Z

    if-ne v0, p3, :cond_0

    .line 56355
    return-void

    .line 56356
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:F

    .line 56357
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Z

    .line 56358
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Ov;->A07:Z

    .line 56359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(Landroid/graphics/Rect;)V

    .line 56360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->invalidateSelf()V

    .line 56361
    return-void
.end method

.method public final A08(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 56362
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->A01(Landroid/content/res/ColorStateList;)V

    .line 56363
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->invalidateSelf()V

    .line 56364
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 56365
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    .line 56366
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56368
    const/4 v3, 0x1

    .line 56369
    .local v1, "clearColorFilter":Z
    .restart local v1    # "clearColorFilter":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A0A:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56370
    if-eqz v3, :cond_0

    .line 56371
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56372
    :cond_0
    return-void

    .line 56373
    .end local v1    # "clearColorFilter":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .line 56374
    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 56375
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A09:Landroid/graphics/Rect;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 56376
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 56377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    .line 56378
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 56379
    :goto_0
    return v0

    .line 56380
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 56381
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 56382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->A02(Landroid/graphics/Rect;)V

    .line 56383
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    .line 56384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 56385
    .local v0, "newColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v4, 0x1

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    .line 56386
    .local v1, "colorChanged":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 56387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56388
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_3

    .line 56389
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ov;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ov;->A0B:[Ljava/lang/String;

    const-string v1, "QGJeL8K6asHWX9bSRI5oYOa5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GrCaC70zqQWkgUOv3d1vdiOs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 56390
    return v4

    .line 56391
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56392
    :cond_3
    return v1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 56393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56394
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 56395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56396
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 56397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    .line 56398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 56399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->invalidateSelf()V

    .line 56400
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 56401
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Landroid/graphics/PorterDuff$Mode;

    .line 56402
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 56403
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->invalidateSelf()V

    .line 56404
    return-void
.end method
