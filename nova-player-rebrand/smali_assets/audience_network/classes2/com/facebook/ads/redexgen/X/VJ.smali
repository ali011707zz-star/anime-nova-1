.class public final Lcom/facebook/ads/redexgen/X/VJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VK;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/VH;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VH;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/VH;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69256
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:Lcom/facebook/ads/redexgen/X/VI;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 69257
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 69258
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 69259
    return-void
.end method
