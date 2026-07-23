.class public final Lcom/facebook/ads/redexgen/X/DQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fK;


# instance fields
.field public A00:Landroid/view/ViewPropertyAnimator;

.field public A01:Lcom/facebook/ads/redexgen/X/fJ;

.field public final A02:I

.field public final A03:Landroid/view/View;

.field public final A04:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 33797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33798
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33799
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:I

    .line 33800
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    .line 33801
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:Z

    .line 33802
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/View;
    .locals 0

    .line 33803
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DQ;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 33804
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/DQ;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 33805
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DQ;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;
    .locals 0

    .line 33806
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    return-object p1
.end method

.method private A04(Z)V
    .locals 3

    .line 33807
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33808
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:Z

    if-eqz v0, :cond_0

    .line 33809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 33810
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 33811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    .line 33812
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 33813
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:I

    int-to-long v0, v0

    .line 33814
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fO;-><init>(Lcom/facebook/ads/redexgen/X/DQ;)V

    .line 33815
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:Landroid/view/ViewPropertyAnimator;

    .line 33816
    :goto_0
    return-void

    .line 33817
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33818
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 3

    .line 33819
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A05:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33820
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 33821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    .line 33822
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 33823
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:I

    int-to-long v0, v0

    .line 33824
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fP;-><init>(Lcom/facebook/ads/redexgen/X/DQ;)V

    .line 33825
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:Landroid/view/ViewPropertyAnimator;

    .line 33826
    :goto_0
    return-void

    .line 33827
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33828
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/DQ;)Z
    .locals 0

    .line 33829
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:Z

    return p0
.end method


# virtual methods
.method public final A4A(ZZ)V
    .locals 0

    .line 33830
    if-eqz p2, :cond_0

    .line 33831
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DQ;->A05(Z)V

    .line 33832
    :goto_0
    return-void

    .line 33833
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DQ;->A04(Z)V

    goto :goto_0
.end method

.method public final A9B()Lcom/facebook/ads/redexgen/X/fJ;
    .locals 1

    .line 33834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:Lcom/facebook/ads/redexgen/X/fJ;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 33835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 33836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 33837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 33838
    :cond_0
    return-void
.end method
