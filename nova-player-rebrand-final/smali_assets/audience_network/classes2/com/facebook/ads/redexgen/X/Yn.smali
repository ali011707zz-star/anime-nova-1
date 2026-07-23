.class public final Lcom/facebook/ads/redexgen/X/Yn;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Landroid/widget/TextView;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/Vd;

.field public final A07:Lcom/facebook/ads/redexgen/X/MR;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 2530
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cqqrkZtRQb88kyLB6Q2uvm01R0QnuoNK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nq3CfSfg25oVaXc5kCSSNTYEBmLkWVpQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ug05W3SKca0ZbWrt9dtmEm51Q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "w8D7pTd1AENWsOJ7Gbtv6zmPYShcD12"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Jz7rkQN0I2l0GA78AAlVWxdn72"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N7yF5pKoWcUwU52GLomX8fL4MB9AuJQz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7uQymxnuKPwGh5iPF3bNh6uz1YyZJI6b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PV6rNOTmS7sV6l09QwDyTUKdw7Zl10tb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yn;->A08:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A09:I

    .line 2531
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0H:I

    .line 2532
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:I

    .line 2533
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0B:I

    .line 2534
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    .line 2535
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:I

    .line 2536
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:I

    .line 2537
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:I

    .line 2538
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/Yn;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Vd;)V
    .locals 1

    .line 74390
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 74391
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    .line 74392
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    .line 74393
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    .line 74394
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    .line 74395
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    .line 74396
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    .line 74397
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:Landroid/widget/RelativeLayout;

    .line 74398
    new-instance v0, Lcom/facebook/ads/redexgen/X/MR;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MR;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    .line 74399
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A09()V

    .line 74400
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A0D()V

    .line 74401
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A05()V

    .line 74402
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A0A()V

    .line 74403
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A00()V

    .line 74404
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A0B()V

    .line 74405
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A03()V

    .line 74406
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A0A()V

    .line 74407
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A08()V

    .line 74408
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A0C()V

    .line 74409
    return-void
.end method

.method private A00()V
    .locals 3

    .line 74410
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74411
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 74412
    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74413
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74414
    return-void
.end method

.method private A01()V
    .locals 6

    .line 74415
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74416
    .local v0, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 74418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74419
    const/4 v0, -0x1

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74420
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74421
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 74422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 74423
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74424
    return-void
.end method

.method private A02()V
    .locals 5

    .line 74425
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74426
    .local v0, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Yn;->A0B:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yn;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yn;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0D:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 74428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74429
    return-void
.end method

.method private A03()V
    .locals 3

    .line 74430
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74431
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74432
    return-void
.end method

.method private A04()V
    .locals 5

    .line 74433
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74434
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74437
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0G:I

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 74438
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v0, -0x34000000    # -3.3554432E7f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 74439
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 74441
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74442
    return-void
.end method

.method private A05()V
    .locals 2

    .line 74443
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74444
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Yn;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74445
    return-void
.end method

.method private A06()V
    .locals 2

    .line 74446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vd;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74449
    return-void
.end method

.method private A07()V
    .locals 3

    .line 74450
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0H:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MR;->setMaxWidth(I)V

    .line 74451
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vd;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74452
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vd;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74453
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vd;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74455
    return-void
.end method

.method private A08()V
    .locals 5

    .line 74456
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    sget v3, Lcom/facebook/ads/redexgen/X/Yn;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yn;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yn;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0C:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74457
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74459
    return-void
.end method

.method private A09()V
    .locals 4

    .line 74460
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74461
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 74462
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vd;->A01()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74463
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 74464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A06:Lcom/facebook/ads/redexgen/X/Vd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vd;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 74465
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Yn;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74466
    sget v3, Lcom/facebook/ads/redexgen/X/Yn;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yn;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yn;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0A:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setPadding(IIII)V

    .line 74467
    return-void
.end method

.method private A0A()V
    .locals 1

    .line 74468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74469
    return-void
.end method

.method private A0B()V
    .locals 7

    .line 74470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MR;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74471
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:I

    int-to-float v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:I

    int-to-float v6, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:I

    int-to-float v4, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0F:I

    int-to-float v1, v0

    const/16 v0, 0x8

    new-array v3, v0, [F

    const/4 v0, 0x0

    aput v2, v3, v0

    const/4 v2, 0x1

    aput v6, v3, v2

    const/4 v0, 0x2

    aput v4, v3, v0

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/bk;->setRadius([F)V

    .line 74472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MR;->setAdjustViewBounds(Z)V

    .line 74473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 74474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74475
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 74476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74480
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74481
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74486
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74487
    .local v1, "subTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74488
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A0E:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74489
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74490
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 74491
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 74493
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 74494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 74495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A07:Lcom/facebook/ads/redexgen/X/MR;

    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 74496
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-int v1, v0

    .line 74497
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0F(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    .line 74498
    .local v0, "heightThreshold":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 74499
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 74500
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A01()V

    .line 74501
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A07()V

    .line 74502
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->onMeasure(II)V

    .line 74503
    return-void

    .line 74504
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A02()V

    .line 74505
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A04()V

    .line 74506
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yn;->A06()V

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 4

    .line 74507
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74508
    .end local v0
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74509
    return-void

    .line 74510
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 74511
    .local v0, "spanString":Landroid/text/SpannableString;
    const/4 v0, 0x1

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 74512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74513
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3

    .line 74514
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74515
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74516
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yn;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 74517
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yn;->A08:[Ljava/lang/String;

    const-string v1, "tjmDQp9WMGCYDxrOu8tbgj2JMnaMPXF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 74518
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74519
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74520
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yn;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74521
    return-void
.end method
