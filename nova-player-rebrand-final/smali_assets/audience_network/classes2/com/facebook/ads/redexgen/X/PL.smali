.class public abstract Lcom/facebook/ads/redexgen/X/PL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PK;,
        Lcom/facebook/ads/redexgen/X/i4;
    }
.end annotation


# static fields
.field public static final A01:Landroid/view/View$AccessibilityDelegate;

.field public static final A02:Lcom/facebook/ads/redexgen/X/PK;


# instance fields
.field public final A00:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1534
    new-instance v0, Lcom/facebook/ads/redexgen/X/i4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/i4;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PL;->A02:Lcom/facebook/ads/redexgen/X/PK;

    .line 1535
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 1536
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57506
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A02:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/PK;->A00(Lcom/facebook/ads/redexgen/X/PL;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PL;->A00:Landroid/view/View$AccessibilityDelegate;

    .line 57507
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 57508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PL;->A00:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public final A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 2

    .line 57509
    sget-object v1, Lcom/facebook/ads/redexgen/X/PL;->A02:Lcom/facebook/ads/redexgen/X/PK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/PK;->A01(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Landroid/view/View;I)V
    .locals 1

    .line 57510
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 57511
    return-void
.end method

.method public final A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 57512
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57513
    return-void
.end method

.method public final A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 57514
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57515
    return-void
.end method

.method public final A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 57516
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 57517
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 57518
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57519
    return-void
.end method

.method public A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 2

    .line 57520
    sget-object v1, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 57521
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Q6;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 57522
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 57523
    return-void
.end method

.method public A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 57524
    sget-object v1, Lcom/facebook/ads/redexgen/X/PL;->A02:Lcom/facebook/ads/redexgen/X/PK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PK;->A02(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
