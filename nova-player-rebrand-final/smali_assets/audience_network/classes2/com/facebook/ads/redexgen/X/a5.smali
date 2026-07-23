.class public final Lcom/facebook/ads/redexgen/X/a5;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public final A00:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 3

    .line 76159
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76160
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A09:Lcom/facebook/ads/redexgen/X/YM;

    .line 76161
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a5;->A00:Landroid/graphics/Bitmap;

    .line 76162
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AAz(Ljava/lang/String;)V

    .line 76163
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a5;->A00()V

    .line 76164
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/a5;->setAdChoiceIcon(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 76165
    return-void
.end method

.method private A00()V
    .locals 5

    .line 76166
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/a5;->setOrientation(I)V

    .line 76167
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->setPadding(IIII)V

    .line 76168
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/a5;->setClipToPadding(Z)V

    .line 76169
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a5;->setGravity(I)V

    .line 76170
    const v0, -0x33363637

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 76171
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0C:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/YB;->A0E(FLandroid/widget/LinearLayout;)V

    .line 76172
    return-void
.end method

.method private setAdChoiceIcon(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 76173
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76174
    .local v0, "adChoiceIcon":Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 76175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a5;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76176
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76177
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 76178
    const/4 v2, -0x2

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76179
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76180
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/a5;->addView(Landroid/view/View;)V

    .line 76181
    return-void
.end method
