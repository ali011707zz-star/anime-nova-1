.class public final Lcom/facebook/ads/redexgen/X/bR;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A0A:[Ljava/lang/String;

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I


# instance fields
.field public A00:Ljava/lang/Runnable;

.field public A01:Z

.field public A02:Z

.field public final A03:I

.field public final A04:Landroid/os/Handler;

.field public final A05:Landroid/widget/RelativeLayout;

.field public final A06:Lcom/facebook/ads/redexgen/X/jd;

.field public final A07:Lcom/facebook/ads/redexgen/X/gi;

.field public final A08:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2632
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kYsHPXjvuexLDNrmkTwQRT55JzcBiXge"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zR3fYtNBsqomhYEo3ppbb9RnVT1IpAxV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wFb9hYTzbBEOXc5fjtd4fRZ2PpBU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jmvb938kXbh75xCyq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "upuGJiFXYhI8XO38RIbXHNvluMbxxtSG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1OgTCiUraoc2pkcUsvx3qQ0hwrqmeKBW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dxUwSJcX1cxyOWbOOT9qAgg5mCGn3F5b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jNBoK2eCg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bR;->A0A:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0J:I

    sput v0, Lcom/facebook/ads/redexgen/X/bR;->A0F:I

    .line 2633
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0T:I

    sput v0, Lcom/facebook/ads/redexgen/X/bR;->A0B:I

    .line 2634
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    sput v0, Lcom/facebook/ads/redexgen/X/bR;->A0C:I

    .line 2635
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sput v0, Lcom/facebook/ads/redexgen/X/bR;->A0G:I

    .line 2636
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0H:I

    sput v0, Lcom/facebook/ads/redexgen/X/bR;->A0E:I

    .line 2637
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A08:I

    sput v0, Lcom/facebook/ads/redexgen/X/bR;->A0D:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Kr;IZ)V
    .locals 2

    .line 77708
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Z

    .line 77710
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A02:Z

    .line 77711
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A04:Landroid/os/Handler;

    .line 77712
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 77713
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bR;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 77714
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bR;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    .line 77715
    iput p4, p0, Lcom/facebook/ads/redexgen/X/bR;->A03:I

    .line 77716
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/bR;->A09:Z

    .line 77717
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A00()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    .line 77718
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bR;->A0I(I)V

    .line 77719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0D:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 77720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bR;->addView(Landroid/view/View;)V

    .line 77721
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A07()V

    .line 77722
    return-void
.end method

.method private A00()Landroid/widget/RelativeLayout;
    .locals 7

    .line 77723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77724
    .local v0, "bannerOverlayView":Landroid/widget/RelativeLayout;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 77725
    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0C:I

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0P(Landroid/view/View;II)V

    .line 77726
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 77727
    const/4 v6, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77728
    .local v1, "titleAndRatingsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    if-eqz v0, :cond_0

    .line 77730
    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0E:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77731
    .local v2, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77732
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77735
    .end local v2    # "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->getAppIcon()Lcom/facebook/ads/redexgen/X/bk;

    move-result-object v0

    .line 77736
    .local v2, "appIconView":Lcom/facebook/ads/redexgen/X/bk;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77737
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 77738
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77739
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->getTitleAndRatings()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77740
    return-object v4
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bR;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 77741
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bR;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 77742
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bR;)Lcom/facebook/ads/redexgen/X/Kr;
    .locals 0

    .line 77743
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bR;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    return-object p0
.end method

.method private A04()V
    .locals 3

    .line 77744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ADH()V

    .line 77745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    .line 77746
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0D:I

    int-to-float v0, v0

    .line 77747
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 77748
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bQ;-><init>(Lcom/facebook/ads/redexgen/X/bR;)V

    .line 77749
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 77750
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77751
    return-void
.end method

.method private A05()V
    .locals 3

    .line 77752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    .line 77753
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 77754
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 77755
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bP;-><init>(Lcom/facebook/ads/redexgen/X/bR;)V

    .line 77756
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 77757
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77758
    return-void
.end method

.method private A06()V
    .locals 4

    .line 77759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bR;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Ljava/lang/Runnable;

    .line 77762
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/bR;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bR;->A0A:[Ljava/lang/String;

    const-string v1, "cQXagcaAbk5GCnj2W1DiXrWYc93f"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Z

    .line 77763
    return-void
.end method

.method private A07()V
    .locals 5

    .line 77764
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ku;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Ku;-><init>(Lcom/facebook/ads/redexgen/X/bR;)V

    const/16 v2, 0x64

    const/16 v0, 0x1f4

    new-instance v1, Lcom/facebook/ads/redexgen/X/YJ;

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/YJ;-><init>(IILandroid/content/Context;Lcom/facebook/ads/redexgen/X/YI;)V

    .line 77765
    .local v0, "swipeDetector":Lcom/facebook/ads/redexgen/X/YJ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YJ;->A00(Landroid/view/View;)V

    .line 77766
    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/bR;)V
    .locals 0

    .line 77767
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A06()V

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/bR;)V
    .locals 0

    .line 77768
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A04()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/bR;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A05()V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/bR;)Z
    .locals 0

    .line 77769
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/bR;->A09:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/bR;Z)Z
    .locals 0

    .line 77770
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bR;->A02:Z

    return p1
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/bR;Z)Z
    .locals 0

    .line 77771
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Z

    return p1
.end method

.method private getAppIcon()Lcom/facebook/ads/redexgen/X/bk;
    .locals 4

    .line 77795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 77796
    .local v0, "iconView":Lcom/facebook/ads/redexgen/X/bk;
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 77797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    sget v1, Lcom/facebook/ads/redexgen/X/bR;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0F:I

    .line 77798
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 77799
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 77800
    sget v2, Lcom/facebook/ads/redexgen/X/bR;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0F:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77801
    .local v1, "iconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77802
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77803
    return-object v3
.end method

.method private getRatingCountAndStar()Landroid/widget/LinearLayout;
    .locals 7

    .line 77804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77805
    .local v0, "ratingCountAndStarLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77806
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77808
    .local v2, "ratingCountView":Landroid/widget/TextView;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 77810
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 77811
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77813
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77814
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77815
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    const/high16 v0, -0x1000000

    new-instance v5, Lcom/facebook/ads/redexgen/X/bn;

    invoke-direct {v5, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/bn;-><init>(Lcom/facebook/ads/redexgen/X/gi;II)V

    .line 77816
    .local v1, "starRatingView":Lcom/facebook/ads/redexgen/X/bn;
    sget v1, Lcom/facebook/ads/redexgen/X/bR;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/bR;->A0G:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77817
    .local v3, "starRatingViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77818
    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77819
    return-object v6
.end method

.method private getTitle()Landroid/widget/TextView;
    .locals 3

    .line 77820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77821
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 77822
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A07(Z)I

    move-result v0

    .line 77823
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77825
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77826
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77827
    return-object v2
.end method

.method private getTitleAndRatings()Landroid/widget/RelativeLayout;
    .locals 6

    .line 77828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77829
    .local v0, "titleAndRatingLayout":Landroid/widget/RelativeLayout;
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 77830
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    .line 77831
    .local v1, "titleView":Landroid/widget/TextView;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77832
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 77833
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->getRatingCountAndStar()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 77834
    .local v2, "ratingCountAndStarLayout":Landroid/widget/LinearLayout;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77835
    .local v3, "ratingCountAndStarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77836
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77837
    invoke-virtual {v5, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77838
    return-object v5
.end method


# virtual methods
.method public final A0E()V
    .locals 4

    .line 77772
    new-instance v0, Lcom/facebook/ads/redexgen/X/bO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bO;-><init>(Lcom/facebook/ads/redexgen/X/bR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Ljava/lang/Runnable;

    .line 77773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Z

    .line 77774
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bR;->A04:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77775
    return-void
.end method

.method public final A0F()V
    .locals 4

    .line 77776
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A06()V

    .line 77777
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bR;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 77779
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bR;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bR;->A0A:[Ljava/lang/String;

    const-string v1, "MnxsWfXrlV78UabQbsjfyCXWA2ulRwGh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 77780
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0G()V
    .locals 1

    .line 77781
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bR;->A06()V

    .line 77782
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A02:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 77783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 77784
    :cond_0
    return-void
.end method

.method public final A0H()V
    .locals 1

    .line 77785
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A02:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 77786
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bR;->A0E()V

    .line 77787
    :cond_0
    return-void
.end method

.method public final A0I(I)V
    .locals 5

    .line 77788
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 77789
    const/4 v2, -0x1

    sget v1, Lcom/facebook/ads/redexgen/X/bR;->A0B:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77790
    .local v0, "bannerOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77791
    .local v0, "bannerOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bR;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77792
    return-void

    .line 77793
    .end local v0    # "bannerOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77794
    .local v0, "screenWidth":I
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/bR;->A0B:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method
