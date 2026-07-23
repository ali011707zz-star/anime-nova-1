.class public abstract Lcom/facebook/ads/redexgen/X/1K;
.super Lcom/facebook/ads/redexgen/X/7R;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Q6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoApi18Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5197
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7R;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1

    .line 5198
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
