.class public final Lcom/facebook/ads/redexgen/X/PI;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/i4;->A00(Lcom/facebook/ads/redexgen/X/PL;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/i4;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/PL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/i4;Lcom/facebook/ads/redexgen/X/PL;)V
    .locals 0
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

    .line 57307
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PI;->A00:Lcom/facebook/ads/redexgen/X/i4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 57308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 57309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    .line 57310
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PL;->A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    .line 57311
    .local v0, "provider":Lcom/facebook/ads/redexgen/X/Q8;
    if-eqz v0, :cond_0

    .line 57312
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A02()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 57313
    :goto_0
    return-object v0

    .line 57314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 57315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57316
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 57317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    .line 57318
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Q6;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v0

    .line 57319
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/PL;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 57320
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 57321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57322
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 57323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PL;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 57324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PL;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 57325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A02(Landroid/view/View;I)V

    .line 57326
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 57327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PI;->A01:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PL;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57328
    return-void
.end method
