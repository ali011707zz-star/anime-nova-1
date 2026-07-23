.class public final Lcom/facebook/ads/redexgen/X/hT;
.super Lcom/facebook/ads/redexgen/X/Rm;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdOptionsViewApi;
.implements Lcom/facebook/ads/redexgen/X/aK;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:Landroid/widget/ImageView;

.field public A01:Landroid/widget/ImageView;

.field public A02:Lcom/facebook/ads/redexgen/X/aW;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/content/Context;

.field public final A07:Landroid/widget/LinearLayout;

.field public final A08:Lcom/facebook/ads/AdOptionsView;

.field public final A09:Lcom/facebook/ads/NativeAdLayout;

.field public final A0A:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2919
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HVqi6jlpWuJt2YtXNdvGk3FhV0BHl3EV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MmKJ6DDV7RS65o7dKLAsYGebg3Me5CTe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1YJN2Qnc4ttaIZRVWQztvMy6euLicnbf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AdY32lBMWhACAu5OzQBb3WT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7pW2kqTunwh3p"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "By284lxDKeQhXfwWoADF7ASQT9nDXNCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3GcamP2dghLgpW6nys2YEXVC3i8y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hT;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hT;->A08()V

    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/hT;->A0D:I

    .line 2920
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/hT;->A0E:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)V
    .locals 3

    .line 84557
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rm;-><init>()V

    .line 84558
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/hT;->A05:Z

    .line 84559
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/hT;->A04:Z

    .line 84560
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/hT;->A03:Z

    .line 84561
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/hT;->A08:Lcom/facebook/ads/AdOptionsView;

    .line 84562
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hT;->A09:Lcom/facebook/ads/NativeAdLayout;

    .line 84563
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hT;->A06:Landroid/content/Context;

    .line 84564
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    .line 84565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A08:Lcom/facebook/ads/AdOptionsView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdOptionsView;->addView(Landroid/view/View;)V

    .line 84566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    .line 84567
    sget-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    if-ne p4, v0, :cond_0

    .line 84568
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84569
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/UK;->A1c(Lcom/facebook/ads/NativeAdLayout;)V

    .line 84571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/UK;->A1e(Lcom/facebook/ads/redexgen/X/hT;)V

    .line 84572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A12()Lcom/facebook/ads/redexgen/X/ju;

    move-result-object v1

    .line 84573
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/ju;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ju;->A0P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84575
    return-void

    .line 84576
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 84577
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A08:Lcom/facebook/ads/AdOptionsView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0C:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 84578
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A0C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84579
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A05()V

    .line 84580
    :goto_1
    return-void

    .line 84581
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A0B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A06()V

    .line 84583
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A04()V

    goto :goto_1

    .line 84584
    :cond_3
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/hT;->A09(I)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView;)V
    .locals 7

    .line 84585
    sget-object v4, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/16 v5, 0x17

    move-object v0, p0

    move-object v6, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/hT;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)V

    .line 84586
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/YM;)Landroid/widget/ImageView;
    .locals 5

    .line 84587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A08:Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84588
    .local v0, "iconView":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84589
    sget v3, Lcom/facebook/ads/redexgen/X/hT;->A0E:I

    sget v2, Lcom/facebook/ads/redexgen/X/hT;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/hT;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/hT;->A0E:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 84590
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84591
    return-object v4
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/YM;
    .locals 1

    .line 84592
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object p0

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/aP;

    if-ne p0, v0, :cond_0

    .line 84593
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A07:Lcom/facebook/ads/redexgen/X/YM;

    return-object v0

    .line 84594
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0V:Lcom/facebook/ads/redexgen/X/YM;

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/YM;
    .locals 1

    .line 84595
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object p0

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/aP;

    if-ne p0, v0, :cond_0

    .line 84596
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A08:Lcom/facebook/ads/redexgen/X/YM;

    return-object v0

    .line 84597
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0Y:Lcom/facebook/ads/redexgen/X/YM;

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hT;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 2

    .line 84598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/hT;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84599
    return-void
.end method

.method private A05()V
    .locals 3

    .line 84600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84601
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A15()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84602
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 84603
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v2

    .line 84604
    .local v0, "creditLineStaticView":Lcom/facebook/ads/redexgen/X/aN;
    const v0, -0x7fe3d4cd

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/aN;->setBackgroundColor(I)V

    .line 84605
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84606
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84607
    return-void
.end method

.method private A06()V
    .locals 8

    .line 84608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hT;->A01(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hT;->A0A(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 84610
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A09:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84611
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84613
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A15()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84614
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84615
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hT;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/hT;->A09:Lcom/facebook/ads/NativeAdLayout;

    .line 84616
    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/aO;->A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/YM;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/aK;)Lcom/facebook/ads/redexgen/X/aW;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A02:Lcom/facebook/ads/redexgen/X/aW;

    .line 84617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A02:Lcom/facebook/ads/redexgen/X/aW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aW;->A0A()V

    .line 84619
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 3

    .line 84620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1O()V

    .line 84621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A06:Landroid/content/Context;

    .line 84622
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84623
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 84624
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 4

    const/16 v0, 0x9

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/hT;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/hT;->A0C:[Ljava/lang/String;

    const-string v1, "u5VvbSB0F1Ye86S0UUtiEMk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xkynJM0f4daSI4M9ryujsiLCexBq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/hT;->A0B:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x51t
        0x66t
        0x73t
        0x6ct
        0x71t
        0x77t
        0x23t
        0x42t
        0x67t
    .end array-data
.end method

.method private A09(I)V
    .locals 2

    .line 84625
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0c:Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hT;->A00(Lcom/facebook/ads/redexgen/X/YM;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    .line 84626
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A06:Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hT;->A0A(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 84627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84628
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/hT;->setIconSizeDp(I)V

    .line 84629
    const v0, -0x9f9890

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hT;->setIconColor(I)V

    .line 84630
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 4

    .line 84631
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hT;->A00(Lcom/facebook/ads/redexgen/X/YM;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    .line 84632
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hT;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84634
    return-void
.end method

.method private A0B()Z
    .locals 1

    .line 84635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84637
    :goto_0
    return v0

    .line 84638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0C()Z
    .locals 1

    .line 84639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    .line 84640
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84641
    :goto_0
    return v0

    .line 84642
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic A0D(Landroid/view/View;)V
    .locals 1

    .line 84643
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A02:Lcom/facebook/ads/redexgen/X/aW;

    if-eqz v0, :cond_0

    .line 84645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A02:Lcom/facebook/ads/redexgen/X/aW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aW;->A0B()V

    .line 84646
    :cond_0
    :goto_0
    return-void

    .line 84647
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A07()V

    goto :goto_0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 2

    .line 84648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84650
    :cond_0
    return-void
.end method

.method public final A0F()Z
    .locals 1

    .line 84651
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A03:Z

    return v0
.end method

.method public final A0G()Z
    .locals 1

    .line 84652
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A04:Z

    return v0
.end method

.method public final A0H()Z
    .locals 1

    .line 84653
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A05:Z

    return v0
.end method

.method public final ADW(Landroid/view/View;)V
    .locals 0

    .line 84654
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A07()V

    .line 84655
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 84656
    return-object p0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 84657
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rm;->onWindowFocusChanged(Z)V

    .line 84658
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A02:Lcom/facebook/ads/redexgen/X/aW;

    if-eqz v0, :cond_0

    .line 84659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A02:Lcom/facebook/ads/redexgen/X/aW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aW;->A09()V

    .line 84660
    :cond_0
    return-void
.end method

.method public final setIconColor(I)V
    .locals 1

    .line 84661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 84663
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hT;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 84665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A03:Z

    .line 84666
    :cond_1
    return-void
.end method

.method public final setIconSizeDp(I)V
    .locals 3

    .line 84667
    sget v2, Lcom/facebook/ads/redexgen/X/hT;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    int-to-float v0, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 84668
    .local v0, "iconSize":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84669
    .local v1, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 84672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A04:Z

    .line 84674
    :cond_1
    return-void
.end method

.method public final setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 84675
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84676
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84677
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84678
    return-void
.end method

.method public final setOnAdClosedListener(Lcom/facebook/ads/AdClosedListener;)V
    .locals 1

    .line 84679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A0A:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/UK;->A1Y(Lcom/facebook/ads/AdClosedListener;)V

    .line 84680
    return-void
.end method

.method public final setSingleIcon(Z)V
    .locals 2

    .line 84681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hT;->A01:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 84683
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hT;->A05:Z

    .line 84684
    return-void

    .line 84685
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
