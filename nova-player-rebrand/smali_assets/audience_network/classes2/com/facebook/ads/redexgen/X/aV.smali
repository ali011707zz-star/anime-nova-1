.class public final Lcom/facebook/ads/redexgen/X/aV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aW;->A02()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76521
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 76522
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 76523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aW;->A09()V

    .line 76524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aW;->A01(Lcom/facebook/ads/redexgen/X/aW;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76525
    return-void
.end method
