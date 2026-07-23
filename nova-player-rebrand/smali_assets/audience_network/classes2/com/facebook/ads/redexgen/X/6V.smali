.class public final Lcom/facebook/ads/redexgen/X/6V;
.super Lcom/facebook/ads/redexgen/X/LK;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 438
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KzTy2hy9hhtw1RMGA4AWQtLCSBRvIgNx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TFXx3faCMHKsw8ZQwSQJp4p3qrvSFGQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FDPqMwfpfrBnIs9VqOwKhGqv0efVrSDC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "w99CmZO3gVFe1JaqJ0AV2MifxVBEUT0K"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IReileYPgfNfW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qab6Yr7DAj1gKX83C9lxa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vvhOodmvLfB1cs4WARwmrAXLlmUlw4y7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/high16 v1, 0x43180000    # 152.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/6V;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V
    .locals 16

    .line 17401
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v15, p14

    move-object/from16 v14, p13

    move-object/from16 v13, p12

    move-object/from16 v12, p11

    move-object/from16 v11, p10

    move-object/from16 v10, p9

    move-object/from16 v9, p8

    move-object/from16 v8, p7

    move-object/from16 v7, p6

    move-object/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/LK;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V

    .line 17402
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6V;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17403
    .local v0, "orientation":I
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6V;->A00()V

    .line 17404
    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A07(I)V

    .line 17405
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A09(I)V

    .line 17406
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 17407
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A06(I)V

    .line 17408
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A02(I)V

    .line 17409
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)V

    .line 17410
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/6V;->A0A(Landroid/view/View;I)V

    .line 17411
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/6V;->A0A(Landroid/view/View;I)V

    .line 17412
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A04(I)V

    .line 17413
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A03(I)V

    .line 17414
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/6V;->A08(I)V

    .line 17415
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/6V;->A0B(Landroid/widget/TextView;I)V

    .line 17416
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->addView(Landroid/view/View;)V

    .line 17417
    return-void
.end method

.method private A00()V
    .locals 3

    .line 17418
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17419
    .local v0, "childLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17420
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 17421
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17422
    .local v2, "screenWidth":I
    int-to-float v1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 17423
    .local p0, "margin":I
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17425
    return-void
.end method

.method private A01(I)V
    .locals 4

    .line 17426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17427
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "77Sm8WMgdJozvQKOpKshJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17428
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 17429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LK;->A10(Landroid/widget/RelativeLayout;)V

    .line 17430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17431
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17432
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17433
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17437
    :goto_0
    return-void

    .line 17438
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17439
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17441
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17442
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LK;->A10(Landroid/widget/RelativeLayout;)V

    .line 17444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17445
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method private A02(I)V
    .locals 4

    .line 17450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    .line 17451
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17452
    .local v0, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17453
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17454
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17456
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 17457
    return-void
.end method

.method private A03(I)V
    .locals 6

    .line 17458
    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0g:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17459
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_0

    .line 17460
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v2, v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17462
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17464
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A0p()V

    .line 17465
    return-void

    .line 17466
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17467
    sget v3, Lcom/facebook/ads/redexgen/X/LK;->A0e:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "Dd2RBNBmNkHhqsYmFaiUI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17468
    :cond_2
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private A04(I)V
    .locals 6

    .line 17470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    .line 17471
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17472
    .local v0, "chevronUpParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x3

    if-ne p1, v0, :cond_0

    .line 17473
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17474
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17475
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17476
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17478
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17479
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17480
    return-void
.end method

.method private A05(I)V
    .locals 4

    .line 17481
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17482
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 17483
    const/4 v2, 0x1

    const/16 v0, 0xb

    const/4 v1, 0x7

    if-ne p1, v2, :cond_0

    .line 17484
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17486
    const/4 v0, 0x0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 17487
    :goto_0
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17489
    return-void

    .line 17490
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17491
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17492
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private A06(I)V
    .locals 5

    .line 17493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    .line 17494
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17495
    .local v0, "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v4, 0x41900000    # 18.0f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 17496
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0p:I

    .line 17497
    .local v2, "horizontalMargin":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17499
    .end local v3
    .restart local v2    # "horizontalMargin":I
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17500
    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17502
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17503
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17505
    return-void

    .line 17506
    .end local v2    # "horizontalMargin":I
    :cond_0
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    .line 17507
    .local v3, "horizontalMargin":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 17510
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private A07(I)V
    .locals 6

    .line 17512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    .line 17513
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17514
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v5, 0x0

    if-ne p1, v0, :cond_1

    .line 17515
    sget v0, Lcom/facebook/ads/redexgen/X/6V;->A01:I

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17516
    sget v0, Lcom/facebook/ads/redexgen/X/6V;->A01:I

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17517
    sget v0, Lcom/facebook/ads/redexgen/X/6V;->A01:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    .line 17518
    .local v1, "topMargin":I
    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17519
    const/16 v0, 0x1e

    .line 17520
    .local v1, "radius":I
    .local v1, "radius":I
    :goto_0
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0a:Z

    if-nez v1, :cond_0

    .line 17521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 17522
    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17524
    return-void

    .line 17525
    .end local v1    # "radius":I
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17526
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17527
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "p"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0f:I

    .line 17528
    .local v1, "size":I
    :goto_1
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17529
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17530
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17531
    const/16 v0, 0xf

    goto :goto_0

    .line 17532
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0m:I

    goto :goto_1
.end method

.method private A08(I)V
    .locals 5

    .line 17533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    .line 17534
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17535
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-ne p1, v0, :cond_4

    .line 17536
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 17538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17539
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_1

    .line 17540
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17541
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0l:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17542
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17543
    return-void

    .line 17544
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_2

    .line 17545
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17546
    :cond_2
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0g:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17547
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17548
    :cond_4
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17550
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private A09(I)V
    .locals 5

    .line 17551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    .line 17552
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17553
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 17555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17557
    :goto_0
    const/4 v2, 0x0

    .line 17558
    .local v1, "horizontalMargin":I
    if-ne p1, v4, :cond_0

    .line 17559
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    .line 17560
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17561
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17564
    return-void

    .line 17565
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private A0A(Landroid/view/View;I)V
    .locals 4

    .line 17567
    if-eqz p1, :cond_0

    .line 17568
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17569
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    .line 17570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17571
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17572
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17573
    :goto_1
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17574
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17575
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 17576
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 17577
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17578
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v1, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private A0B(Landroid/widget/TextView;I)V
    .locals 8

    .line 17579
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 17580
    .end local v0
    :cond_0
    return-void

    .line 17581
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17582
    .local v0, "textViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "MzAm3HoD6orDxlJQlGTEx6IPe7UcdOUI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v4, 0x2

    if-ne p2, v7, :cond_6

    .line 17583
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_2

    .line 17585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17586
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17587
    :goto_1
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17588
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17589
    return-void

    .line 17590
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_4

    .line 17591
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "7zj9JJJnjsPUDa1S35qln"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "ItVyc3UmcGyu1CZchDJaM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17592
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 17593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17594
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17595
    :cond_6
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17596
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_7

    .line 17597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/6V;->A00:[Ljava/lang/String;

    const-string v1, "R3yRGwLLrpZeNDGI2NMpzxnpAOR0imjx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0l(I)V
    .locals 3

    .line 17598
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0l(I)V

    .line 17599
    const/16 v0, 0xb

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 17600
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6V;->A00()V

    .line 17601
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A07(I)V

    .line 17602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A0B(Landroid/widget/TextView;I)V

    .line 17603
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A08(I)V

    .line 17604
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A04(I)V

    .line 17605
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A03(I)V

    .line 17606
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A09(I)V

    .line 17607
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A06(I)V

    .line 17608
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A02(I)V

    .line 17609
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)V

    .line 17610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A0A(Landroid/view/View;I)V

    .line 17611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A0A(Landroid/view/View;I)V

    .line 17612
    return-void
.end method

.method public final A0u(I)V
    .locals 2

    .line 17613
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0b:Z

    if-eqz v0, :cond_0

    .line 17614
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 17615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17616
    :cond_0
    return-void
.end method

.method public final A0y(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V
    .locals 3

    .line 17617
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 17618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    .line 17619
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17620
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17625
    .end local v0    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/6V;->A01(I)V

    .line 17626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17627
    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 17628
    :cond_1
    return-void
.end method
