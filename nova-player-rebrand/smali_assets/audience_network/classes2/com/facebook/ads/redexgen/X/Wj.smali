.class public abstract Lcom/facebook/ads/redexgen/X/Wj;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Wi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2224
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Wi;
    .locals 1

    .line 71203
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wi;

    .line 71204
    .local v0, "errorLogger":Lcom/facebook/ads/redexgen/X/Wi;
    if-nez v0, :cond_0

    .line 71205
    new-instance v0, Lcom/facebook/ads/redexgen/X/R1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R1;-><init>()V

    return-object v0

    .line 71206
    :cond_0
    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wi;)V
    .locals 1

    .line 71207
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71208
    return-void
.end method
