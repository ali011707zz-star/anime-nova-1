.class public final Lcom/facebook/ads/redexgen/X/KZ;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XQ;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/jd;

.field public final A01:Lcom/facebook/ads/redexgen/X/XS;

.field public final A02:Lcom/facebook/ads/redexgen/X/Yh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 905
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jViytUMb8W4ggVUJxJM4ipopCTL5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9aLNfhHGIgyW1yw0lAvb2knTk6C61HAs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tSRmVjXXTSnTtzrce7INiQjRTYiInlbV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4hcdJiGUQmFME9vgh87fiTmYWHBJid0b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Sl93MFe7LYTqHCUKgRBPFfcYUFdC2Wx2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6CReOOSeiw7R4vGYWPFAi839J8MszZAI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rkSedGSxOJTtoP7gEY2R8PFp4jzzUrYJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HZKY5YyrBfN27m9O42YnVDeAUeo6GkfS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KZ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
    .locals 13

    .line 47467
    move-object v5, p0

    const/4 v1, 0x1

    invoke-direct {v5, p1, v1}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 47468
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/KZ;->A02:Lcom/facebook/ads/redexgen/X/Yh;

    .line 47469
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/KZ;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 47470
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47471
    .local v3, "bottomContainer":Landroid/widget/RelativeLayout;
    const/4 v8, -0x1

    const/4 v9, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47472
    .local v4, "bottomContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47473
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0U(Landroid/view/View;Landroid/content/Context;)V

    .line 47474
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47475
    .local v7, "auxContainer":Landroid/widget/LinearLayout;
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47476
    const/16 v0, 0x50

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47477
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 47478
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47479
    .local v8, "auxContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v7, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47480
    if-eqz p2, :cond_a

    const/4 v0, -0x2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47481
    .local v9, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_9

    sget v7, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    :goto_1
    if-eqz p2, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v7, v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47482
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47483
    .local v10, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47484
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 47485
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v0

    invoke-virtual {v10, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47486
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v7

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/KZ;->A00:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {v7, v0, v5}, Lcom/facebook/ads/redexgen/X/XS;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/KZ;->A01:Lcom/facebook/ads/redexgen/X/XS;

    .line 47487
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/KZ;->A01:Lcom/facebook/ads/redexgen/X/XS;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/KZ;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 47488
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/XS;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v7

    .line 47489
    .local v11, "supported":Lcom/facebook/ads/redexgen/X/XR;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 47490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v11

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 47491
    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 47492
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 47493
    nop

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v11, Lcom/facebook/ads/redexgen/X/e4;

    invoke-direct {v11, v0}, Lcom/facebook/ads/redexgen/X/e4;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 47494
    .local p0, "pageDetailsView":Lcom/facebook/ads/redexgen/X/e4;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/e4;->setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 47495
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A00()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->A05(Z)I

    move-result v0

    .line 47497
    .local v1, "textColor":I
    invoke-virtual {v11, v0, v0}, Lcom/facebook/ads/redexgen/X/e4;->A02(II)V

    .line 47498
    const/16 v0, 0x3ef

    invoke-static {v0, v11}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 47499
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47500
    .local p1, "pageDetailsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    invoke-virtual {v1, v12, v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47501
    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47502
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47503
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/e4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47504
    .end local v1    # "textColor":I
    .end local p0    # "pageDetailsView":Lcom/facebook/ads/redexgen/X/e4;
    .end local p1    # "pageDetailsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47505
    invoke-virtual {v4, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47506
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0F(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)Z

    .line 47507
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v2

    .line 47508
    .local v1, "mMediaView":Landroid/view/View;
    if-eqz v2, :cond_6

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-nez v0, :cond_1

    .line 47509
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47510
    :cond_1
    if-eqz p2, :cond_5

    .line 47511
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47512
    .local v6, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4
    const/16 v0, 0x11

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47513
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47514
    .local v12, "insideContainerLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47515
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47516
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/KZ;->A01:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 47517
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-eqz v0, :cond_4

    .line 47518
    new-instance v0, Lcom/facebook/ads/redexgen/X/bz;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/bz;-><init>(Lcom/facebook/ads/redexgen/X/KZ;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47519
    :cond_2
    :goto_5
    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/KZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47520
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47521
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bq;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 47522
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47523
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 47524
    :cond_3
    return-void

    .line 47525
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/c0;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Lcom/facebook/ads/redexgen/X/KZ;)V

    .line 47526
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 47527
    .end local v6    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    .line 47528
    .end local v6
    .end local v12    # "insideContainerLayout":Landroid/widget/FrameLayout;
    :cond_6
    if-eqz v2, :cond_2

    .line 47529
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v0}, Lcom/facebook/ads/redexgen/X/KZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 47530
    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_3

    .line 47531
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 47532
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A04:[Ljava/lang/String;

    const-string v1, "P3g3yiO3ICi92ZTGqQIjITPfAPWFUEMm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "pyBqNmisWoZkDTGCi8bHuToayw1uFlPn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x44t
        0x48t
        0x4et
        0x4ct
    .end array-data
.end method


# virtual methods
.method public final A1C()V
    .locals 1

    .line 47533
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 47534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XS;->A03()V

    .line 47535
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 47536
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/c3;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 47537
    return-void
.end method

.method public final A1O()Z
    .locals 1

    .line 47538
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic A1Q(Landroid/view/View;)V
    .locals 4

    .line 47539
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    return-void
.end method
