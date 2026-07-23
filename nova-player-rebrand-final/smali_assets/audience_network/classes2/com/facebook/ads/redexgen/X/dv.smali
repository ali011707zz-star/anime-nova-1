.class public final Lcom/facebook/ads/redexgen/X/dv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4V;->A0c()Lcom/facebook/ads/redexgen/X/Yb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80493
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 80494
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A05(Lcom/facebook/ads/redexgen/X/4V;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 80495
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A05(Lcom/facebook/ads/redexgen/X/4V;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A05(Lcom/facebook/ads/redexgen/X/4V;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_1

    .line 80496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A05(Lcom/facebook/ads/redexgen/X/4V;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 80497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    .line 80498
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A05(Lcom/facebook/ads/redexgen/X/4V;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A05(Lcom/facebook/ads/redexgen/X/4V;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_1

    .line 80499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dv;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/c3;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80501
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 80502
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
