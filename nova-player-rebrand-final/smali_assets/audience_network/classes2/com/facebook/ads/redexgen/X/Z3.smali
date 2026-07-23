.class public final Lcom/facebook/ads/redexgen/X/Z3;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public final A01:Landroid/widget/Button;

.field public final A02:Landroid/widget/Button;

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout;

.field public final A05:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2545
    const/high16 v1, 0x42700000    # 60.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z3;->A08:I

    .line 2546
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z3;->A07:I

    .line 2547
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z3;->A09:I

    .line 2548
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z3;->A0A:I

    .line 2549
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 74765
    move-object v3, p0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74766
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A05:Landroid/widget/TextView;

    .line 74767
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    .line 74768
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    .line 74769
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A03:Landroid/widget/ImageView;

    .line 74770
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    .line 74771
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74772
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    .line 74773
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74774
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74775
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A05:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/16 v6, 0x14

    invoke-static {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 74776
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    const/16 v8, 0x12

    if-eqz v0, :cond_1

    .line 74777
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74778
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74779
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v1, v0, v8}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 74780
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A03:Landroid/widget/ImageView;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74781
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74782
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74783
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    invoke-static {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 74784
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 74785
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 74786
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    sget v4, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    sget v2, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    invoke-virtual {v5, v4, v2, v1, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 74787
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74788
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    invoke-static {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 74789
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 74790
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 74791
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    sget v4, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    sget v2, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A06:I

    invoke-virtual {v5, v4, v2, v1, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 74792
    invoke-static {p3, v6}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v2

    .line 74793
    .local v4, "negativeButtonColor":I
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A07:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0Q(Landroid/view/View;II)V

    .line 74794
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A07:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0Q(Landroid/view/View;II)V

    .line 74795
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z3;->A00()V

    .line 74796
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Z3;->setGravity(I)V

    .line 74797
    return-void
.end method

.method private A00()V
    .locals 7

    .line 74798
    sget v3, Lcom/facebook/ads/redexgen/X/Z3;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/Z3;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/Z3;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A0A:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z3;->setPadding(IIII)V

    .line 74799
    const/4 v6, -0x1

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74800
    .local v0, "containerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 74802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Z3;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74803
    sget v1, Lcom/facebook/ads/redexgen/X/Z3;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A08:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74804
    .local v3, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A09:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74805
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74806
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74807
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74808
    .local v4, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A09:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A05:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 74810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74812
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74813
    .local v5, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A09:I

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 74815
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74816
    .end local v5    # "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74817
    .local v1, "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Z3;->A09:I

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74820
    return-void
.end method
