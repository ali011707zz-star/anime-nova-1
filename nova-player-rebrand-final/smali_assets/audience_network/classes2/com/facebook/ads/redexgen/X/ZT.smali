.class public final Lcom/facebook/ads/redexgen/X/ZT;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ZS;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZS;)V
    .locals 2

    .line 75555
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75556
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Lcom/facebook/ads/redexgen/X/ZS;

    .line 75557
    const/4 v1, 0x0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZT;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75558
    return-void
.end method


# virtual methods
.method public final onWindowVisibilityChanged(I)V
    .locals 1

    .line 75559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Lcom/facebook/ads/redexgen/X/ZS;

    .line 75560
    return-void
.end method
