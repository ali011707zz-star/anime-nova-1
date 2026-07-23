.class public final Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81659
    iput-object p1, p0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 81660
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 81661
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 81662
    iget-object v0, p0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A03(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 81663
    iget-object v0, p0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A01(Lcom/facebook/ads/redexgen/X/FO;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A06(Lcom/facebook/ads/redexgen/X/FO;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81664
    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 81665
    iget-object v0, p0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A01(Lcom/facebook/ads/redexgen/X/FO;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A06(Lcom/facebook/ads/redexgen/X/FO;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81666
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 81667
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 81668
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 81669
    return-void
.end method
