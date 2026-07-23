.class public final Lcom/facebook/ads/redexgen/X/Yu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PJ;->A0h(Lcom/facebook/ads/redexgen/X/Re;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Re;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/PJ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/PJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PJ;Lcom/facebook/ads/redexgen/X/PJ;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yu;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yu;->A02:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Yu;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 74582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yu;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;Z)Z

    .line 74583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yu;->A02:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 74584
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 74585
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/PQ;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/PQ;-><init>(Lcom/facebook/ads/redexgen/X/Yu;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74586
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 74587
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 74588
    return-void
.end method
