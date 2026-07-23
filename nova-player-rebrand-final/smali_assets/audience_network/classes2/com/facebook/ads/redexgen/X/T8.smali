.class public Lcom/facebook/ads/redexgen/X/T8;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/TA;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)V
    .locals 1

    .line 64956
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64957
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64958
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    .line 64959
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Lx;
    .locals 1

    .line 64960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/TA;->A8C(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Lx;

    move-result-object v0

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/T1;
    .locals 1

    .line 64961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TA;->A7G()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/ge;
    .locals 1

    .line 64962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;->A8z(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/T9;
    .locals 1

    .line 64963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;->A74(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/T9;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/TB;
    .locals 1

    .line 64964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;->A7x(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/TD;
    .locals 1

    .line 64965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;->A8y(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/TE;
    .locals 1

    .line 64966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TA;->A9F()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/TP;
    .locals 1

    .line 64967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;->A7l(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Tc;
    .locals 1

    .line 64968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;->A7n(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/U7;
    .locals 1

    .line 64969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TA;->A96()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/VA;
    .locals 2

    .line 64970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/TA;->A6n(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/VM;
    .locals 2

    .line 64971
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T8;->A00:Lcom/facebook/ads/redexgen/X/TA;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/TA;->A90(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()Ljava/lang/String;
    .locals 1

    .line 64972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0D(Ljava/lang/String;)V
    .locals 1

    .line 64973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T8;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64974
    return-void
.end method
