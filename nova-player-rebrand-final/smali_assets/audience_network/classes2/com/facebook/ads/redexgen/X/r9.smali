.class public final Lcom/facebook/ads/redexgen/X/r9;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/rD;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/rN;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/rN;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/rD;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/rD;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/rN;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/rN;",
            ">;)V"
        }
    .end annotation

    .line 106059
    .local p3, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p4, "onScreenItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/instagram/common/viewpoint/core/ViewpointData;>;"
    .local p5, "parentOnScreenItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/instagram/common/viewpoint/core/ViewpointData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106060
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/r9;->A01:Ljava/lang/String;

    .line 106061
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/r9;->A00:Lcom/facebook/ads/redexgen/X/rD;

    .line 106062
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/r9;->A04:Ljava/util/List;

    .line 106063
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/r9;->A02:Ljava/util/Collection;

    .line 106064
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/r9;->A03:Ljava/util/Collection;

    .line 106065
    return-void
.end method
