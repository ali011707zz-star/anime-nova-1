.class public final Lcom/facebook/ads/redexgen/X/6q;
.super Lcom/facebook/ads/redexgen/X/Oq;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/b5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 3

    .line 17883
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Oq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 17884
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/b5;

    .line 17885
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/b5;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/6q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17886
    return-void
.end method


# virtual methods
.method public final A0E()V
    .locals 0

    .line 17887
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0E()V

    .line 17888
    return-void
.end method

.method public final A0F()V
    .locals 2

    .line 17889
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0F()V

    .line 17890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    if-eqz v0, :cond_0

    .line 17891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A0A(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6q;->addView(Landroid/view/View;)V

    .line 17894
    :cond_0
    return-void
.end method

.method public final A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6q;
    .locals 3

    .line 17895
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/b5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Lcom/facebook/ads/redexgen/X/b5;Lcom/facebook/ads/redexgen/X/gi;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/b5;

    .line 17896
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Or;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Or;-><init>(Lcom/facebook/ads/redexgen/X/6q;)V

    .line 17897
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    .line 17898
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 17899
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6q;->A0F()V

    .line 17900
    return-object p0
.end method

.method public getMediaViewId()I
    .locals 1

    .line 17901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getId()I

    move-result v0

    return v0
.end method
