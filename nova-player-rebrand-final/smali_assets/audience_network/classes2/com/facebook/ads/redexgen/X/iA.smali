.class public final Lcom/facebook/ads/redexgen/X/iA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Os;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Os;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86344
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7E()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 86345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A00:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final A7F()Lcom/facebook/ads/redexgen/X/Os;
    .locals 1

    .line 86346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    return-object v0
.end method

.method public final A8q()Z
    .locals 1

    .line 86347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Os;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public final A9R()Z
    .locals 1

    .line 86348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Os;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public final AJK(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 86349
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iA;->A00:Landroid/graphics/drawable/Drawable;

    .line 86350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Os;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86351
    return-void
.end method

.method public final AJl(IIII)V
    .locals 5

    .line 86352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Os;->A05:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 86353
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:Lcom/facebook/ads/redexgen/X/Os;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Os;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Os;->A04(Lcom/facebook/ads/redexgen/X/Os;IIII)V

    .line 86354
    return-void
.end method
