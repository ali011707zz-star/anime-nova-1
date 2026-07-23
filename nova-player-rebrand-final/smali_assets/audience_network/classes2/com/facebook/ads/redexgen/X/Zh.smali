.class public final Lcom/facebook/ads/redexgen/X/Zh;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public A00:Z

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2579
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zh;->A04:I

    .line 2580
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zh;->A05:I

    .line 2581
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zh;->A06:I

    .line 2582
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zh;->A03:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 75865
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Z

    .line 75867
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOrientation(I)V

    .line 75868
    sget v3, Lcom/facebook/ads/redexgen/X/Zh;->A04:I

    sget v2, Lcom/facebook/ads/redexgen/X/Zh;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zh;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zh;->A05:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setPadding(IIII)V

    .line 75869
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zh;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/widget/ImageView;

    .line 75870
    sget v1, Lcom/facebook/ads/redexgen/X/Zh;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zh;->A03:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75871
    .local v0, "imageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75872
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zh;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    .line 75873
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75874
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Zh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75876
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zh;->A00()V

    .line 75877
    return-void
.end method

.method private A00()V
    .locals 3

    .line 75878
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75879
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 75880
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Z

    if-eqz v0, :cond_1

    const v0, -0xca871b

    .line 75881
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75882
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 75883
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 75884
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75885
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Z

    if-eqz v0, :cond_0

    .line 75886
    const/4 v1, -0x1

    .line 75887
    .local v1, "textColor":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75889
    return-void

    .line 75890
    :cond_0
    const v1, -0x9f9890

    goto :goto_1

    .line 75891
    :cond_1
    const v0, -0x141210

    goto :goto_0
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 75892
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setSelected(Z)V

    .line 75893
    return-void
.end method

.method public setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 3

    .line 75894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75895
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 75896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Zh;->A06:I

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75899
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zh;->A00()V

    .line 75900
    return-void

    .line 75901
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 75903
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Z

    .line 75904
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zh;->A00()V

    .line 75905
    return-void
.end method
