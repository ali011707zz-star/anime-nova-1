.class public final Lcom/facebook/ads/redexgen/X/CN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2U;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2U;

.field public final synthetic A01:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic A02:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic A03:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2U;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 32031
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CN;->A00:Lcom/facebook/ads/redexgen/X/2U;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CN;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/CN;->A01:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADR(Lcom/facebook/ads/redexgen/X/fu;)V
    .locals 3

    .line 32032
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/fu;->A73()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CN;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A07(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 32033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A01:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32034
    return-void
.end method

.method public final ADq(Ljava/lang/Exception;)V
    .locals 1

    .line 32035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A01:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32037
    return-void
.end method
