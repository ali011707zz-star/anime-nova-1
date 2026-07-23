.class public abstract Lcom/facebook/ads/redexgen/X/Q0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pz;,
        Lcom/facebook/ads/redexgen/X/7S;,
        Lcom/facebook/ads/redexgen/X/hy;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Pz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1577
    new-instance v0, Lcom/facebook/ads/redexgen/X/7S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7S;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q0;->A00:Lcom/facebook/ads/redexgen/X/Pz;

    .line 1578
    return-void
.end method

.method public static A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 59598
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q0;->A00:Lcom/facebook/ads/redexgen/X/Pz;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pz;->A00(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .line 59599
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q0;->A00:Lcom/facebook/ads/redexgen/X/Pz;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pz;->A01(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 59600
    return-void
.end method
