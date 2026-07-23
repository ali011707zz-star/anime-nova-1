.class public final Lcom/facebook/ads/redexgen/X/eV;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public final A05:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81621
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81622
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A01:I

    .line 81623
    const/16 v0, 0x2d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A02:I

    .line 81624
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A00:I

    .line 81625
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eV;->A00()V

    .line 81626
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A05:I

    .line 81627
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eV;->A01()V

    .line 81628
    return-void
.end method

.method private A00()V
    .locals 4

    .line 81629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/eV;->setOrientation(I)V

    .line 81630
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/eV;->setGravity(I)V

    .line 81631
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    .line 81632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81634
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81635
    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81636
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A00:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/eV;->addView(Landroid/view/View;)V

    .line 81639
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A03:Landroid/widget/TextView;

    .line 81640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81641
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81642
    .local v1, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A03:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/eV;->addView(Landroid/view/View;)V

    .line 81645
    return-void
.end method

.method private A01()V
    .locals 2

    .line 81646
    iget v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A05:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A01:I

    .line 81647
    iget v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A05:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A02:I

    .line 81648
    iget v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A05:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A00:I

    .line 81649
    return-void
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/bZ;)Lcom/facebook/ads/redexgen/X/eV;
    .locals 4

    .line 81650
    iget v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A01:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81651
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/eV;->A02:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/eV;->A02:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81652
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/bZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81653
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/eV;->addView(Landroid/view/View;I)V

    .line 81654
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/eV;
    .locals 1

    .line 81655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81656
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/eV;
    .locals 1

    .line 81657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eV;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81658
    return-object p0
.end method
