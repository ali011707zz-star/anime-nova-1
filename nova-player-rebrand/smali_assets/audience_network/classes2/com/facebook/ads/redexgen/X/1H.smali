.class public final Lcom/facebook/ads/redexgen/X/1H;
.super Lcom/facebook/ads/redexgen/X/67;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 78
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/1H;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 1

    .line 5126
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/67;-><init>(Lcom/facebook/ads/redexgen/X/c7;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 5127
    return-void
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 5128
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 5129
    const/4 v0, 0x0

    return v0
.end method

.method public final A1X(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 8

    .line 5130
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v4

    .line 5131
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/bq;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 5132
    const/4 v7, -0x1

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5133
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5134
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/bq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5135
    sget v3, Lcom/facebook/ads/redexgen/X/1H;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/1H;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/1H;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/1H;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bq;->setPadding(IIII)V

    .line 5136
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0U(Landroid/view/View;Landroid/content/Context;)V

    .line 5137
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5138
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5139
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5140
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1H;->addView(Landroid/view/View;)V

    .line 5141
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/1H;->addView(Landroid/view/View;)V

    .line 5142
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1H;->addView(Landroid/view/View;)V

    .line 5143
    return-void
.end method
