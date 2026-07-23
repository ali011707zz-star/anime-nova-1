.class public final Lcom/facebook/ads/redexgen/X/34;
.super Lcom/facebook/ads/redexgen/X/ED;
.source ""


# instance fields
.field public final A00:Landroid/graphics/Paint;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;

.field public final A02:Lcom/facebook/ads/redexgen/X/VI;

.field public final A03:Lcom/facebook/ads/redexgen/X/EA;

.field public final A04:Lcom/facebook/ads/redexgen/X/E4;

.field public final A05:Lcom/facebook/ads/redexgen/X/E2;

.field public final A06:Lcom/facebook/ads/redexgen/X/fI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/VI;)V
    .locals 8

    .line 9968
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ED;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 9969
    new-instance v0, Lcom/facebook/ads/redexgen/X/3A;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3A;-><init>(Lcom/facebook/ads/redexgen/X/34;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Lcom/facebook/ads/redexgen/X/E4;

    .line 9970
    new-instance v0, Lcom/facebook/ads/redexgen/X/39;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/39;-><init>(Lcom/facebook/ads/redexgen/X/34;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A05:Lcom/facebook/ads/redexgen/X/E2;

    .line 9971
    new-instance v0, Lcom/facebook/ads/redexgen/X/38;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/38;-><init>(Lcom/facebook/ads/redexgen/X/34;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A03:Lcom/facebook/ads/redexgen/X/EA;

    .line 9972
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/34;->A02:Lcom/facebook/ads/redexgen/X/VI;

    .line 9973
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/34;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 9974
    new-instance v0, Lcom/facebook/ads/redexgen/X/fI;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/fI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A06:Lcom/facebook/ads/redexgen/X/fI;

    .line 9975
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 9976
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide v6, 0x4037c28f5c28f5c3L    # 23.76

    mul-double/2addr v0, v6

    double-to-int v5, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9977
    .local v1, "btnLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A06:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fI;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/34;->A06:Lcom/facebook/ads/redexgen/X/fI;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fI;->setChecked(Z)V

    .line 9980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A06:Lcom/facebook/ads/redexgen/X/fI;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fI;->setClickable(Z)V

    .line 9981
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A00:Landroid/graphics/Paint;

    .line 9982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/34;->A00:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9983
    if-eqz p2, :cond_0

    .line 9984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/34;->A00:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9985
    :goto_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 9986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A06:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/34;->addView(Landroid/view/View;)V

    .line 9987
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/34;->setGravity(I)V

    .line 9988
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v5

    double-to-int v4, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    mul-double/2addr v2, v5

    double-to-int v1, v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9989
    .local v3, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9990
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/34;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9991
    const/16 v0, 0x3ec

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 9992
    return-void

    .line 9993
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/34;->A00:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9994
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/34;->A00:Landroid/graphics/Paint;

    const/16 v0, 0xcc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 9995
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/34;->A01:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 9996
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/34;->A02:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 9997
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 9998
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 9999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 10000
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/fI;
    .locals 0

    .line 10001
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/34;->A06:Lcom/facebook/ads/redexgen/X/fI;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 10002
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A07()V

    .line 10003
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    .line 10005
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A05:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A03:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    .line 10006
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10007
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/fF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fF;-><init>(Lcom/facebook/ads/redexgen/X/34;)V

    .line 10008
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/34;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10009
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 10010
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/34;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10012
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    .line 10013
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A03:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A05:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    .line 10014
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10015
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A08()V

    .line 10016
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 10017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 10018
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 10019
    .local v1, "height":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10020
    .local v2, "edgeLength":I
    div-int/lit8 v4, v0, 0x2

    .line 10021
    .local v3, "centerX":I
    div-int/lit8 v1, v0, 0x2

    .line 10022
    .local v4, "centerY":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/34;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v2, v0

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/34;->A00:Landroid/graphics/Paint;

    .line 10023
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 10024
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ED;->onDraw(Landroid/graphics/Canvas;)V

    .line 10025
    return-void
.end method
