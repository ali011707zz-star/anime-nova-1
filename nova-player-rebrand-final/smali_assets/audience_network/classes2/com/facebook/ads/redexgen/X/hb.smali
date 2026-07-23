.class public final Lcom/facebook/ads/redexgen/X/hb;
.super Lcom/facebook/ads/redexgen/X/PL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/he;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/PL;

.field public final A01:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 1

    .line 84998
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PL;-><init>()V

    .line 84999
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    .line 85000
    new-instance v0, Lcom/facebook/ads/redexgen/X/he;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/he;-><init>(Lcom/facebook/ads/redexgen/X/hb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A00:Lcom/facebook/ads/redexgen/X/PL;

    .line 85001
    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 85002
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 85003
    const-class v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 85004
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hb;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85005
    check-cast p1, Lcom/facebook/ads/redexgen/X/7M;

    .line 85006
    .local v0, "rv":Lcom/facebook/ads/redexgen/X/7M;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85007
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1v(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 85008
    .end local v0    # "rv":Lcom/facebook/ads/redexgen/X/7M;
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 1

    .line 85009
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 85010
    const-class v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0O(Ljava/lang/CharSequence;)V

    .line 85011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hb;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1H(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 85013
    :cond_0
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 85014
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PL;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85015
    const/4 v0, 0x1

    return v0

    .line 85016
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hb;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/R2;->A1X(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 85018
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/PL;
    .locals 1

    .line 85019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A00:Lcom/facebook/ads/redexgen/X/PL;

    return-object v0
.end method

.method public final A0B()Z
    .locals 1

    .line 85020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hb;->A01:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1r()Z

    move-result v0

    return v0
.end method
