.class public final Lcom/facebook/ads/redexgen/X/dw;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/jd;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2736
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z2KkNK0t6KPvvV7v0Pfs0ockFnineQcN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GWLtb6W2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CYh1D1aDH8GxXA1fL6TVYK05g"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eN61XRBP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dYdZ9dqAg1GcZtXShOb537F12aTOHlg0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R696iMXnds0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sKzTiX3IBPhCg8a0C2DYkpqsAkNZU1R0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VXZMHsNHJCW6CRJi5CzP8gyptK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dw;->A02:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0R:I

    sput v0, Lcom/facebook/ads/redexgen/X/dw;->A03:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 3

    .line 80503
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80504
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 80505
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 80506
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    .line 80507
    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 80508
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dw;->getSplashScreenContent()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/dw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80509
    return-void
.end method

.method private A00(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 80510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80511
    .local v0, "loadingTextView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 80513
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 80514
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80515
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80516
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80517
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80518
    .local v1, "loadingParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80519
    return-object v2
.end method

.method private getAppIcon()Lcom/facebook/ads/redexgen/X/bk;
    .locals 5

    .line 80520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80521
    .local v0, "iconView":Lcom/facebook/ads/redexgen/X/bk;
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 80522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v4, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    sget v1, Lcom/facebook/ads/redexgen/X/dw;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/dw;->A03:I

    .line 80523
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 80524
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 80525
    sget v2, Lcom/facebook/ads/redexgen/X/dw;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/dw;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80526
    .local v2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80527
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80528
    return-object v4
.end method

.method private getSplashScreenContent()Landroid/widget/LinearLayout;
    .locals 5

    .line 80529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80530
    .local v0, "splashScreenContent":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80531
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80532
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dw;->getAppIcon()Lcom/facebook/ads/redexgen/X/bk;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80533
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dw;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 80536
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0R()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/dw;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 80537
    sget-object v2, Lcom/facebook/ads/redexgen/X/dw;->A02:[Ljava/lang/String;

    const-string v1, "EsVH3Bp8ZrJsopZmogAWlKdK6w"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/dw;->A00(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 80538
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80539
    :cond_0
    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private getTitleText()Landroid/widget/TextView;
    .locals 4

    .line 80540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80541
    .local v0, "titleTextView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 80542
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 80543
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80545
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80546
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80547
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80548
    .local v1, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80549
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80550
    return-object v3
.end method
