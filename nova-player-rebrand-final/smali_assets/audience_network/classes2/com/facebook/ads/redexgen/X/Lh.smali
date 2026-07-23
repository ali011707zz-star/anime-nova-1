.class public final Lcom/facebook/ads/redexgen/X/Lh;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityCheckerPostRunnable"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/fp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 1

    .line 50554
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    .line 50555
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:Ljava/lang/ref/WeakReference;

    .line 50556
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/fp;",
            ">;)V"
        }
    .end annotation

    .line 50557
    .local p1, "viewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    .line 50558
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:Ljava/lang/ref/WeakReference;

    .line 50559
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 50560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fp;

    .line 50561
    .local v0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/fp;
    if-eqz v0, :cond_0

    .line 50562
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 50563
    :cond_0
    return-void
.end method
