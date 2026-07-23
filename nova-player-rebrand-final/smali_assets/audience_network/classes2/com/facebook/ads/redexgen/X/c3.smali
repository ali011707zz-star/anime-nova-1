.class public abstract Lcom/facebook/ads/redexgen/X/c3;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Na;

.field public A01:Z

.field public A02:Lcom/facebook/ads/redexgen/X/aJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/VA;

.field public final A05:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A06:Lcom/facebook/ads/redexgen/X/bq;

.field public final A07:Lcom/facebook/ads/redexgen/X/c7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2661
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sput v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    .line 2662
    const/high16 v1, 0x41e00000    # 28.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/c3;->A09:I

    .line 2663
    const/high16 v1, 0x42000000    # 32.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/c3;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
    .locals 9

    .line 78650
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 78652
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 78653
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A04:Lcom/facebook/ads/redexgen/X/VA;

    .line 78654
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A00()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 78655
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    .line 78656
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    .line 78657
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/c3;->A01:Z

    .line 78658
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kr;

    .line 78659
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    .line 78660
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    .line 78661
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v4

    .line 78662
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v5

    .line 78663
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0F()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v6

    .line 78664
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0A()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v7

    .line 78665
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A09()Lcom/facebook/ads/redexgen/X/Xh;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Xh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    .line 78666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A02()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->setRoundedCornersEnabled(Z)V

    .line 78667
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A0A()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->setViewShowsOverMedia(Z)V

    .line 78668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A04()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setV2Design(Z)V

    .line 78669
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 78670
    new-instance v0, Lcom/facebook/ads/redexgen/X/bq;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/c3;->A01:Z

    .line 78671
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A03()Z

    move-result v4

    .line 78672
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A0B()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A06:Lcom/facebook/ads/redexgen/X/bq;

    .line 78673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 78674
    return-void

    .line 78675
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A00()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/Yh;)Lcom/facebook/ads/redexgen/X/aJ;
    .locals 7

    .line 78676
    move-object v2, p2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v6

    .line 78677
    const/4 v1, 0x1

    move-object v4, p5

    move-object v5, p4

    move-object v3, p3

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    .line 78678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 78679
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78680
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    const/16 v3, 0x9

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 78681
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0r:I

    invoke-virtual {v4, v1, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78682
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78683
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78684
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    return-object v0

    .line 78686
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v1, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78687
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78688
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)Lcom/facebook/ads/redexgen/X/aN;
    .locals 5

    .line 78689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 78690
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 78691
    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v4

    .line 78692
    .local v0, "creditLineStaticView":Lcom/facebook/ads/redexgen/X/aN;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 78693
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78694
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78695
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78696
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78697
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/aN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78698
    return-object v4
.end method

.method public A02()Z
    .locals 1

    .line 78699
    const/4 v0, 0x1

    return v0
.end method

.method public A03()Z
    .locals 1

    .line 78700
    const/4 v0, 0x1

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 78701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    if-nez v0, :cond_2

    .line 78702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 78703
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1y()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 78704
    :goto_0
    return v0

    .line 78705
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78706
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1n()Z

    move-result v0

    return v0
.end method

.method public A0A()Z
    .locals 1

    .line 78707
    const/4 v0, 0x1

    return v0
.end method

.method public A0B()Z
    .locals 1

    .line 78708
    const/4 v0, 0x1

    return v0
.end method

.method public A1B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 78709
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public A1C()V
    .locals 1

    .line 78710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 78711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0O()V

    .line 78712
    :cond_0
    return-void
.end method

.method public A1D()V
    .locals 0

    .line 78713
    return-void
.end method

.method public A1E()V
    .locals 0

    .line 78714
    return-void
.end method

.method public A1F()V
    .locals 0

    .line 78715
    return-void
.end method

.method public A1G()V
    .locals 0

    .line 78716
    return-void
.end method

.method public A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 9

    .line 78717
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c3;->A06:Lcom/facebook/ads/redexgen/X/bq;

    .line 78718
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0F()Ljava/lang/String;

    move-result-object v4

    .line 78719
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A04()Ljava/lang/String;

    move-result-object v5

    .line 78720
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1O()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 78721
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/bq;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78722
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;)V

    .line 78723
    return-void

    .line 78724
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public A1I(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 78725
    return-void
.end method

.method public A1J(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 0

    .line 78726
    return-void
.end method

.method public A1K(Lcom/facebook/ads/redexgen/X/4A;I)V
    .locals 0

    .line 78727
    return-void
.end method

.method public A1L(Z)V
    .locals 1

    .line 78728
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 78729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 78730
    :cond_0
    return-void
.end method

.method public A1M()Z
    .locals 1

    .line 78731
    const/4 v0, 0x0

    return v0
.end method

.method public A1N()Z
    .locals 1

    .line 78732
    const/4 v0, 0x1

    return v0
.end method

.method public abstract A1O()Z
.end method

.method public A1P(Z)Z
    .locals 1

    .line 78733
    const/4 v0, 0x0

    return v0
.end method

.method public getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 78734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A03:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;
    .locals 1

    .line 78735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A04:Lcom/facebook/ads/redexgen/X/VA;

    return-object v0
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 78736
    const/4 v0, 0x0

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 78737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 1

    .line 78738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    return-object v0
.end method

.method public getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;
    .locals 1

    .line 78739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A06:Lcom/facebook/ads/redexgen/X/bq;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 78740
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78741
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 78742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    .line 78743
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    .line 78744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->A0A()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->setViewShowsOverMedia(Z)V

    .line 78745
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A05:Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/Na;)V

    .line 78746
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c3;->A06:Lcom/facebook/ads/redexgen/X/bq;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/Na;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A01:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bq;->A03(Lcom/facebook/ads/redexgen/X/Na;Z)V

    .line 78747
    return-void

    .line 78748
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A00()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    goto :goto_0
.end method

.method public setAccidentalClickCappingListener(Lcom/facebook/ads/redexgen/X/Mr;)V
    .locals 1

    .line 78749
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    .line 78750
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;

    move-result-object v0

    .line 78751
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bV;->A07(Lcom/facebook/ads/redexgen/X/Mr;)V

    .line 78752
    return-void
.end method

.method public setChainedWatchAndBrowseSkippableStatus(Z)V
    .locals 0

    .line 78753
    return-void
.end method
