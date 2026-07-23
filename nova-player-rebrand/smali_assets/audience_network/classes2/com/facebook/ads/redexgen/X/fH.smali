.class public final Lcom/facebook/ads/redexgen/X/fH;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fI;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fI;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 82220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fH;->A00:Lcom/facebook/ads/redexgen/X/fI;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/fH;->A01:Z

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 82221
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fH;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82222
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fH;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82223
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fH;->setStrokeWidth(F)V

    .line 82224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fH;->setAntiAlias(Z)V

    .line 82225
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fH;->A01:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fH;->setColor(I)V

    .line 82226
    return-void

    .line 82227
    :cond_0
    const v0, -0x99999a

    goto :goto_0
.end method
