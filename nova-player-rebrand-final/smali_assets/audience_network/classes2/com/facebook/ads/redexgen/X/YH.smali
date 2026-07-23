.class public final Lcom/facebook/ads/redexgen/X/YH;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YJ;-><init>(IILandroid/content/Context;Lcom/facebook/ads/redexgen/X/YI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/YI;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/YJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YJ;Lcom/facebook/ads/redexgen/X/YI;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 73857
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YH;->A03:Lcom/facebook/ads/redexgen/X/YJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YH;->A02:Lcom/facebook/ads/redexgen/X/YI;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/YH;->A00:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/YH;->A01:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 73858
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 73859
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73860
    .end local v1
    .end local v2
    :cond_0
    return v4

    .line 73861
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v3, v0

    .line 73862
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v2, v0

    .line 73863
    .local v2, "diffX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 73864
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A00:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A01:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 73865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A02:Lcom/facebook/ads/redexgen/X/YI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YI;->AG8()V

    .line 73866
    const/4 v0, 0x1

    return v0

    .line 73867
    :cond_2
    return v4
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 73868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A02:Lcom/facebook/ads/redexgen/X/YI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YI;->AFx()V

    .line 73869
    const/4 v0, 0x1

    return v0
.end method
