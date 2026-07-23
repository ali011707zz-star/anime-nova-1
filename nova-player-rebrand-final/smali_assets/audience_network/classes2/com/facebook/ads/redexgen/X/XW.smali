.class public abstract Lcom/facebook/ads/redexgen/X/XW;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2373
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/XW;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()Landroid/util/DisplayMetrics;
    .locals 1

    .line 72693
    sget-object v0, Lcom/facebook/ads/redexgen/X/XW;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72694
    sget-object v0, Lcom/facebook/ads/redexgen/X/XW;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    return-object v0

    .line 72695
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    return-object v0
.end method
