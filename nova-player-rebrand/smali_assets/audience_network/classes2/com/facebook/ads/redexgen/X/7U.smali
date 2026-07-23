.class public abstract Lcom/facebook/ads/redexgen/X/7U;
.super Lcom/facebook/ads/redexgen/X/i3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21137
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/i3;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02(Landroid/view/View;)I
    .locals 1

    .line 21138
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final A04(Landroid/view/View;)I
    .locals 1

    .line 21139
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/view/View;)I
    .locals 1

    .line 21140
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final A09(Landroid/view/View;)V
    .locals 0

    .line 21141
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 21142
    return-void
.end method

.method public final A0C(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 21143
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21144
    return-void
.end method

.method public final A0F(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 21145
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 21146
    return-void
.end method

.method public final A0G(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .line 21147
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 21148
    return-void
.end method

.method public final A0I(Landroid/view/View;)Z
    .locals 1

    .line 21149
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method
