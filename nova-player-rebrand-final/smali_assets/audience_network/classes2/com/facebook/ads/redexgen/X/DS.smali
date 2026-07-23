.class public final Lcom/facebook/ads/redexgen/X/DS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fK;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/fJ;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 33886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33887
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A06:Landroid/os/Handler;

    .line 33888
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33889
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DS;->A03:I

    .line 33890
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    .line 33891
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/DS;->A05:Landroid/graphics/drawable/Drawable;

    .line 33892
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/DS;->A04:Landroid/graphics/drawable/Drawable;

    .line 33893
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A01:Landroid/graphics/drawable/TransitionDrawable;

    .line 33894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 33895
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A00:Landroid/graphics/drawable/TransitionDrawable;

    .line 33896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 33897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33898
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/DS;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33899
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DS;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DS;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33900
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DS;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/DS;)Landroid/view/View;
    .locals 0

    .line 33901
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DS;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;
    .locals 0

    .line 33902
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    return-object p1
.end method

.method private A04(Z)V
    .locals 4

    .line 33903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33904
    if-eqz p1, :cond_0

    .line 33905
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A05:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33906
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33907
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 33908
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DS;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/DV;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/DV;-><init>(Lcom/facebook/ads/redexgen/X/DS;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33909
    :goto_0
    return-void

    .line 33910
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33911
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 4

    .line 33912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33913
    if-eqz p1, :cond_0

    .line 33914
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 33917
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DS;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/DY;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/DY;-><init>(Lcom/facebook/ads/redexgen/X/DS;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33918
    :goto_0
    return-void

    .line 33919
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33920
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method


# virtual methods
.method public final A4A(ZZ)V
    .locals 0

    .line 33921
    if-eqz p2, :cond_0

    .line 33922
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DS;->A04(Z)V

    .line 33923
    :goto_0
    return-void

    .line 33924
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DS;->A05(Z)V

    goto :goto_0
.end method

.method public final A9B()Lcom/facebook/ads/redexgen/X/fJ;
    .locals 1

    .line 33925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 33926
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 33928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 33929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    if-ne v1, v0, :cond_0

    .line 33930
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33931
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DS;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 33932
    return-void

    .line 33933
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    goto :goto_0
.end method
