.class public final Lcom/facebook/ads/redexgen/X/0w;
.super Lcom/facebook/ads/redexgen/X/1J;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6X;

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 6

    .line 3692
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1J;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 3693
    new-instance v0, Lcom/facebook/ads/redexgen/X/6X;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6X;-><init>(Lcom/facebook/ads/redexgen/X/1J;ILjava/util/List;Lcom/facebook/ads/redexgen/X/fp;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/6X;

    .line 3694
    return-void
.end method


# virtual methods
.method public final A20(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 1

    .line 3695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/6X;

    if-eqz v0, :cond_0

    .line 3696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/6X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6X;->A0c(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 3697
    :cond_0
    return-void
.end method

.method public getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/6X;
    .locals 1

    .line 3698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/6X;

    return-object v0
.end method

.method public setCardsInfo(Ljava/util/ArrayList;)V
    .locals 2

    .line 3699
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0w;->A01:Ljava/util/List;

    .line 3700
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/6X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A01:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6X;->A0d(Ljava/util/List;)V

    .line 3701
    return-void
.end method
