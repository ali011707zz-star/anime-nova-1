.class public abstract Lcom/facebook/ads/redexgen/X/WZ;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/WS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WZ;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00(ZLcom/facebook/ads/redexgen/X/WS;)V
    .locals 1

    .line 71131
    sget-object v0, Lcom/facebook/ads/redexgen/X/WZ;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71132
    sget-object v0, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71133
    return-void
.end method
