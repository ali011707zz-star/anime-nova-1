.class public final Lcom/facebook/ads/redexgen/X/Wq;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71539
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 71540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Z)Z

    .line 71541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A02(Lcom/facebook/ads/redexgen/X/Wm;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 71543
    :cond_0
    return-void
.end method
