.class public abstract Lcom/facebook/ads/redexgen/X/Wa;
.super Landroid/widget/LinearLayout;
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

    .line 2214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wa;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wa;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00(ZLcom/facebook/ads/redexgen/X/WS;)V
    .locals 1

    .line 71134
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wa;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71135
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wa;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71136
    return-void
.end method
