.class public final Lcom/facebook/ads/redexgen/X/7q;
.super Lcom/facebook/ads/redexgen/X/je;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/gi;",
            ")V"
        }
    .end annotation

    .line 21590
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/je;-><init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 21591
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/gi;

    .line 21592
    return-void
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PX;
    .locals 2

    .line 21593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

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

    .line 21594
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7q;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PX;

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

    .line 21595
    check-cast p1, Lcom/facebook/ads/redexgen/X/PX;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7q;->A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V

    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V
    .locals 4

    .line 21596
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/je;->A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V

    .line 21597
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PX;->A0p()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Yt;

    .line 21598
    .local v0, "cardView":Lcom/facebook/ads/redexgen/X/Yt;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Yt;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ZI;

    .line 21599
    .local v1, "imageView":Lcom/facebook/ads/redexgen/X/ZI;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21600
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/je;->A0O(Landroid/widget/ImageView;I)V

    .line 21601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/UK;

    .line 21602
    .local v2, "childAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0L(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 21603
    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/UK;->A1U(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    .line 21604
    return-void
.end method
