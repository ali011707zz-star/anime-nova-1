.class public final Lcom/facebook/ads/redexgen/X/1G;
.super Lcom/facebook/ads/redexgen/X/67;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 76
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/1G;->A00:I

    .line 77
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 1

    .line 5104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/67;-><init>(Lcom/facebook/ads/redexgen/X/c7;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 5105
    return-void
.end method


# virtual methods
.method public final A03()Z
    .locals 1

    .line 5106
    const/4 v0, 0x0

    return v0
.end method

.method public final A1X(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 7

    .line 5107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v5

    .line 5108
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/bq;
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 5109
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5110
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5111
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/1G;->A00:I

    invoke-virtual {v5, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/bq;->setPadding(IIII)V

    .line 5112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5113
    .local v5, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5114
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5115
    .local v6, "adDetails":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 5116
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5117
    .local v3, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5118
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5119
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5120
    sget v3, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    sget v2, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5121
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5122
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5123
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1G;->addView(Landroid/view/View;)V

    .line 5124
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/1G;->addView(Landroid/view/View;)V

    .line 5125
    return-void
.end method
