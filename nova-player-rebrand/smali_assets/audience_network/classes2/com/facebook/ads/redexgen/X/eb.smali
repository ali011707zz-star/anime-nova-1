.class public final Lcom/facebook/ads/redexgen/X/eb;
.super Landroid/widget/LinearLayout;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ve;Lcom/facebook/ads/redexgen/X/Vd;Lcom/facebook/ads/AdOptionsView;)V
    .locals 8

    .line 81718
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81719
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81720
    .local v0, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {p4, v7}, Lcom/facebook/ads/redexgen/X/Vd;->A08(Landroid/widget/TextView;)V

    .line 81721
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81722
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 81723
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81724
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81725
    .local v2, "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {p4, v5}, Lcom/facebook/ads/redexgen/X/Vd;->A06(Landroid/widget/TextView;)V

    .line 81726
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->getAdUntrimmedBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81727
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Ve;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 81728
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81729
    .local v3, "titleAndAdOptionsLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81730
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81731
    const/4 v2, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81732
    .local v4, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81733
    invoke-virtual {v4, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81734
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81735
    .local v5, "optionsParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, p5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81736
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/eb;->setOrientation(I)V

    .line 81737
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81738
    .local v1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/eb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81739
    invoke-virtual {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/eb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81740
    return-void

    .line 81741
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
