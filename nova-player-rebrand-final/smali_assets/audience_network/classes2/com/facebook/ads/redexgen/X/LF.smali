.class public final Lcom/facebook/ads/redexgen/X/LF;
.super Lcom/facebook/ads/redexgen/X/Os;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/jd;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/VA;

.field public final A05:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A06:Lcom/facebook/ads/redexgen/X/Yh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 969
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YL1yLKFo15UZj59z8sTirpPX5rRsAE8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "O"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "O6aHciR8nIcXgMvSQpLVacnv7HWgT320"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WCwGMxKVAM83NNo23MC3P4tNfApW0jy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jLj4WTNtvai9N9Pzwov0sYarXBGRxB6J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t8UiaIyNKCcrJZePb4XsdzT37H29Zzi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ckjPU6sQ4thPoQS3sFeS4HnUH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LF;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LF;->A03()V

    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    .line 970
    const/high16 v1, 0x42a80000    # 84.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LF;->A0D:I

    .line 971
    const/high16 v1, 0x41600000    # 14.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Os;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LF;->A0B:I

    .line 972
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/LF;->A09:I

    .line 973
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:I

    .line 974
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 4

    .line 49496
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Os;-><init>(Landroid/content/Context;)V

    .line 49497
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A05:Lcom/facebook/ads/redexgen/X/Y2;

    .line 49498
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 49499
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49500
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LF;->A04:Lcom/facebook/ads/redexgen/X/VA;

    .line 49501
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/LF;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    .line 49502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A05:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 49503
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Os;->setRadius(F)V

    .line 49504
    const/high16 v0, 0x42960000    # 75.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Os;->setMaxCardElevation(F)V

    .line 49505
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A01:Landroid/widget/RelativeLayout;

    .line 49506
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LF;->A01:Landroid/widget/RelativeLayout;

    .line 49507
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    .line 49508
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 49509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A00:Landroid/widget/LinearLayout;

    .line 49510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LF;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49511
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LF;->A02()V

    .line 49512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LF;->A01()V

    .line 49513
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LF;->A01:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LF;->A00:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LF;->A01:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49515
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LF;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 15

    .line 49516
    new-instance v5, Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A04:Lcom/facebook/ads/redexgen/X/ez;

    .line 49517
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49518
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49519
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Z

    move-result v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/LF;->A04:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/LF;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/LF;->A05:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49520
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v14

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;ZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 49521
    .local v0, "mCTAButton":Lcom/facebook/ads/redexgen/X/Kr;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bb;->setViewShowsOverMedia(Z)V

    .line 49522
    const/16 v0, 0x3e9

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 49523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49524
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49525
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49526
    const/4 v0, 0x0

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 49527
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49528
    .local v1, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 49529
    sget v3, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 49530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49531
    return-void
.end method

.method private A02()V
    .locals 16

    .line 49532
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49533
    .local v1, "iconAndDetailsContainer":Landroid/widget/RelativeLayout;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v9, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 49534
    .local v2, "iconView":Lcom/facebook/ads/redexgen/X/bk;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v9, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    sget v1, Lcom/facebook/ads/redexgen/X/LF;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0D:I

    .line 49535
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49536
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 49537
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/bk;->setFullCircleCorners(Z)V

    .line 49538
    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 49539
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 49540
    sget v2, Lcom/facebook/ads/redexgen/X/LF;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0D:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49541
    .local v5, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v3, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    invoke-virtual {v8, v4, v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49542
    const/16 v7, 0xe

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49543
    invoke-virtual {v5, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49544
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49545
    .local v7, "titleView":Landroid/widget/TextView;
    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 49546
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49547
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 49548
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49549
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49550
    const/16 v8, 0x11

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 49551
    const/4 v2, -0x1

    const/4 v4, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49552
    .local v9, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49553
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    const/4 v11, 0x3

    invoke-virtual {v3, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49554
    invoke-virtual {v5, v12, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49555
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49556
    .local v12, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 49557
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49558
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49559
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49560
    .local v14, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v9, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v8, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    invoke-virtual {v10, v9, v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49561
    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49562
    invoke-virtual {v12}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49563
    invoke-virtual {v5, v3, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49564
    new-instance v10, Lcom/facebook/ads/redexgen/X/bm;

    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    sget v12, Lcom/facebook/ads/redexgen/X/LF;->A0B:I

    sget v14, Lcom/facebook/ads/redexgen/X/LF;->A0A:I

    const/4 v15, -0x1

    const/4 v13, 0x5

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/bm;-><init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V

    .line 49565
    .local v3, "starRatingContainer":Lcom/facebook/ads/redexgen/X/bm;
    const/16 v9, 0x10

    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/bm;->setGravity(I)V

    .line 49566
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49567
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49568
    .local v13, "ratingCountView":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 49570
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49571
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 49572
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 49573
    invoke-static {v8, v1, v7}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 49574
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49575
    .local v8, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A09:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49576
    invoke-virtual {v3, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49577
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49578
    const/16 v7, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/LF;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49579
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49580
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49581
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 49582
    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/bm;->setRating(F)V

    .line 49583
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A09()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 49585
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49586
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A09()Ljava/lang/String;

    move-result-object v0

    .line 49587
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v7    # "titleView":Landroid/widget/TextView;
    .local p3, "titleView":Landroid/widget/TextView;
    int-to-long v0, v0

    .line 49588
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49589
    .local v4, "ratingCount":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49590
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/LF;->A08:[Ljava/lang/String;

    const-string v1, "pDxc6WlcrgExZnzDlKhHZoNjTSnAqRc0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JfppCwNpdT1PFGKwLRSAK2lJbowaAIWW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49591
    .end local v7
    .restart local p3
    :cond_2
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49592
    .local v4, "descriptionView":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 49593
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 49594
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49595
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49596
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 49597
    sget v7, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/LF;->A0C:I

    invoke-virtual {v8, v7, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49598
    const/4 v7, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49599
    .local v6, "descParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49600
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49601
    invoke-virtual {v5, v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49602
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49603
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x4

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49604
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49605
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/LF;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49606
    return-void
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LF;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1dt
        0x69t
    .end array-data
.end method
