.class public final Lcom/facebook/ads/redexgen/X/6J;
.super Lcom/facebook/ads/redexgen/X/Ka;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:I


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 430
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ccLmdgMtf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "50lpHgsnQSuWf1CWCacJGyiAwAWsDUud"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Nq2vo108Bdlpu7LWCjcAC5dDG31maruF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TAe0PaklKNA7XHBVlxrhZCtyBfgeydAO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ouUdcivF6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IAXVD4SBpgtyrGYWX4yc8p2wBrUpSeUf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nA5GNdAWyE31pAGlKcdnPdOQEY7Q2fwD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a5Dyr8HKQP9cZfy0xnx35qJg31dQk6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6J;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6J;->A01()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/6J;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
    .locals 6

    .line 16436
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ka;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 16437
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Z

    .line 16438
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    .line 16439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    if-nez v0, :cond_0

    .line 16440
    return-void

    .line 16441
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A1S()V

    .line 16442
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Z

    const/4 v5, -0x1

    if-eqz v0, :cond_3

    .line 16443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16444
    .end local v0
    .end local v1
    .end local v2
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    .line 16445
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XS;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v2

    .line 16446
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/XR;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 16447
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 16448
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 16449
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 16450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 16451
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-eqz v0, :cond_2

    .line 16452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/c8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c8;-><init>(Lcom/facebook/ads/redexgen/X/6J;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16453
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->bringToFront()V

    .line 16454
    return-void

    .line 16455
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16456
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    .line 16457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/c9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c9;-><init>(Lcom/facebook/ads/redexgen/X/6J;)V

    .line 16458
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 16459
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16460
    .local v0, "insideContainerLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16461
    .local v2, "insideContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16462
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16463
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16464
    .local v1, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16465
    sget v2, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 16466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16467
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/6J;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/6J;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6J;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6J;->A03:[Ljava/lang/String;

    const-string v1, "FT3046kmt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "J6Q3a22Lt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x47

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/6J;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x25t
        0x21t
        0x2dt
        0x2bt
        0x29t
    .end array-data
.end method


# virtual methods
.method public final A0A()Z
    .locals 1

    .line 16468
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 1

    .line 16469
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4

    .line 16470
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ka;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 16471
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Z

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16472
    sget v1, Lcom/facebook/ads/redexgen/X/6J;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 16473
    .local v0, "availableWidthPx":I
    int-to-double v2, v1

    div-double/2addr v2, p3

    double-to-int v1, v2

    .line 16474
    .local v1, "mediaHeight":I
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16475
    .local v2, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16476
    sget v2, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 16477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A00:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16478
    .end local v0    # "availableWidthPx":I
    .end local v1    # "mediaHeight":I
    .end local v2    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public final A1O()Z
    .locals 1

    .line 16479
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6J;->A01:Z

    return v0
.end method

.method public final A1R(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bF;
    .locals 15

    .line 16480
    new-instance v2, Lcom/facebook/ads/redexgen/X/Kd;

    .line 16481
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    .line 16482
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/Ka;->A0F:I

    .line 16483
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A00()Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NW;->A05:Lcom/facebook/ads/redexgen/X/NW;

    if-ne v1, v0, :cond_0

    const/4 v6, 0x1

    .line 16484
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v7

    .line 16485
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Z

    move-result v8

    .line 16486
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v10

    .line 16487
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v11

    .line 16488
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0F()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v12

    .line 16489
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0A()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v13

    .line 16490
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v14

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/Kd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 16491
    return-object v2

    .line 16492
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final synthetic A1X(Landroid/view/View;)V
    .locals 4

    .line 16493
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    return-void
.end method
