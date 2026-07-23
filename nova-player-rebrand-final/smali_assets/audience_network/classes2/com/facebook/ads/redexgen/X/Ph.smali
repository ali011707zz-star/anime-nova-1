.class public abstract Lcom/facebook/ads/redexgen/X/Ph;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pg;,
        Lcom/facebook/ads/redexgen/X/0e;,
        Lcom/facebook/ads/redexgen/X/0h;,
        Lcom/facebook/ads/redexgen/X/0k;,
        Lcom/facebook/ads/redexgen/X/0n;,
        Lcom/facebook/ads/redexgen/X/0q;,
        Lcom/facebook/ads/redexgen/X/0z;,
        Lcom/facebook/ads/redexgen/X/1L;,
        Lcom/facebook/ads/redexgen/X/7U;,
        Lcom/facebook/ads/redexgen/X/i3;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$ScrollIndicators;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$NestedScrollType;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$ScrollAxis;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$ResolvedLayoutDirectionMode;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$LayoutDirectionMode;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$LayerType;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$AccessibilityLiveRegion;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$ImportantForAccessibility;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$OverScroll;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$FocusRelativeDirection;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$FocusRealDirection;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Pg;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1553
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_0

    .line 1554
    new-instance v0, Lcom/facebook/ads/redexgen/X/0e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0e;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    .line 1555
    :goto_0
    return-void

    .line 1556
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1

    .line 1557
    new-instance v0, Lcom/facebook/ads/redexgen/X/0h;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0h;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0

    .line 1558
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_2

    .line 1559
    new-instance v0, Lcom/facebook/ads/redexgen/X/0k;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0k;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0

    .line 1560
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/0n;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0n;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method

.method public static A00(Landroid/view/View;)I
    .locals 1

    .line 58142
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/View;)I
    .locals 1

    .line 58143
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static A02(Landroid/view/View;)I
    .locals 1

    .line 58144
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A04(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static A03(Landroid/view/View;)I
    .locals 1

    .line 58145
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A05(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static A04(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .line 58146
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A06(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;
    .locals 1

    .line 58147
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;
    .locals 1

    .line 58148
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    return-object v0
.end method

.method public static A07(Landroid/view/View;)V
    .locals 1

    .line 58149
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A09(Landroid/view/View;)V

    .line 58150
    return-void
.end method

.method public static A08(Landroid/view/View;)V
    .locals 1

    .line 58151
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A0A(Landroid/view/View;)V

    .line 58152
    return-void
.end method

.method public static A09(Landroid/view/View;I)V
    .locals 1

    .line 58153
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A0B(Landroid/view/View;I)V

    .line 58154
    return-void
.end method

.method public static A0A(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 58155
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A0C(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 58156
    return-void
.end method

.method public static A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PL;)V
    .locals 1

    .line 58157
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A0D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PL;)V

    .line 58158
    return-void
.end method

.method public static A0C(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PR;)V
    .locals 1

    .line 58159
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PR;)V

    .line 58160
    return-void
.end method

.method public static A0D(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 58161
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;->A0F(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 58162
    return-void
.end method

.method public static A0E(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .line 58163
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Pg;->A0G(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 58164
    return-void
.end method

.method public static A0F(Landroid/view/View;)Z
    .locals 1

    .line 58165
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A0H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static A0G(Landroid/view/View;)Z
    .locals 1

    .line 58166
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A0I(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static A0H(Landroid/view/View;)Z
    .locals 1

    .line 58167
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ph;->A00:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;->A0J(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
