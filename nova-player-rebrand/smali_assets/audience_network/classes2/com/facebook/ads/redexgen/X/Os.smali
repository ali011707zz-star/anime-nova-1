.class public Lcom/facebook/ads/redexgen/X/Os;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:F

.field public static final A09:I

.field public static final A0A:Lcom/facebook/ads/redexgen/X/Ou;

.field public static final A0B:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Landroid/graphics/Rect;

.field public final A05:Landroid/graphics/Rect;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ot;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1504
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ShNBvS5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b2z1l7evnHkZXpFh4jUAU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JfQekQfzdw1mJ2RkSzlEvaL1jVLq96XT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0M9zDLqBQAVDpkbZHtwaURqwF1mV2f1S"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jQ6MUrNiHIuV2Q80zD0eWZ3NfiJ07L6A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0up6ixfDqbrZOotDwCZ4gMtZBiUGrTem"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xF0da7GYt9A5Qra0MND7i27I5BG4MHvn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fGPiNZIH9FIGNZUMCtCVq24hO8AJIHug"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Os;->A07:[Ljava/lang/String;

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Os;->A0B:[I

    .line 1505
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    .line 1506
    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Os;->A09:I

    .line 1507
    new-instance v0, Lcom/facebook/ads/redexgen/X/i9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/i9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    .line 1508
    sget-object v0, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ou;->AAE()V

    .line 1509
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Os;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Os;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 56240
    move-object v1, p0

    move-object v4, p1

    invoke-direct {p0, v4, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    .line 56242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A05:Landroid/graphics/Rect;

    .line 56243
    new-instance v0, Lcom/facebook/ads/redexgen/X/iA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/iA;-><init>(Lcom/facebook/ads/redexgen/X/Os;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    .line 56244
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Os;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Os;->A0B:[I

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56245
    .local v1, "aa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 56246
    .local v3, "themeColorBackground":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56247
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 56248
    .local v4, "hsv":[F
    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 56249
    const v0, -0x50506

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 56250
    .local v5, "backgroundColor":Landroid/content/res/ColorStateList;
    const/high16 v6, 0x41200000    # 10.0f

    .line 56251
    .local p4, "radius":F
    const/high16 v7, 0x41200000    # 10.0f

    .line 56252
    .local p5, "elevation":F
    const/high16 v8, 0x42480000    # 50.0f

    .line 56253
    .local v6, "maxElevation":F
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/Os;->A02:Z

    .line 56254
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A03:Z

    .line 56255
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 56256
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 56257
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 56258
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 56259
    cmpl-float v0, v7, v8

    if-lez v0, :cond_0

    .line 56260
    move v8, v7

    .line 56261
    .end local v6    # "maxElevation":F
    .local p6, "maxElevation":F
    :cond_0
    iput v2, v1, Lcom/facebook/ads/redexgen/X/Os;->A01:I

    .line 56262
    iput v2, v1, Lcom/facebook/ads/redexgen/X/Os;->A00:I

    .line 56263
    sget-object v2, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Ou;->AAG(Lcom/facebook/ads/redexgen/X/Ot;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 56264
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Os;IIII)V
    .locals 0

    .line 56265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 56266
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A71(Lcom/facebook/ads/redexgen/X/Ot;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 56267
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A7v(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 56268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 56269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 56270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 56271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 56272
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A8S(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 56273
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A03:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 56274
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A8r(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 56275
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Z

    return v0
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 56276
    sget-object v0, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/i9;

    if-nez v0, :cond_0

    .line 56277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 56278
    .local v0, "widthMode":I
    sparse-switch v4, :sswitch_data_0

    .line 56279
    .end local v1
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 56280
    .local v1, "heightMode":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Os;->A07:[Ljava/lang/String;

    const-string v1, "ezVHALe6egolV0dGNwTkgEwTmiIckZEU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "9kVtZpYuS1B6eNaF5MtLQpOmcikxmxeD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sparse-switch v4, :sswitch_data_1

    .line 56281
    .end local v2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 56282
    .end local v0    # "widthMode":I
    .end local v1    # "heightMode":I
    :goto_2
    return-void

    .line 56283
    :sswitch_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A8X(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 56284
    .local v2, "minHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56285
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 56286
    goto :goto_1

    .line 56287
    :sswitch_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A8Y(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 56288
    .local v1, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56289
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 56290
    goto :goto_0

    .line 56291
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3

    .line 56292
    sget-object v2, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->AJJ(Lcom/facebook/ads/redexgen/X/Ot;Landroid/content/res/ColorStateList;)V

    .line 56293
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 56294
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ou;->AJJ(Lcom/facebook/ads/redexgen/X/Ot;Landroid/content/res/ColorStateList;)V

    .line 56295
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .line 56296
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ou;->AJP(Lcom/facebook/ads/redexgen/X/Ot;F)V

    .line 56297
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .line 56298
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ou;->AJX(Lcom/facebook/ads/redexgen/X/Ot;F)V

    .line 56299
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 56300
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Os;->A00:I

    .line 56301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 56302
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 56303
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Os;->A01:I

    .line 56304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 56305
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 56306
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    .line 56307
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    .line 56308
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A03:Z

    if-eq p1, v0, :cond_0

    .line 56309
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Os;->A03:Z

    .line 56310
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->AFT(Lcom/facebook/ads/redexgen/X/Ot;)V

    .line 56311
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 56312
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ou;->AJj(Lcom/facebook/ads/redexgen/X/Ot;F)V

    .line 56313
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    .line 56314
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Z

    if-eq v0, p1, :cond_0

    .line 56315
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Os;->A02:Z

    .line 56316
    sget-object v1, Lcom/facebook/ads/redexgen/X/Os;->A0A:Lcom/facebook/ads/redexgen/X/Ou;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Os;->A06:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->ADP(Lcom/facebook/ads/redexgen/X/Ot;)V

    .line 56317
    :cond_0
    return-void
.end method
