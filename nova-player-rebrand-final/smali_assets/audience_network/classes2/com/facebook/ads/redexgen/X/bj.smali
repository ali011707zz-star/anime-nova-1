.class public final Lcom/facebook/ads/redexgen/X/bj;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/GradientDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:I

.field public final A04:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;I)V
    .locals 8

    .line 78335
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78336
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:I

    .line 78337
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/bj;->setOrientation(I)V

    .line 78338
    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/bj;->setGravity(I)V

    .line 78339
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 78340
    .local v2, "density":F
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 78341
    .local v3, "dotSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A02:I

    .line 78342
    invoke-virtual {p2, v7}, Lcom/facebook/ads/redexgen/X/Na;->A05(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A04:I

    .line 78343
    iget v1, p0, Lcom/facebook/ads/redexgen/X/bj;->A04:I

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A03:I

    .line 78344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/util/List;

    .line 78345
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p3, :cond_0

    .line 78346
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 78347
    .local v5, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 78348
    invoke-virtual {v3, v5, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 78349
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A02:I

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 78350
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78351
    .local v6, "dotImage":Landroid/widget/ImageView;
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78352
    .local v7, "dotImageParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0t:I

    invoke-virtual {v1, v7, v7, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78353
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 78354
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78355
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78357
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/bj;->addView(Landroid/view/View;)V

    .line 78358
    .end local v5    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "dotImage":Landroid/widget/ImageView;
    .end local v7    # "dotImageParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78359
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/bj;->A00(I)V

    .line 78360
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 5

    .line 78361
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:I

    if-ne v0, p1, :cond_0

    .line 78362
    return-void

    .line 78363
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:I

    .line 78364
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 78365
    if-ne v4, p1, :cond_1

    .line 78366
    iget v3, p0, Lcom/facebook/ads/redexgen/X/bj;->A04:I

    .line 78367
    .local v1, "bgColor":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/bj;->A04:I

    .line 78368
    .local v2, "borderColor":I
    .restart local v2    # "borderColor":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A02:I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 78369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 78370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 78371
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78372
    .end local v1    # "bgColor":I
    .end local v2    # "borderColor":I
    :cond_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/bj;->A03:I

    .line 78373
    .restart local v1    # "bgColor":I
    const/4 v2, 0x0

    goto :goto_1

    .line 78374
    .end local v0    # "i":I
    .end local v1    # "bgColor":I
    .end local v2
    :cond_2
    return-void
.end method
