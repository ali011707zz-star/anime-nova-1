.class public final Lcom/facebook/ads/redexgen/X/cd;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/Kr;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2672
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cd;->A05:I

    .line 2673
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cd;->A06:I

    .line 2674
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cd;->A03:I

    .line 2675
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cd;->A04:I

    .line 2676
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cd;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 15

    .line 79267
    move-object v3, p0

    move-object/from16 v7, p1

    invoke-direct {p0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79268
    const/4 v5, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Na;->A09(Z)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A00:I

    .line 79269
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A01:Landroid/widget/RelativeLayout;

    .line 79270
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79271
    .local p0, "containerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/cd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79272
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/cd;->A01:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 79273
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v7, v0}, Lcom/facebook/ads/redexgen/X/cd;->A01(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V

    .line 79274
    move-object/from16 v0, p2

    if-eqz v0, :cond_0

    .line 79275
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    .line 79276
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cd;->A03()V

    .line 79277
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    .line 79278
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v2

    .line 79279
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79280
    move-object/from16 v6, p9

    invoke-virtual {v4, v2, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 79281
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Kr;->setIsInAppBrowser(Z)V

    .line 79282
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79283
    .local v1, "ctaButtonParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/cd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79284
    return-void

    .line 79285
    :cond_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/Kr;

    .line 79286
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v8

    .line 79287
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v14

    const/4 v9, 0x0

    move-object v0, v6

    move-object/from16 v13, p7

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View;)V
    .locals 6

    .line 79288
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79289
    .local v0, "arrowButton":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0r:Lcom/facebook/ads/redexgen/X/YM;

    .line 79290
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79291
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79292
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 79293
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 79294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A00:I

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 79295
    sget v1, Lcom/facebook/ads/redexgen/X/cd;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/cd;->A03:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79296
    .local v1, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/cd;->A04:I

    sget v2, Lcom/facebook/ads/redexgen/X/cd;->A04:I

    sget v1, Lcom/facebook/ads/redexgen/X/cd;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/cd;->A04:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 79297
    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79298
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79300
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V
    .locals 4

    .line 79301
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 79302
    .local v0, "innerCta":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 79303
    sget v2, Lcom/facebook/ads/redexgen/X/cd;->A06:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/cd;->A06:I

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79305
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79306
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79307
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cd;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/cd;->A07:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0Q(Landroid/view/View;II)V

    .line 79308
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79309
    const/4 v2, -0x2

    sget v0, Lcom/facebook/ads/redexgen/X/cd;->A05:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79310
    .local v1, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79311
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79313
    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/cd;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View;)V

    .line 79314
    return-void
.end method


# virtual methods
.method public final A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 79315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 2

    .line 79316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->setBackgroundColor(I)V

    .line 79317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->setTextColor(I)V

    .line 79318
    return-void
.end method

.method public final performClick()Z
    .locals 1

    .line 79319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAutoClickTime(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 1

    .line 79320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kr;->A0F(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)Z

    .line 79321
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Nc;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/bU;",
            ")V"
        }
    .end annotation

    .line 79322
    .local p3, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 79323
    return-void
.end method
