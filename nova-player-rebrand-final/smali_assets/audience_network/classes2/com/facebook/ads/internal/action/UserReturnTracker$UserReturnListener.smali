.class public final Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/N0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserReturnListener"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/N0;

.field public final A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/N0;)V
    .locals 1

    .line 52689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52690
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;->A01:Ljava/lang/ref/WeakReference;

    .line 52691
    iput-object p2, p0, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;->A00:Lcom/facebook/ads/redexgen/X/N0;

    .line 52692
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 52693
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 52694
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 52695
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 52696
    iget-object v0, p0, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;->A00:Lcom/facebook/ads/redexgen/X/N0;

    if-nez v0, :cond_0

    .line 52697
    return-void

    .line 52698
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52699
    .local v0, "trackedActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    .line 52700
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52701
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;->A00:Lcom/facebook/ads/redexgen/X/N0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A05()V

    .line 52702
    :cond_2
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 52703
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 52704
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 52705
    return-void
.end method
