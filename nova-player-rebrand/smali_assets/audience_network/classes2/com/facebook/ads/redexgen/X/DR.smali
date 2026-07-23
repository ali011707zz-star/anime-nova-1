.class public final Lcom/facebook/ads/redexgen/X/DR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fK;


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ValueAnimator;

.field public A02:Lcom/facebook/ads/redexgen/X/fJ;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 33839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33840
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33841
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    .line 33842
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DR;->A03:I

    .line 33843
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    .line 33844
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:I

    .line 33845
    return-void
.end method

.method private A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 33846
    filled-new-array {p1, p2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 33847
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A03:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33848
    new-instance v0, Lcom/facebook/ads/redexgen/X/fN;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/fN;-><init>(Lcom/facebook/ads/redexgen/X/DR;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33849
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DR;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33850
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/DR;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33851
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DR;)Landroid/view/View;
    .locals 0

    .line 33852
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/DR;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;
    .locals 0

    .line 33853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/DR;Z)V
    .locals 0

    .line 33854
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DR;->A07(Z)V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/DR;Z)V
    .locals 0

    .line 33855
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DR;->A08(Z)V

    return-void
.end method

.method private A07(Z)V
    .locals 3

    .line 33856
    if-eqz p1, :cond_0

    .line 33857
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A05:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33858
    iget v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    .line 33859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fM;-><init>(Lcom/facebook/ads/redexgen/X/DR;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 33861
    .end local v0
    :goto_0
    return-void

    .line 33862
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 33863
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 33866
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method

.method private A08(Z)V
    .locals 3

    .line 33867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 33868
    if-eqz p1, :cond_0

    .line 33869
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33870
    iget v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DR;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    .line 33871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fL;-><init>(Lcom/facebook/ads/redexgen/X/DR;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 33873
    .end local v0
    :goto_0
    return-void

    .line 33874
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 33875
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33877
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method


# virtual methods
.method public final A4A(ZZ)V
    .locals 0

    .line 33878
    if-eqz p2, :cond_0

    .line 33879
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DR;->A07(Z)V

    .line 33880
    :goto_0
    return-void

    .line 33881
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DR;->A08(Z)V

    goto :goto_0
.end method

.method public final A9B()Lcom/facebook/ads/redexgen/X/fJ;
    .locals 1

    .line 33882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 33883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 33884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33885
    :cond_0
    return-void
.end method
