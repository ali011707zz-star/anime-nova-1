.class public final Lcom/facebook/ads/redexgen/X/Kd;
.super Lcom/facebook/ads/redexgen/X/bF;
.source ""


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I

.field public static final A0S:I

.field public static final A0T:I

.field public static final A0U:I

.field public static final A0V:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/NY;

.field public A07:Lcom/facebook/ads/redexgen/X/Na;

.field public A08:Lcom/facebook/ads/redexgen/X/Nc;

.field public A09:Lcom/facebook/ads/redexgen/X/bm;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Landroid/widget/LinearLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/RelativeLayout;

.field public final A0G:Landroid/widget/TextView;

.field public final A0H:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0I:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 922
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "U1MfpI1C6bH5E6SUUi1isARh9jp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ubu5RVHkDHh3GnMyAX4EkYenDqWvQs6J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Crj7vvGLMnYJtX1VpNFn8xcnVkyg9fPV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3oNG9AhO9bk5LTGV0GcEQxoD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kfjfnNCZtD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "orAcnrCTNYiJWv2aZLW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kd;->A09()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0U:I

    .line 923
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    .line 924
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0P:I

    .line 925
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0g:I

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0L:I

    .line 926
    const/high16 v1, 0x43100000    # 144.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0N:I

    .line 927
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0M:I

    .line 928
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0Q:I

    .line 929
    const/high16 v1, 0x41600000    # 14.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0V:I

    .line 930
    const/high16 v1, 0x41a80000    # 21.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0R:I

    .line 931
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0S:I

    .line 932
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kd;->A0T:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;ZLjava/lang/String;Z)V
    .locals 18

    .line 48008
    move-object/from16 v2, p0

    move-object v2, v2

    move-object v4, v2

    move-object/from16 v17, p14

    move/from16 v16, p13

    move-object/from16 v15, p12

    move-object/from16 v14, p11

    move-object/from16 v13, p10

    move-object/from16 v12, p9

    move-object/from16 v11, p8

    move-object/from16 v10, p7

    move/from16 v9, p6

    move-object/from16 v8, p5

    move/from16 v7, p3

    move-object/from16 v6, p2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v17}, Lcom/facebook/ads/redexgen/X/bF;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;ILcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;ZLjava/lang/String;)V

    .line 48009
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0C:Z

    .line 48010
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A00:I

    .line 48011
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A01:I

    .line 48012
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0A:Z

    .line 48013
    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0H:Lcom/facebook/ads/redexgen/X/gi;

    .line 48014
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;->setFullCircleCorners(Z)V

    .line 48015
    sget v4, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    sget v3, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    sget v1, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0L:I

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->setPadding(IIII)V

    .line 48016
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    .line 48017
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    .line 48018
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    .line 48019
    new-instance v9, Lcom/facebook/ads/redexgen/X/bm;

    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0H:Lcom/facebook/ads/redexgen/X/gi;

    sget v11, Lcom/facebook/ads/redexgen/X/Kd;->A0V:I

    sget v13, Lcom/facebook/ads/redexgen/X/Kd;->A0U:I

    const/4 v14, -0x1

    const/4 v12, 0x5

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/bm;-><init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/bm;

    .line 48020
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0F:Landroid/widget/RelativeLayout;

    .line 48021
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    .line 48022
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    .line 48023
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    .line 48024
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 48025
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 48026
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    .line 48027
    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Na;

    .line 48028
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0I:Z

    .line 48029
    invoke-static {v2, v5}, Lcom/facebook/ads/redexgen/X/YB;->A0U(Landroid/view/View;Landroid/content/Context;)V

    .line 48030
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0H:Lcom/facebook/ads/redexgen/X/gi;

    .line 48031
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Z

    .line 48032
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Kd;->A0A()V

    .line 48033
    if-eqz p15, :cond_0

    .line 48034
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48035
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48036
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 16

    .line 48037
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v12

    .line 48038
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/NQ;->A1k()Z

    move-result v13

    .line 48039
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/NQ;->A13()Ljava/lang/String;

    move-result-object v14

    .line 48040
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/NQ;->A1t()Z

    move-result v15

    .line 48041
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    move-object/from16 v10, p10

    move-object/from16 v9, p9

    move-object/from16 v8, p8

    move-object/from16 v7, p7

    move-object/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/Kd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;ZLjava/lang/String;Z)V

    .line 48042
    return-void
.end method

.method private A00(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 48043
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 48044
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 48045
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48046
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kd;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 48047
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 48048
    const/4 v2, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0M:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48049
    .local v0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48050
    return-void
.end method

.method private A03()V
    .locals 7

    .line 48051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48052
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48053
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48054
    .local v0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 48057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 48060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    .line 48061
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Na;->A06(Z)I

    move-result v0

    .line 48062
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 48064
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0I:Z

    if-eqz v0, :cond_0

    .line 48065
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48066
    .local v1, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48067
    return-void

    .line 48068
    .end local v1    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 48069
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A04()V
    .locals 8

    .line 48070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 48071
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48072
    .local v0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 48073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 48075
    iget v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A04:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48076
    .local v2, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48077
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48078
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48079
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48080
    .local v4, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0P:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 48081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48082
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 48085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 48086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48087
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    .line 48088
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 48089
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48090
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 48091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 48092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48094
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0Q:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48095
    .local v3, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0P:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 48096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48097
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 48099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/bm;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/bm;->setGravity(I)V

    .line 48100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48101
    .local p1, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/bm;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48102
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    .line 48103
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 48104
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 48106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 48107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 48108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48109
    .local v1, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0P:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 48110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48111
    return-void

    .line 48112
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 48113
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private A05()V
    .locals 4

    .line 48114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 48115
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48116
    .local v0, "descriptionTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0S:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48118
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    const/16 v0, 0xf

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 48120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48121
    .end local v0    # "descriptionTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 6

    .line 48122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 48123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 48124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48125
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48126
    .local v0, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Kd;->A0R:I

    sget v1, Lcom/facebook/ads/redexgen/X/Kd;->A0R:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48127
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48128
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/Kd;->A0S:I

    sget v2, Lcom/facebook/ads/redexgen/X/Kd;->A0S:I

    sget v1, Lcom/facebook/ads/redexgen/X/Kd;->A0S:I

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0S:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48130
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0T:I

    int-to-float v1, v0

    .line 48131
    const v0, -0x42d2d2d3

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Kd;->A00(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 48132
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 48133
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A05()V

    .line 48134
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A02()V

    .line 48135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 48136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48137
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48138
    .end local v0    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 4

    .line 48139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 48142
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    .line 48143
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0B:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A07:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 48144
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 48146
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 48147
    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48148
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0I:Z

    if-eqz v0, :cond_0

    .line 48149
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48150
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48152
    return-void

    .line 48153
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 48154
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A08()V
    .locals 5

    .line 48155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    if-nez v0, :cond_0

    .line 48156
    return-void

    .line 48157
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    const-string v1, "SIvKbfulzllrpdkfdrym2tho7PogZ3oV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48158
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A08:Lcom/facebook/ads/redexgen/X/Nc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 48162
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 48164
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48166
    :cond_3
    :goto_0
    return-void

    .line 48167
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48168
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/bm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bm;->setRating(F)V

    .line 48169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A09()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48170
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48171
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    .line 48172
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48173
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A0J:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x50t
        -0x40t
    .end array-data
.end method

.method private final A0A()V
    .locals 1

    .line 48174
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kd;->removeAllViews()V

    .line 48175
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0A:Z

    if-eqz v0, :cond_0

    .line 48176
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A0C()V

    .line 48177
    :goto_0
    return-void

    .line 48178
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A0B()V

    goto :goto_0
.end method

.method private final A0B()V
    .locals 5

    .line 48179
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->setWeightSum(F)V

    .line 48180
    const/4 v3, 0x0

    const/4 v4, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48181
    .local v0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    :goto_0
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48182
    sget v1, Lcom/facebook/ads/redexgen/X/Kd;->A0L:I

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0O:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 48183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 48185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    .line 48186
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Z

    if-nez v0, :cond_1

    .line 48187
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0M:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48188
    .local v2, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0L:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 48189
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48190
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48192
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0N:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setMinWidth(I)V

    .line 48193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 48194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    .line 48195
    .end local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 48196
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48197
    .local v2, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48198
    sget v0, Lcom/facebook/ads/redexgen/X/Kd;->A0P:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 48199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 48202
    return-void

    .line 48203
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 48204
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48205
    .local v2, "rewardContainerLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_1

    .line 48208
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0
.end method

.method private final A0C()V
    .locals 4

    .line 48209
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48210
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A04()V

    .line 48211
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A03()V

    .line 48212
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Z

    if-nez v0, :cond_4

    .line 48213
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A02()V

    .line 48214
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A07()V

    .line 48215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A08()V

    .line 48216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 48217
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Z

    if-nez v0, :cond_0

    .line 48218
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    const-string v1, "AjTT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 48219
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    .line 48220
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Z

    if-nez v0, :cond_3

    .line 48221
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    .line 48222
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 48223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    .line 48224
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kd;->A0K:[Ljava/lang/String;

    const-string v1, "rq1KML2CIBWnAolyigIp8Fd7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 48225
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 48226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 48227
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A06()V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0k()V
    .locals 2

    .line 48228
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/bF;->A0k()V

    .line 48229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A09:Lcom/facebook/ads/redexgen/X/bm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48231
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48233
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48234
    return-void
.end method

.method public final A0l(I)V
    .locals 1

    .line 48235
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0A:Z

    .line 48236
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0A:Z

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kd;->setOrientation(I)V

    .line 48237
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A0A()V

    .line 48238
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kd;->bringToFront()V

    .line 48239
    return-void

    .line 48240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 48241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0D:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 48242
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/bF;->onLayout(ZIIII)V

    .line 48243
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:I

    if-nez v0, :cond_0

    .line 48244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:I

    .line 48245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A0G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A01:I

    .line 48246
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 0

    .line 48247
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/bF;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 48248
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A06:Lcom/facebook/ads/redexgen/X/NY;

    .line 48249
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Kd;->A08:Lcom/facebook/ads/redexgen/X/Nc;

    .line 48250
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;->A08()V

    .line 48251
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 48252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48254
    return-void
.end method
