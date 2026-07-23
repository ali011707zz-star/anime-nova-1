.class public abstract Lcom/facebook/ads/redexgen/X/r7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3587
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/r7;->A00:Landroid/graphics/Point;

    return-void
.end method

.method public static A00(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5

    .line 106035
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 106036
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 106037
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 106038
    return v1

    .line 106039
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/r7;->A00:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106040
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 106041
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 106042
    return v1

    .line 106043
    :cond_1
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106044
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 106045
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 106046
    return v1

    .line 106047
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/r7;->A00:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/r7;->A00:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/r7;->A00:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 106048
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/r7;->A00:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 106049
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 106050
    invoke-virtual {p2, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 106051
    const/4 v0, 0x1

    return v0
.end method
