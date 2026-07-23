.class public final Lcom/facebook/ads/redexgen/X/eB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/U2;->A00()Lcom/facebook/ads/redexgen/X/eB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AIZ(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 80729
    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/T4;

    if-eqz v0, :cond_1

    .line 80730
    check-cast p2, Lcom/facebook/ads/redexgen/X/T4;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/T4;->A6m()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 80731
    .local v0, "adContext":Lcom/facebook/ads/redexgen/X/gi;
    if-eqz v0, :cond_0

    .line 80732
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gi;->A0Q(Ljava/lang/Throwable;)V

    .line 80733
    .end local v0    # "adContext":Lcom/facebook/ads/redexgen/X/gi;
    .end local v1
    :cond_0
    :goto_0
    return-void

    .line 80734
    :cond_1
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80735
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80736
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 80737
    check-cast v1, Lcom/facebook/ads/redexgen/X/gi;

    .line 80738
    .local v1, "adContext":Lcom/facebook/ads/redexgen/X/gi;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/gi;->A0Q(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
