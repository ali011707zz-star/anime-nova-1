.class public final Lcom/facebook/ads/redexgen/X/4S;
.super Lcom/facebook/ads/redexgen/X/Lp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/eI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11476
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lp;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACz()V
    .locals 0

    .line 11477
    return-void
.end method

.method public final ADu(ILjava/lang/String;)V
    .locals 2

    .line 11478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A08(Lcom/facebook/ads/redexgen/X/eI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A06(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/eG;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eG;->AEh()V

    .line 11480
    return-void
.end method

.method public final AEA()V
    .locals 3

    .line 11481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A08(Lcom/facebook/ads/redexgen/X/eI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A09(Lcom/facebook/ads/redexgen/X/eI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A06(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/eG;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eG;->AEA()V

    .line 11483
    :cond_0
    return-void
.end method

.method public final AF8()V
    .locals 1

    .line 11484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A03(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A06(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/eG;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eG;->AFQ()V

    .line 11486
    :cond_0
    return-void
.end method

.method public final AGg()V
    .locals 1

    .line 11487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Lcom/facebook/ads/redexgen/X/eI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eI;->A06(Lcom/facebook/ads/redexgen/X/eI;)Lcom/facebook/ads/redexgen/X/eG;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eG;->AGg()V

    .line 11488
    return-void
.end method
