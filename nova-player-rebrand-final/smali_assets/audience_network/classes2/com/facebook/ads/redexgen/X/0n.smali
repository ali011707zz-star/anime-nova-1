.class public Lcom/facebook/ads/redexgen/X/0n;
.super Lcom/facebook/ads/redexgen/X/0q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi21Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3621
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0q;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;
    .locals 2

    .line 3622
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Py;->A01(Lcom/facebook/ads/redexgen/X/Py;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 3623
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3624
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    .line 3625
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 3626
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Py;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;
    .locals 2

    .line 3627
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Py;->A01(Lcom/facebook/ads/redexgen/X/Py;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 3628
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3629
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    .line 3630
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 3631
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Py;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Landroid/view/View;)V
    .locals 0

    .line 3632
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 3633
    return-void
.end method

.method public final A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PR;)V
    .locals 1

    .line 3634
    if-nez p2, :cond_0

    .line 3635
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3636
    return-void

    .line 3637
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pf;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/Pf;-><init>(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/PR;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3638
    return-void
.end method
