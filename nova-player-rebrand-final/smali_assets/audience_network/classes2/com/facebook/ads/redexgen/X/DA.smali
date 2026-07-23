.class public final Lcom/facebook/ads/redexgen/X/DA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fK;


# instance fields
.field public A00:Landroid/animation/ValueAnimator;

.field public A01:Lcom/facebook/ads/redexgen/X/fJ;

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 33530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33531
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33532
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    .line 33533
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DA;->A02:I

    .line 33534
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DA;->A04:I

    .line 33535
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:I

    .line 33536
    return-void
.end method

.method private A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3

    .line 33537
    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 33538
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A02:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33539
    new-instance v0, Lcom/facebook/ads/redexgen/X/fT;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/fT;-><init>(Lcom/facebook/ads/redexgen/X/DA;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33540
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DA;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33541
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/DA;)Landroid/view/View;
    .locals 0

    .line 33542
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DA;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;
    .locals 0

    .line 33543
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    return-object p1
.end method

.method private A04()V
    .locals 1

    .line 33544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 33545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 33546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    .line 33547
    :cond_0
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/DA;)V
    .locals 0

    .line 33548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DA;->A04()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/DA;Z)V
    .locals 0

    .line 33549
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A08(Z)V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/DA;Z)V
    .locals 0

    .line 33550
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A09(Z)V

    return-void
.end method

.method private A08(Z)V
    .locals 3

    .line 33551
    if-eqz p1, :cond_0

    .line 33552
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A05:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33553
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A04:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    .line 33554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fS;-><init>(Lcom/facebook/ads/redexgen/X/DA;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 33556
    :goto_0
    return-void

    .line 33557
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A04:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 33558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 33559
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method

.method private A09(Z)V
    .locals 3

    .line 33560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 33561
    if-eqz p1, :cond_0

    .line 33562
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33563
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    .line 33564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fR;-><init>(Lcom/facebook/ads/redexgen/X/DA;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 33566
    :goto_0
    return-void

    .line 33567
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DA;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A03:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 33568
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method


# virtual methods
.method public final A4A(ZZ)V
    .locals 0

    .line 33569
    if-eqz p2, :cond_0

    .line 33570
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A08(Z)V

    .line 33571
    :goto_0
    return-void

    .line 33572
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DA;->A09(Z)V

    goto :goto_0
.end method

.method public final A9B()Lcom/facebook/ads/redexgen/X/fJ;
    .locals 1

    .line 33573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 33574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 33575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DA;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33576
    :cond_0
    return-void
.end method
