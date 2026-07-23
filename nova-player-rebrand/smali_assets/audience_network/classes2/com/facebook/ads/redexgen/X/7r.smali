.class public final Lcom/facebook/ads/redexgen/X/7r;
.super Lcom/facebook/ads/redexgen/X/je;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/gi;

.field public final A01:Lcom/facebook/ads/redexgen/X/Vd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Vd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Vd;",
            ")V"
        }
    .end annotation

    .line 21605
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/je;-><init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 21606
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/gi;

    .line 21607
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7r;->A01:Lcom/facebook/ads/redexgen/X/Vd;

    .line 21608
    return-void

    .line 21609
    :cond_0
    new-instance p4, Lcom/facebook/ads/redexgen/X/Vd;

    invoke-direct {p4}, Lcom/facebook/ads/redexgen/X/Vd;-><init>()V

    goto :goto_0
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PX;
    .locals 3

    .line 21610
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A01:Lcom/facebook/ads/redexgen/X/Vd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Yn;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Yn;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Vd;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/PX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/PX;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21611
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7r;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/RK;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21612
    check-cast p1, Lcom/facebook/ads/redexgen/X/PX;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7r;->A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V

    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V
    .locals 3

    .line 21613
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/je;->A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V

    .line 21614
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PX;->A0p()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Yn;

    .line 21615
    .local v0, "cardView":Lcom/facebook/ads/redexgen/X/Yn;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Yn;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    .line 21616
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/je;->A0O(Landroid/widget/ImageView;I)V

    .line 21617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    .line 21618
    .local v2, "mCarouselPosition":Lcom/facebook/ads/redexgen/X/UK;
    if-eqz v0, :cond_0

    .line 21619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setTitle(Ljava/lang/String;)V

    .line 21620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setSubtitle(Ljava/lang/String;)V

    .line 21621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yn;->setButtonText(Ljava/lang/String;)V

    .line 21622
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/UK;

    .line 21623
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/UK;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21624
    .local p1, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21625
    invoke-virtual {v1, v2, v2, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1V(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 21626
    return-void
.end method
