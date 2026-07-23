.class public abstract Lcom/facebook/ads/redexgen/X/bC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bB;
    }
.end annotation


# direct methods
.method public static A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
    .locals 2

    .line 77553
    if-nez p1, :cond_1

    .line 77554
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77555
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 77556
    :cond_1
    if-eqz p1, :cond_0

    .line 77557
    new-instance v1, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/bB;-><init>(Landroid/view/View$OnClickListener;)V

    .line 77558
    .local v0, "clickListener":Lcom/facebook/ads/redexgen/X/bB;
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77559
    new-instance v0, Lcom/facebook/ads/redexgen/X/bA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bA;-><init>(Lcom/facebook/ads/redexgen/X/bB;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
