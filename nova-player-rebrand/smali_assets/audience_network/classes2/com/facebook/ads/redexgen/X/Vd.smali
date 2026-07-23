.class public final Lcom/facebook/ads/redexgen/X/Vd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;


# static fields
.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2071
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Vd;->A08:I

    .line 2072
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Vd;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69490
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A06:Landroid/graphics/Typeface;

    .line 69491
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:I

    .line 69492
    const v0, -0xe2ded7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:I

    .line 69493
    const v0, -0x9e9890

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A05:I

    .line 69494
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    .line 69495
    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:I

    .line 69496
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:I

    .line 69497
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 69498
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 69499
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 69500
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 69501
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:I

    return v0
.end method

.method public final A04(F)I
    .locals 3

    .line 69502
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    const/high16 v0, -0x1000000

    and-int/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    not-int v1, v0

    const v0, 0xffffff

    and-int/2addr v1, v0

    or-int/2addr v2, v1

    .line 69503
    .local v0, "textColor":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    invoke-static {v2, v0, p1}, Lcom/facebook/ads/redexgen/X/P3;->A05(IIF)I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/widget/TextView;)V
    .locals 8

    .line 69504
    const/high16 v0, 0x41600000    # 14.0f

    const/4 v6, 0x2

    invoke-virtual {p1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A06:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69506
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 69507
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 69508
    .local v0, "buttonBackgroundUnpressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 69509
    sget v0, Lcom/facebook/ads/redexgen/X/Vd;->A08:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 69510
    sget v1, Lcom/facebook/ads/redexgen/X/Vd;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:I

    invoke-virtual {v7, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 69511
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 69512
    .local v3, "buttonBackgroundPressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 69513
    sget v0, Lcom/facebook/ads/redexgen/X/Vd;->A08:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 69514
    sget v1, Lcom/facebook/ads/redexgen/X/Vd;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 69515
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 69516
    .local v4, "bgSld":Landroid/graphics/drawable/StateListDrawable;
    const v4, 0x10100a7

    filled-new-array {v4}, [I

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69517
    const/4 v3, 0x0

    new-array v0, v3, [I

    invoke-virtual {v1, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69518
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 69519
    new-array v1, v3, [I

    new-array v2, v6, [[I

    filled-new-array {v4}, [I

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:I

    filled-new-array {v1, v0}, [I

    move-result-object v1

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 69520
    .local v1, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69521
    return-void
.end method

.method public final A06(Landroid/widget/TextView;)V
    .locals 1

    .line 69522
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A05:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69523
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A06:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69525
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69526
    return-void
.end method

.method public final A07(Landroid/widget/TextView;)V
    .locals 2

    .line 69527
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69528
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69530
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69531
    return-void
.end method

.method public final A08(Landroid/widget/TextView;)V
    .locals 2

    .line 69532
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69533
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69535
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69536
    return-void
.end method

.method public final A09(Lcom/facebook/ads/AdOptionsView;I)V
    .locals 1

    .line 69537
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    .line 69538
    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 69539
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 69540
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:I

    .line 69541
    return-void
.end method

.method public final setCTABackgroundColor(I)V
    .locals 0

    .line 69542
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:I

    .line 69543
    return-void
.end method

.method public final setCTABorderColor(I)V
    .locals 0

    .line 69544
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:I

    .line 69545
    return-void
.end method

.method public final setCTATextColor(I)V
    .locals 0

    .line 69546
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:I

    .line 69547
    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 69548
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:I

    .line 69549
    return-void
.end method

.method public final setSecondaryTextColor(I)V
    .locals 0

    .line 69550
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A05:I

    .line 69551
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 69552
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A06:Landroid/graphics/Typeface;

    .line 69553
    return-void
.end method
