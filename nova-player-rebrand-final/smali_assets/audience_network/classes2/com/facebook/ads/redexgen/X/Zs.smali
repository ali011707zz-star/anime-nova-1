.class public final Lcom/facebook/ads/redexgen/X/Zs;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:Landroid/widget/LinearLayout$LayoutParams;

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 2584
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zs;->A05:I

    .line 2585
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x402d000000000000L    # 14.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/Zs;->A06:I

    .line 2586
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zs;->A04:I

    .line 2587
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zs;->A03:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 5

    .line 75939
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75940
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Landroid/widget/ImageView;

    .line 75941
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75942
    sget v2, Lcom/facebook/ads/redexgen/X/Zs;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zs;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75943
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75945
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    .line 75946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Zs;->A05:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 75948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zs;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75949
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:Landroid/widget/TextView;

    .line 75950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:Landroid/widget/TextView;

    invoke-static {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75951
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:Landroid/widget/TextView;

    const v0, -0xe3e1df

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75952
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zs;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75953
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Zs;->setOrientation(I)V

    .line 75954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->addView(Landroid/view/View;)V

    .line 75955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->addView(Landroid/view/View;)V

    .line 75956
    return-void
.end method


# virtual methods
.method public setInfo(Lcom/facebook/ads/redexgen/X/YM;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 75957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75959
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 75960
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zs;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75961
    .local v0, "subtitleTextView":Landroid/widget/TextView;
    const/16 v0, 0xe

    invoke-static {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75962
    const v0, -0x9f9890

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75963
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zs;->A03:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75965
    sget v1, Lcom/facebook/ads/redexgen/X/Zs;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zs;->A05:I

    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setPadding(IIII)V

    .line 75966
    .end local v0    # "subtitleTextView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 75967
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Zs;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zs;->A06:I

    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setPadding(IIII)V

    goto :goto_0
.end method
