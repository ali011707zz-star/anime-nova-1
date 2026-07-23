.class public abstract Lcom/facebook/ads/redexgen/X/OP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/OO;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1480
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OP;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/OO;
    .locals 1

    .line 55708
    sget-object v0, Lcom/facebook/ads/redexgen/X/OP;->A00:Lcom/facebook/ads/redexgen/X/OO;

    if-nez v0, :cond_0

    .line 55709
    new-instance v0, Lcom/facebook/ads/redexgen/X/OO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OO;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OP;->A00:Lcom/facebook/ads/redexgen/X/OO;

    .line 55710
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/OP;->A00:Lcom/facebook/ads/redexgen/X/OO;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 1

    .line 55711
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55712
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/OP;->A03(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 55713
    :cond_0
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 1

    .line 55714
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Us;->A0E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55715
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/OP;->A03(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 55716
    :cond_0
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 3

    .line 55717
    sget-object v2, Lcom/facebook/ads/redexgen/X/OP;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55718
    sget-object v1, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/Y4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/iN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/iN;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Y4;->execute(Ljava/lang/Runnable;)V

    .line 55719
    :cond_0
    return-void
.end method
