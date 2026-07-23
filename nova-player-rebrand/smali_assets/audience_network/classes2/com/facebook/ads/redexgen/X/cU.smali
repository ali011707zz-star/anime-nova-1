.class public final Lcom/facebook/ads/redexgen/X/cU;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/bl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View;)V
    .locals 1

    .line 79198
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79199
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Landroid/view/View;

    .line 79200
    new-instance v0, Lcom/facebook/ads/redexgen/X/bl;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Lcom/facebook/ads/redexgen/X/bl;

    .line 79201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Lcom/facebook/ads/redexgen/X/bl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 79202
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 3

    .line 79203
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Landroid/view/View;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79204
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/bq;Z)V
    .locals 10

    .line 79205
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Lcom/facebook/ads/redexgen/X/bl;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/bl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cU;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79207
    .local v0, "insideLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79208
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79209
    .local v1, "insideLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79210
    if-eqz p1, :cond_0

    .line 79211
    const/4 v7, 0x3

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    .line 79212
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79213
    .local v6, "titleDescParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 79214
    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    div-int/lit8 v8, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    div-int/lit8 v7, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    div-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v9, v8, v7, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79215
    invoke-virtual {v5, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79216
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v0, -0x6a000000

    filled-new-array {v0, v6}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 79217
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 79218
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 79219
    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 79220
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "titleDescParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/bl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Lcom/facebook/ads/redexgen/X/bl;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/cU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79222
    return-void

    .line 79223
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79224
    .local v6, "titleDescParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bl;->getId()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79225
    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 79226
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 79227
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/cU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
